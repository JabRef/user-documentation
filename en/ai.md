# AI functionality in JabRef

## AI summary tab

We have made a new entry editor tab: "AI Summary", where AI will generate for you a quick overview of the paper.

![AI summary tab screenshot](/img/AiSummary.png)

The AI will mention for you main objectives of the research, methods used, key findings, and conclusions.

## AI chat tab

The next new entry editor tab is "AI chat", where all the question and answering (Q&A) happens.

![AI chat tab screenshot](/img/AiChat.png)

In this window you can see the following elements:

- Chat history with your messages
- Prompt for sending messages
- A button for clearing the chat history (just in case)

## How does the AI functionality work?

In the background, JabRef analyses the linked PDF files of library entries. The information used after the indexing is then supplied to the AI, which, to be precise, in our case is a Large Language Model (LLM). The LLM is currently not stored on your computer. Instead, we have many integrations with AI providers (OpenAI, Mistral AI, Hugging Face), so you can choose the one you like the most. These AI providers are available only remotely via the internet. In short: we send chunks of text to AI service and then receive processed responses. In order to use it you need to configure JabRef to use your [API](https://en.wikipedia.org/wiki/API) key.

## What is an AI provider?

AI provider is a company or a service that gives you the ability to send requests to and receive responses from LLM. In order to get the response, you also need to send an API key to authenticate and manage billing.

Here is the list of AI providers we currently support: OpenAI, Mistral AI, Hugging Face. Others include Google Vertex AI, Microsoft Azure OpenAI, Anthropic, etc.

## What is an API key?

An API key or API token is like a password that lets an app or program access information or services from another
app or website, such as an LLM service. It ensures only authorized users or applications can use
the service. For example, when an app uses an LLM service to generate text or answer questions, it includes its
unique API key in the request. The LLM service checks this key to make sure the request is legitimate before
providing the response. This process keeps the data secure and helps track how the service is being used.

## Which AI provider should I use?

We recomend you chosing the OpenAI.

For Mistral AI you need to make a subscription, while for OpenAI you can send money one time.

Hugging Face gives you access to numerous count of models for free. But it will take a very long time for Hugging Face to find a free computer resources for you, and the response time will be also long.

## How to get an API key?

### How to get an OpenAI API key?

To get an OpenAI API key you need to perform these steps:

1. Login or create an account on [OpenAI website](https://platform.openai.com/login?launch)
2. Go to "API" section
3. Go to "Dashboard" (upper-right corner)
4. Go to "API keys" (left menu)
5. Click "Create new secret key"
6. Click "Create secret key"
7. OpenAI will show you the key

### How to get a Mistral AI API key?

1. Login or create an account on [Mistral AI website](https://auth.mistral.ai/ui/login)
2. Go to the [dashboard -> API keys](https://console.mistral.ai/api-keys/)
3. There you will find a button "Create new key". Click on it
4. You can optionally setup a name to API key and its expiration date
5. After the creation, you will see "Your key is:" with a string of random characters after that

### How to get a Hugging Face API key?

Hugging Face call an "API key" as "Access Token". It does not make much difference, you can interchangably use either "API key", or "API token", or "access token".

1. [Login](https://huggingface.co/login) or [create account](https://huggingface.co/join) on Hugging Face
2. Go to [create access token](https://huggingface.co/settings/tokens/new?)
3. Set "Token Type" to "Read"
4. Name a token
5. After you click "Create token", a popup will be shown with the API key

## What should I do with the API key and how can I enter it in JabRef?

Don't share the key to anyone, it's a secret that was created only for your account. Don't enter this key to unknown and unverfied services.

Now you need to copy and paste it in JabRef preferences. To do this:

1. Launch JabRef
2. Go "File" -> "Preferences" -> "AI" (a new tab!)
3. Check "Enable chatting with PDFs"
3. Paste the key into "OpenAI token"
9. Click "Save"

If you have some money on your credit balance, you can chat with your library!

## How to increase money balance for API key?

### OpenAI

In order to increase your credit balance on OpenAI, do this:

1. Add payment method [there](https://platform.openai.com/settings/organization/billing/payment-methods).
2. Add credit balance on [this](https://platform.openai.com/settings/organization/billing/overview) page.

### Mistral AI

Make the subscription on [their website](https://console.mistral.ai/billing/subscribe/).

### Hugging Face

You don't have to pay any cent for Hugging Face in order to send requests to LLMs. Though, the speed is very slow.

## What should I do with the API key?

1. Launch JabRef
2. Go "File" -> "Preferences" -> "AI" (a new tab!)
3. Check "Enable chatting with PDFs"
3. Paste the key into "OpenAI token"
9. Click "Save"

If you have some money on your credit balance, you can chat with your library!

In order to increase your credit balance on OpenAI, do this:

1. Add payment method [there](https://platform.openai.com/settings/organization/billing/payment-methods).
2. Add credit balance on [this](https://platform.openai.com/settings/organization/billing/overview) page.

## AI preferences

Here are some new options in the JabRef preferences.

![AI preferences](../img/AiPreferences.png)

- "Enable AI functionality in JabRef": by default it's turned off, so you need to check this option, if you want to use the new AI features
- "AI provider": you can choose either OpenAI, Mistral AI, or Hugging Face
- "Chat model": choose the model you like (for OpenAI we recommend `gpt-4o-mini`, as it the cheapest and fastest)
- "API token": here you write your API token
- "Expert settings": here you can change the parameters that affect how AI will generate your answers. If you don't understand the meaning of those settings, don't worry! We have experimented a lot and found the best parameters for you! But if you are curious, then you can refer to [user documentation]()

## AI expert settings

### API base URL

**Type**: string

**Requirements**: valid URL address

The "API Base URL" is a setting that tells your application where to find the language model's online service. Think of it as the main address or starting point for all communications with the language model. By specifying this URL, your application knows exactly where to send its requests to get responses from the language model.

You don't have to set this parameter manually and remember all the addresses. JabRef will automatically substitute the address for you, when you select the AI provider.

### Embedding model

**Requirements**: choose one available from combo box

The Embedding model transforms a document (or a piece of text) into a vector (an ordered collection of numbers). This is used to supply the AI with relevant information regarding your questions.

Different embedding models have different performance: this includes accuracy and how fast embeddings can be computed. `Q` at the end of the model name usually means *quantized* (meaning *reduced*, *simplified*). These models are faster and smaller than their original counterpart, but provide slightly less accuracy.

Currently, only local embedding models are supported. That means, you don't have to provide a new API key and all the logic will be run on your machine.

### Instruction

**Type**: string

**Requirements**: not empty

An instruction (also known as "system message") in a Large Language Models (LLMs) sets the tone and rules for the conversation. Think of it as instructions given to the AI before it starts interacting with a user. It guides the AI on how to respond, ensuring it stays on topic and behaves appropriately. For example, a system message might tell the AI to be formal, concise, or provide detailed explanations. This helps the AI provide more relevant and useful answers tailored to the specific needs of the user.

### Context window size

**Type**: integer

**Requirements**: > 0

The "context window size" in our application helps the AI remember and respond to conversations more effectively by keeping the most recent messages within a sliding window. As new messages are added, older messages are removed to make room, ensuring the AI always has the latest context. This feature enhances the AI's ability to provide accurate and relevant responses by focusing on the most current parts of the conversation, similar to how we remember the latest parts of a discussion. This process is managed automatically, so you can enjoy a smoother and more natural conversation experience without any additional effort.

### Document splitter chunk size

**Type**: integer

**Requirements**: > 0

The "chunk size" parameter in document splitting refers to the size of segments into which linked files are divided for processing by AI models. When dealing with linked files, such as PDF files, they are segmented into smaller chunks based on this parameter. Each segment typically contains a specified number of words or characters, ensuring manageable units for analysis and generating answers.

These segments are then passed to the AI model for processing. This approach helps optimize performance by breaking down large documents into smaller, more digestible parts, enabling more efficient handling and analysis by the AI.

### Document splitter chunk overlap

**Type**: integer

**Requirements**: > 0 && < chunk size

The "chunk overlap" parameter determines how much text from adjacent chunks is shared when dividing linked files into segments. This overlap is measured in characters and ensures continuity and context across segmented chunks. By sharing a specified amount of text between adjacent segments, typically at the beginning and/or end of each chunk, the AI model can maintain coherence and understanding of the content across segmented parts. This approach helps enhance the accuracy and relevance of responses generated by the AI from the segmented content.

### Retrieval augmented generation maximum results count

**Type**: integer

**Requirements**: > 0

The parameter "Retrieval augmented generation: maximum results count" specifies the maximum number of chunks or segments of text that will be retrieved for processing and generating responses. When using retrieval-augmented generation (RAG), which combines traditional language model generation with retrieval of relevant text segments, this parameter determines how many segments are considered for each query or input.

Setting this parameter controls the scope of information the AI model uses to generate responses, balancing between depth of context and computational efficiency. It ensures that the AI focuses on the most relevant segments to provide accurate and contextually rich answers based on the user's input or query.

### Retrieval augmented generation minimum score

**Type**: float

**Requirements**: > 0 && < 1

The "Retrieval augmented generation: minimum score" parameter sets the threshold for relevance when retrieving chunks of text for generation. It specifies the minimum score that segments must achieve to be included in the results. Any text segments scoring below this threshold are excluded from consideration in the AI's response generation process.

This parameter is crucial in ensuring that the AI model focuses on retrieving and utilizing only the most relevant information from the retrieved chunks. By filtering out segments that do not meet the specified relevance score, the AI enhances the quality and accuracy of its responses, aligning more closely with the user's needs and query context.

## Troubleshooting

### "Failed to load PyTorch native library" while trying the AI chat

If you encounter this error, download the latest [Visual C++ redistributable from Miscrosoft](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#latest-microsoft-visual-c-redistributable-version).

This installation is only required for AI features in JabRef, all other features can work without it.

## BONUS: running a local LLM model

Notice:
1. This tutorial is intended for expert users
2. Local LLM model requires a lot of computational power
3. Smaller models typically have less performance then bigger ones like OpenAI models

### General explanation

You can use any program that will create a server with OpenAI compatible API.

After you started your service, you can do this:
1. The "Chat Model" field in AI preference is editable, so you can write any model you have downloaded
2. There is a field "API base URL" in "Expert Settings" where you need to supply the address of an OpenAI API compatible server

Voi la! You can use a local LLM right away in JabRef.

### More detailed tutorial

In this section we will explain how to use `ollama` for downloading and running local LLMs.

1. Install `ollama` from [their website](https://ollama.com/download)
2. Select a model that you want to run. The `ollama` provides [a big list of models](https://ollama.com/library) to choose from (we recommend you to try [`gemma2:2b`](https://ollama.com/library/gemma2:2b), or [`mistral:7b`](https://ollama.com/library/mistral), or [`tinyllama`](https://ollama.com/library/tinyllama))
3. When you selected your model, type `ollama pull <MODEL>:<PARAMETERS>` in your terminal. `<MODEL>` refers to the model name like `gemma2` or `mistral`, and `<PARAMETERS>` referes to parameters count like `2b` or `9b`
4. `ollama` will download the model for you
5. After that you can run `ollama serve` to start a local web-server. It's a server to which you can send requests and it will respond with LLM output. Notice: `ollama` server may be already running, so don't be scared of `cannot bind` error
6. Got to JabRef Preferences -> AI
7. Set the "AI provider" to "OpenAI"
8. Set the "Chat Model" to whichever model you've downloaded in form `<MODEL>:<PARAMETERS>`
9. Set the "API base URL" in "Expert Settings" to: `http://localhost:11434/v1/`

And now you are all set!

