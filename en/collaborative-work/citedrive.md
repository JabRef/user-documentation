---
description: Push your library to CiteDrive directly from JabRef.
---

# Push to CiteDrive

JabRef can push the current library to [CiteDrive](https://www.citedrive.com/), an online reference manager, without leaving JabRef.

## Enabling CiteDrive

CiteDrive is opt-in. Enable it under **File → Preferences → External storages**:

* **Enable CiteDrive**: shows the **CiteDrive** menu under **File**.
* **Remember the login between sessions**: keeps you logged in across JabRef restarts.
* **Server address** and **Web address**: the CiteDrive addresses JabRef connects to. Use **Reset to default** to restore JabRef's defaults.

## Logging in

Choose **File → CiteDrive → Log in to CiteDrive**. JabRef opens the CiteDrive login page in your browser. Logging in needs JabRef's HTTP server (**File → Preferences → General**, **Enable HTTP Server**) to receive the result from the browser; if it is disabled, JabRef asks whether to enable it.

## Pushing a library

Choose **File → CiteDrive → Push to CiteDrive** to upload the currently open library to CiteDrive as plain BibTeX (local JabRef-specific metadata, such as file paths, is not sent). After a successful push, JabRef opens CiteDrive's import page in your browser so you can review the imported entries.
