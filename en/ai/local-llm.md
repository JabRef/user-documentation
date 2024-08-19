# BONUS: running a local LLM model

Notice:

1. This tutorial is intended for expert users
2. Local LLM requires a lot of computational power
3. Smaller models typically have lower performance than bigger ones like OpenAI models

## High-level explanation

You can use any program that creates a server with OpenAI-compatible API.

After you started your service, you can do this:

1. The "Chat Model" field in AI preferences is editable, so you can enter any model you have downloaded
2. There is a field called "API base URL" in "Expert Settings" where you need to provide the address of an OpenAI-compatible API server

Voilà! You can use a local LLM right away in JabRef.

## Step-by-step guide for `ollama`

The following steps guide you on how to use `ollama` to download and runn local LLMs.

1. Install `ollama` from [their website](https://ollama.com/download)
2. Select a model that you want to run. The `ollama` provides [a large list of models](https://ollama.com/library) to choose from (we recommend trying [`gemma2:2b`](https://ollama.com/library/gemma2:2b), or [`mistral:7b`](https://ollama.com/library/mistral), or [`tinyllama`](https://ollama.com/library/tinyllama))
3. When you have selected your model, type `ollama pull <MODEL>:<PARAMETERS>` in your terminal. `<MODEL>` refers to the model name like `gemma2` or `mistral`, and `<PARAMETERS>` refers to parameters count like `2b` or `9b`
4. `ollama` will download the model for you
5. After that, you can run ollama serve to start a local web server. This server will accept requests and respond with LLM output. Note: The ollama server may already be running, so do not be alarmed by a cannot bind error.
6. Go to JabRef Preferences -> AI
7. Set the "AI provider" to "OpenAI"
8. Set the "Chat Model" to the model you have downloaded in the format `<MODEL>:<PARAMETERS>`
9. Set the "API base URL" in "Expert Settings" to `http://localhost:11434/v1/`

Now, you are all set and can chat "locally".
