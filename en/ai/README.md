# AI functionality in JabRef

Since version 6, JabRef has AI-functionality build in.

- AI can generate a summary of a research paper
- One can also chat with papers using a "smart" AI assistant

## AI summary tab

We have made a new entry editor tab: "AI Summary", where AI will generate for you a quick overview of the paper.

![AI summary tab screenshot](../.gitbook/assets/AiSummary.png)

The AI will mention for you main objectives of the research, methods used, key findings, and conclusions.

## AI chat tab

The next new entry editor tab is "AI chat", where all the question and answering (Q&A) happens.

![AI chat tab screenshot](../.gitbook/assets/AiChat.png)

In this window you can see the following elements:

- Chat history with your messages
- Prompt for sending messages
- A button for clearing the chat history (just in case)

## How does the AI functionality work?

In the background, JabRef analyses the linked PDF files of library entries. The information used after the indexing is then supplied to the AI, which, to be precise, in our case is a Large Language Model (LLM). The LLM is currently not stored on your computer. Instead, we have many integrations with AI providers (OpenAI, Mistral AI, Hugging Face), so you can choose the one you like the most. These AI providers are available only remotely via the internet. In short: we send chunks of text to AI service and then receive processed responses. In order to use it you need to configure JabRef to use your [API](https://en.wikipedia.org/wiki/API) key.

## More information

{% page-ref page="ai-providers-and-api-keys.md" %}

{% page-ref page="troubleshooting.md" %}

{% page-ref page="preferences.md" %}

{% page-ref page="local-llm.md" %}
