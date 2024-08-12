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

