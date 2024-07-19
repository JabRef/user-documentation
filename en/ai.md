# AI functionality in JabRef

## AI chat tab

We have made a new entry editor tab: "AI chat", where all the chatting happens.

![AI chat tab screenshot](img/AiIntro.png)

In this window you can see the following elements:

- Chat history with your messages
- Prompt for sending messages
- A button for clearing the chat history (just in case)

## How does AI work?

In the background, JabRef analyses the linked PDF files of library entries. The information used after the indexing
is then supplied to the AI, which, to be precise, in our case is a Large Language Model (LLM). The LLM is currently
not stored on your computer. Instead, we used OpenAI's ChatGPT service, which is only available remotely via the
internet. In short: we send chunks of text to OpenAI's service and then receive processed responses. In order to
use it you need to configure JabRef to use your OpenAI [API](https://en.wikipedia.org/wiki/API) key.

## What is an API key?

An API key or API token is like a password that lets an app or program access information or services from another
app or website, such as a Language Model (LLM) service. It ensures only authorized users or applications can use
the service. For example, when an app uses an LLM service to generate text or answer questions, it includes its
unique API key in the request. The LLM service checks this key to make sure the request is legitimate before
providing the response. This process keeps the data secure and helps track how the service is being used.

## How to get an OpenAI API key?

Unfortunately, you need to pay OpenAI a minimum fee for using ChatGPT via API, which is at the date of writing 5$.
We will describe all the necessary steps to get an API key in this section.

To get an OpenAI API key you need to perform these steps:

1. Login or create account [there](https://platform.openai.com/login?launch)
2. Go to "API" section
3. Go to "Dashboard" (upper-right corner)
4. Go to "API keys" (left menu)
5. Click "Create new secret key"
6. Click "Create secret key"
7. OpenAI will show you the key. Do not share it with anyone.

Now you need to copy and paste it in JabRef preferences. To do this:

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

- "Enable chatting with PDFs": by default chatting is turned off, so you need to check this option, if you want to use the new AI features
- "OpenAI token": here you page your API token
- "Expert settings": here you can change the parameters that affect how AI will generate your answers. If you don't understand the meaning of those settings, don't worry! We have experimented a lot and found the best parameters for you!

## AI settings

### Chat model

**Requirements**: choose one available from combo box

The Chat model setting specifies what AI models you can use. This will differ from one provider to other. Models vary in their accuracy, knowledge of the world, context window (what amount of information can they process).

Currently only OpenAI models are supported.

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
