# AI providers and API keys

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

