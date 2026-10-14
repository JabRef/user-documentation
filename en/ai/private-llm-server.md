# Running AI on your own computer or GPU server

This page shows how to let JabRef use a language model that runs on your own hardware, so that the content of your PDFs never reaches a commercial AI provider. This matters, for instance, when you work with unpublished manuscripts, reviews under confidentiality, or data covered by research ethics rules.

The model can run in two places:

* **On your own computer.** This works if your computer has a GPU with enough memory, or for small models.
* **On a GPU server.** Many research groups have a GPU server in the basement, while the researchers work on their laptops.

The steps are the same for both; if the model runs on your own computer, skip Step 2. We use this example setup throughout the page. Replace the names with your own.

| What | Example |
| --- | --- |
| GPU server | `gpu-server.example.org`, running Linux |
| Your account there | `alice` |
| Your computer | Windows laptop with JabRef |
| Language model | `qwen3.8:27b` (needs about 17 GB of GPU memory) |

## What stays where

When you chat with a PDF or let JabRef summarize it, three things happen:

1. JabRef reads the PDF on your laptop and cuts the text into small pieces.
2. JabRef computes the "embeddings" of these pieces, also on your laptop. JabRef downloads the embedding model once; JabRef uploads no text of your PDFs.
3. JabRef sends the relevant pieces together with your question to the language model. **This is the only step where PDF text leaves JabRef.** With the setup below, it goes to your own computer or server and nowhere else.

## Choosing hardware and a model

* The whole model should fit into the GPU memory (VRAM). Otherwise, the model runs partly in the main memory (slow) or even on the disk (unusable).
* The "b" in a model name stands for **b**illion parameters. With the usual 4-bit compression, a model needs roughly 0.6 GB per billion parameters, plus some memory for the context window.
* Smaller models are faster but answer worse. Start with a model that fits your hardware and switch to a larger one if the answers are not good enough.
* Some models are a "mixture of experts": `125b-a6b` means 125 billion parameters, of which only 6 billion work on each word. Such a model needs the memory of its full size but answers as fast as a small model.
* Speed depends above all on how fast the hardware can read its memory. A modern GPU with lots of memory is best. Apple computers with M-series chips also work well, because the GPU shares the main memory.

Which model makes sense depends on your hardware budget. A typical laptop runs models below 9b. A workstation or GPU server for a research group or a small company runs models between 27b and 120b. Larger models need two or more data center GPUs.

