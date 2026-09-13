# Keeping your PDFs private: AI on your own GPU server

Many research groups have a GPU server in the basement, while the researchers work on their laptops. This page shows how to let JabRef use a language model on such a server, so that the content of your PDFs never reaches a commercial AI provider. This matters, for instance, when you work with unpublished manuscripts, reviews under confidentiality, or data covered by research ethics rules.

We use this example setup throughout the page. Replace the names with your own.

| What | Example |
| --- | --- |
| GPU server | `gpu-server.example.org`, running Linux |
| Your account there | `alice` |
| Your computer | Windows laptop with JabRef |
| Language model | `gpt-oss:20b` (needs about 14 GB of GPU memory) |

## What stays where

When you chat with a PDF or let JabRef summarize it, three things happen:

1. JabRef reads the PDF on your laptop and cuts the text into small pieces.
2. JabRef computes the "embeddings" of these pieces, also on your laptop. JabRef downloads the embedding model once; JabRef uploads no text of your PDFs.
3. JabRef sends the relevant pieces together with your question to the language model. **This is the only step where PDF text leaves your laptop.** With the setup below, it goes to your own server and nowhere else.

## Step 1: Install Ollama on the server

Log in to the server and install [Ollama](https://ollama.com/download):

```shell
curl -fsSL https://ollama.com/install.sh | sh
```

Download a model. For a GPU with 24 GB of memory, `gpt-oss:20b` or `qwen3:30b` are good starting points; smaller GPUs can use `granite4:3b` or `qwen3:8b`. The whole model should fit into the GPU memory, otherwise it becomes slow (see [Hardware recommendations](local-llm.md#hardware-recommendations)).

```shell
ollama pull gpt-oss:20b
```

Check that the model answers:

```shell
curl http://localhost:11434/v1/chat/completions -d '{"model": "gpt-oss:20b", "messages": [{"role": "user", "content": "Say OK"}]}'
```

The reply contains `"content":"OK"` (possibly with some more words).

Depending on its version and your GPU, Ollama may give the model a context window of only a few thousand tokens. For chatting with whole papers, raise it. Run `sudo systemctl edit ollama` and add:

```ini
[Service]
Environment="OLLAMA_CONTEXT_LENGTH=32768"
```

Then restart Ollama with `sudo systemctl restart ollama`. A larger context needs more GPU memory, so increase it step by step.

## Step 2: Connect your laptop to the server

Ollama has no password and does not encrypt its traffic, so do not open its port to the network. Instead, connect through SSH, which you most likely already use to log in to the server. The SSH tunnel makes the server's Ollama appear on your laptop as `localhost:11434`, and SSH encrypts everything on the way.

Open a terminal on your laptop (on Windows: "Terminal" or "PowerShell"; Windows 10 and 11 ship `ssh` and `curl`) and run:

```shell
ssh -N -L 11434:localhost:11434 alice@gpu-server.example.org
```

The command shows nothing and keeps running. Leave the window open as long as you use the AI features in JabRef.

Check the connection in a second terminal window:

```shell
curl http://localhost:11434/v1/models
```

The output lists the models you downloaded, for instance `gpt-oss:20b`.

{% hint style="info" %}
If you do not have SSH access to the server, ask your administrator to make Ollama reachable within your institute's network. Then you use `http://gpu-server.example.org:11434/v1` instead of `http://localhost:11434/v1` in the next step. Keep in mind that the text of your PDFs then travels unencrypted through that network.
{% endhint %}

## Step 3: Configure JabRef

Open **File → Preferences → AI** and set:

| Setting | Value |
| --- | --- |
| Enable AI functionality in JabRef | checked |
| AI provider | OpenAI (or API compatible) |
| Chat model | `gpt-oss:20b` (type the name, it does not need to be in the list) |
| API key | `ollama` (any text works; Ollama ignores it) |
| Expert settings → **Customize expert settings** | **checked** |
| Expert settings → API base URL (used only for LLM) | `http://localhost:11434/v1` |
| Expert settings → Context window size | `32768` (the value you set for `OLLAMA_CONTEXT_LENGTH`) |

Click "Save".

{% hint style="warning" %}
**Check "Customize expert settings".** Otherwise, JabRef ignores the API base URL you entered and sends the requests to OpenAI's servers. The placeholder API key does not protect you: OpenAI rejects the request, but only after it has received the text. The same happens after "Reset expert settings to default". Step 4 guards against this.
{% endhint %}

Never enter a real API key of a commercial provider here. If you used one before, clear the "API key" field for each provider you used.

## Step 4: Block commercial AI providers on your laptop

As a safety net, block the commercial providers on your laptop. Then a wrong setting leads to an error message in JabRef instead of text leaving your laptop.

{% tabs %}
{% tab title="Windows" %}
Open Notepad as administrator (right-click → "Run as administrator"), open `C:\Windows\System32\drivers\etc\hosts`, and add these lines at the end:
{% endtab %}

{% tab title="macOS and Linux" %}
Run `sudo nano /etc/hosts` and add these lines at the end:
{% endtab %}
{% endtabs %}

```text
0.0.0.0 api.openai.com
0.0.0.0 api.mistral.ai
0.0.0.0 generativelanguage.googleapis.com
0.0.0.0 router.huggingface.co
```

Note that this also blocks these providers for all other programs on your laptop.

## Step 5: Try it

1. Start the SSH tunnel (Step 2).
2. Open a library in JabRef and select an entry with a linked PDF.
3. Open the "AI chat" tab in the entry editor and ask "What is the main contribution of this paper?".

While JabRef is waiting for the answer, you can watch the model work on the server:

```shell
ollama ps
```

The output shows `gpt-oss:20b` together with its memory usage.

## Other ways PDFs can leave your laptop

The AI features are not the only part of JabRef that talks to online services. If your PDFs must stay private, check these as well:

* **Grobid.** In **File → Preferences → Web search**, section "Remote services", keep "Allow sending PDF files and raw citation strings to a JabRef online service (Grobid) to determine Metadata" unchecked. When JabRef asks whether to use Grobid on import, answer "No". Grobid receives the complete PDF file.
* **Citation parsing.** In **File → Preferences → Web search**, the "Default plain citation parser" "LLM" uses the language model you configured above and thus stays on your server. "Grobid" uses the Grobid service.
* **Metadata lookup.** When you import a PDF, JabRef looks up its DOI, arXiv ID, or ISBN online. JabRef sends only these identifiers, not the content of the PDF.

## Troubleshooting

* **JabRef cannot connect to the model**: the SSH tunnel is not running. Start it again (Step 2).
* **The answer ignores most of the paper**: increase `OLLAMA_CONTEXT_LENGTH` on the server and "Context window size" in JabRef.
* **Answers take minutes**: the model does not fit into the GPU memory. Run `ollama ps` on the server: if the "PROCESSOR" column shows a CPU share, choose a smaller model or a smaller context window.
