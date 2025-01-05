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

JabRef uses external AI providers to do the actual work.
You can choose between OpenAI, Mistral AI, and Hugging Face.
They all run "Large Language Models" (LLMs) to process the requests.
The AI providers need chunks of text to work.
For this, JabRef parses and indexes linked PDF files of entries:
The file is split into parts of fixed-length (so-called *chunks*) and for each of them, an *embedding* is generated.
An embedding itself is a representation of a part of text and in turn a vector that represents the meaning of the text.
Each vector has a crucial property: texts with similar meaning have vectors that are close to (so-called *vector similarity*).
As a result, whenever you ask AI a question, JabRef tries to find relevant pieces of text from the indexed files using vector similarity.

## More information

{% page-ref page="how-to-enable-ai-features.md" %}

{% page-ref page="ai-providers-and-api-keys.md" %}

{% page-ref page="troubleshooting.md" %}

{% page-ref page="preferences.md" %}

{% page-ref page="local-llm.md" %}
