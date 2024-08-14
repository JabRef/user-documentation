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

In the background, JabRef analyzes the linked PDF files of library entries. The information used after the indexing is then supplied to the AI,
which, to be precise, in our case is a Large Language Model (LLM). The LLM is currently not stored on your computer. Instead, we have many
integrations with AI providers (OpenAI, Mistral AI, Hugging Face), so you can choose the one you like the most. These AI providers are available
only remotely via the internet. In short: we send chunks of text to AI service and then receive processed responses. In order to use it you need
to configure JabRef to use your [API](https://en.wikipedia.org/wiki/API) key.

JabRef processes linked files this way: the file is split into parts of fixed-length (also called *chunks*), and then an *embedding* is generated. Embedding is a
representation of a part of text. It's a vector that represents the meaning of the text. This vector has a crucial property: texts with
similar meaning have vectors that are close to (this is called *vector similarity*)! So, whenever you ask AI a question, JabRef tries to find relevant pieces
of text from the indexed files using vector similarity.
