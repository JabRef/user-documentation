---
description: Version-control your library with Git directly from JabRef.
---

# Git Integration

JabRef can track your `.bib` library with [Git](https://git-scm.com/) directly from the application — no external Git client is required for the everyday commit/push/pull workflow. This is reached via **File → Git**, which offers:

* **Commit**
* **Pull**
* **Push**
* **Share this library to GitHub**

**Commit** and **Share this library to GitHub** require the library to be saved as a local `.bib` file first. **Pull** and **Push** are only enabled once the library's Git repository has a remote configured (e.g. after sharing it to GitHub, or by using a repository you cloned yourself).

## Committing changes

Choosing **File → Git → Commit** opens the "Git commit" dialog:

* Enter a commit message in the text field (it is focused automatically when the dialog opens). If you leave it empty, JabRef uses the default message "Update references".
* Click **Show diff** to open a "Diff view" dialog listing the changed entries, so you can review what changed before committing.
* Click **Commit** to commit only, or **Commit and push** to commit and immediately push to the configured remote in one step.

If your library has unsaved changes when you commit, JabRef saves it first automatically (when [autosave](../advanced/autosave.md) is enabled), or otherwise asks you to save it before the commit can proceed.

### Initializing a repository

If the library file is not yet inside a Git repository, committing prompts you to create one:

> This library is not under Git version control.\
> Initialize a Git repository in \<folder> and commit \<file>?\
> Other files in that folder stay untracked.

Choose **Initialize** to create the repository and commit, or **Do not initialize** to leave the folder untouched — for example if you intend to clone an existing repository into it yourself instead.

## Authenticating with a remote

### HTTPS (GitHub Personal Access Token)

For HTTPS-based remotes (such as GitHub), configure a Personal Access Token under **File → Preferences → Network**, in the "Git configuration" section:

* **Username**
* **PAT** (Personal Access Token)
* **Persist PAT between sessions** — stores the token in your operating system's credential store between JabRef sessions (only available if your OS provides one).

### SSH

SSH-based remotes work without any separate configuration inside JabRef: JabRef authenticates through your system's running SSH agent (`SSH_AUTH_SOCK` on Linux/macOS, or Pageant/the Windows OpenSSH agent on Windows) and your usual `~/.ssh/config` and known-hosts entries, the same way the `git` command line tool would.

## Sharing a library to GitHub

**File → Git → Share this library to GitHub** opens a dialog to publish a saved local library to a new or existing GitHub repository:

* **GitHub Repository URL**
* **GitHub Username**
* **Personal Access Token**
* **Check GitHub access** — verifies the token has push access to the repository.
* **Remember Git settings** — reuses the entered credentials for later commits/pushes.

This dialog can also be reopened for a library that is already shared and has an existing Git remote, for example to re-check your token's access or to pull remote changes.

{% hint style="info" %}
For a lighter-weight alternative that does not require Git, see [sharing a Bib(la)TeX library](sharedbibfile.md) over a network drive.
{% endhint %}
