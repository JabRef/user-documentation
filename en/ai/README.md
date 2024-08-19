# AI functionality in JabRef

Since version 6, JabRef has AI functionality built in.

- AI can generate a summary of a research paper
- You can also chat with papers using a "smart" AI assistant

## AI summary tab

When you activate this tab, AI will generate a quick overview of the paper for you.

![AI summary tab screenshot](../.gitbook/assets/AiSummary.png)

The AI will mention the main objectives of the research, methods used, key findings, and conclusions.

## AI chat tab

Here, you can ask questions, which are answered by the LLM.

![AI chat tab screenshot](../.gitbook/assets/AiChat.png)

In this window, you can see the following elements:

- Chat history with your messages
- Prompt for sending messages
- A button for clearing the chat history (just in case)

## How does the AI functionality work?

In the background, JabRef analyses the linked PDF files of library entries. After indexing, this information is supplied to the AI, which, in our case, is a Large Language Model (LLM).
The LLM is currently not stored on your computer. Instead, we have many integrations with AI providers (OpenAI, Mistral AI, Hugging Face), so you can choose the one you like the most.
We send chunks of text to AI service and then receive processed responses. To use it, you need to configure JabRef with your API key.

## More information

{% page-ref page="ai-providers-and-api-keys.md" %}

{% page-ref page="troubleshooting.md" %}

{% page-ref page="preferences.md" %}

{% page-ref page="local-llm.md" %}
