---
description: Using Cite As You Write to insert citations "on the fly" directly in your editor.
---

# Cite As You Write (CAYW)

JabRef allows you to open up a search dialog to search for entries and their citation keys directly from your LaTeX
editor and automatically insert them at your current cursor position.
It works with different editors, such as TeXstudio, TeXworks, and Emacs.

Make sure you set the path to the application you want to use in JabRefs settings.

To use the Cite As You Write (CAYW) feature, you need to have JabRef running and the HTTP server enabled.

You can enable the HTTP server in **File → Preferences → General** and under the **HTTP Server** section check the box
for **Enable HTTP Server**.

## Application setup

For instructions on how to setup your editor to use the CAYW endpoint, please consult the documentation of [Better BibTeX for Zotero](https://retorque.re/zotero-better-bibtex/citing/cayw/index.html).

## Endpoint parameters

We are working on becoming fully compatible with the CAYW endpoint
of [Better BibTeX for Zotero](https://retorque.re/zotero-better-bibtex/citing/cayw/index.html).
The endpoint is available under `http://localhost:23119/better-bibtex/cayw`.

Currently, the following optional **GET** parameters are supported:

| Parameter     | Description                                                                                   | Default    |
|---------------|-----------------------------------------------------------------------------------------------|------------|
| `probe`       | If set to `true` or any non-empty value, the endpoint returns `ready`                         |            |
| `format`      | The format of the output, for a full list of the supported formats see below                  | `biblatex` |
| `clipboard`   | If set to `true`, the output is copied to the clipboard                                       |            |
| `application` | You can set it to any of the applications listed below to push directly to them               |            |
| `texstudio`   | If set to `true` or any non-empty value, it is the same as if you set `application=texstudio` |            |
| `selected`    | If set to `true` or any non-empty value, it will use the current selected entries in JabRef   |            |
| `select`      | If set to `true` or any non-empty value, it will select the selected entries in JabRef        |            |
| `librarypath` | The path to the library file, if not set, it will use the currently opened library in JabRef  |            |

Following formats are supported:

| Format        | Description                                                                                            |
|---------------|--------------------------------------------------------------------------------------------------------|
| `biblatex`    | Additional `command` parameter, which allows to use another command for citing, defaults to `autocite` |
| `simple-json` | A simple json containing the entry ID and the citation key                                             |

Following applications are supported:

- emacs
- LyX
- Sublime
- Texmaker
- TeXShop
- TeXstudio
- TeXworks
- vim
- VSCode
- WinEdt