{% hint style="info" %}
This information dates from mid September 2026. New models appear every few months, so if you read this later, try more modern models of a similar size from [Ollama's model library](https://ollama.com/library).
{% endhint %}

| GPU memory | Model | Notes |
| --- | --- | --- |
| 128 GB or more | `qwen3.8-flash-next:125b-a6b-q4` | About 105 GB; mixture of experts, so it answers fast |
| 80 GB | `gpt-oss:120b` | About 65 GB; mixture of experts, so it answers fast |
| 24 GB | `qwen3.8:27b` | Good answers, also for non-English questions |
| 16 GB | `gpt-oss:20b` | Faster, answers slightly shorter |
| 8 to 12 GB | `granite4.2:8b` | Thinks longer before answering |
| no GPU | `granite4.2:3b` | Slow, weaker answers; enough to [add entries using reference text](../collect/newentryfromplaintext.md) |

{% hint style="warning" %}
Model names ending in `cloud` (for instance `deepseek-v4-pro:cloud`) do not run on your hardware. Ollama sends your requests to its own servers. Many of the largest models are only available this way in Ollama.
{% endhint %}

## Step 1: Install Ollama

{% tabs %}
{% tab title="On your own computer" %}
Download and install [Ollama](https://ollama.com/download). Ollama then runs in the background.
{% endtab %}

{% tab title="On a GPU server" %}
Log in to the server and install [Ollama](https://ollama.com/download):

```shell
curl -fsSL https://ollama.com/install.sh | sh
```

{% endtab %}
{% endtabs %}

Download a model (see [Choosing hardware and a model](#choosing-hardware-and-a-model)):

```shell
ollama pull qwen3.8:27b
```

Check that the model answers:

```shell
curl http://localhost:11434/v1/chat/completions -d '{"model": "qwen3.8:27b", "messages": [{"role": "user", "content": "Say OK"}]}'
```

The reply contains `"content":"OK"` (possibly with some more words).

Depending on its version and your GPU, Ollama may give the model a context window of only a few thousand tokens. For chatting with whole papers, raise it to `32768`:

{% tabs %}
{% tab title="On your own computer" %}
Open the Ollama app, go to "Settings", and move the "Context length" slider.
{% endtab %}

{% tab title="On a GPU server" %}
Run `sudo systemctl edit ollama` and add:

```ini
[Service]
Environment="OLLAMA_CONTEXT_LENGTH=32768"
```

Then restart Ollama with `sudo systemctl restart ollama`.
{% endtab %}
{% endtabs %}

A larger context needs more GPU memory, so increase it step by step.

{% hint style="info" %}
Ollama is one option. Any program that provides an OpenAI-compatible API works, for instance [LM Studio](https://lmstudio.ai/) or [llama.cpp](https://github.com/ggml-org/llama.cpp). Use its address as "API base URL" in Step 3.
{% endhint %}

## Step 2: Connect your laptop to the server

Skip this step if Ollama runs on your own computer.

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

The output lists the models you downloaded, for instance `qwen3.8:27b`.

{% hint style="info" %}
If you do not have SSH access to the server, ask your administrator to make Ollama reachable within your institute's network. Then you use `http://gpu-server.example.org:11434/v1` instead of `http://localhost:11434/v1` in the next step. Keep in mind that the text of your PDFs then travels unencrypted through that network.
{% endhint %}

## Step 3: Configure JabRef

Open **File → Preferences → AI** and set:

| Setting | Value |
| --- | --- |
| Enable AI functionality in JabRef | checked |
| AI provider | OpenAI (or API compatible) |
| Chat model | `qwen3.8:27b` (type the name, it does not need to be in the list) |
| API key | `ollama` (any text works; Ollama ignores it) |
| Expert settings → **Customize expert settings** | **checked** |
| Expert settings → API base URL (used only for LLM) | `http://localhost:11434/v1` |
| Expert settings → Context window size | `32768` (the context length you set in Ollama) |
| Expert settings → Embedding model | `BAAI/bge-small-en-v1.5` for English papers, `BAAI/bge-m3` for other languages (larger and slower) |

The embedding model always runs on your laptop, not on the server. If you change it after JabRef already processed your PDFs, run **Tools → Clear embeddings cache** so that JabRef computes the embeddings again.

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

1. If the model runs on a GPU server, start the SSH tunnel (Step 2).
2. Open a library in JabRef and select an entry with a linked PDF.
3. Open the "AI chat" tab in the entry editor and ask "What is the main contribution of this paper?".

While JabRef is waiting for the answer, you can watch the model work (on the server, if you use one):

```shell
ollama ps
```

The output shows `qwen3.8:27b` together with its memory usage.

## Other ways PDFs can leave your laptop

The AI features are not the only part of JabRef that talks to online services. If your PDFs must stay private, check these as well:

* **Grobid.** In **File → Preferences → Web search**, section "Remote services", keep "Allow sending PDF files and raw citation strings to a JabRef online service (Grobid) to determine Metadata" unchecked. When JabRef asks whether to use Grobid on import, answer "No". Grobid receives the complete PDF file.
* **Citation parsing.** In **File → Preferences → Web search**, the "Default plain citation parser" "LLM" uses the language model you configured above and thus stays on your hardware. "Grobid" uses the Grobid service.
* **Metadata lookup.** When you import a PDF, JabRef looks up its DOI, arXiv ID, or ISBN online. JabRef sends only these identifiers, not the content of the PDF.

## Troubleshooting

* **JabRef cannot connect to the model**: Ollama is not running, or the SSH tunnel is not running. Start Ollama, or start the tunnel again (Step 2).
* **The answer ignores most of the paper**: increase the context length in Ollama and "Context window size" in JabRef.
* **Answers take minutes**: the model does not fit into the GPU memory. Run `ollama ps`: if the "PROCESSOR" column shows a CPU share, choose a smaller model or a smaller context window.
