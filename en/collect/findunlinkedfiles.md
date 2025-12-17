---
description: JabRef can create entries from PDF files.
---

# Add entry using PDFs

## Adding using drag and drop

{% hint style="info" %}
The simplest way to create a new entry based on a single PDF file is to drag & drop the file onto the table of entries (between two existing entries). JabRef will then analyze the PDF and create a new entry.
{% endhint %}

If you drop a PDF onto an entry in the main table or the entry preview in the entry editor, the PDF is simply attached to the entry. To add a new entry based on the PDF meta data, drop it **between** two entries in the main table or onto the empty area in the maintable (available for small libraries). The meta data of the PDF is then parsed and a new entry is added to the library. The PDF file is moved and renamed to the library as default. If you want to copy or just link it, hold the respective modifier keys. On Windows, Ctrl is for copying and Alt is for linking.

### Better filenames

JabRef changes the filenames automatically. You can adapt the pattern at Preferences -> Import ![Preferences - Import](<../.gitbook/assets/preferences-import (1).png>)

Select "Choose pattern" and choose "bibtexkey - title" ![Preferences - Import - Choose pattern](<../.gitbook/assets/preferences-import-choose-pattern (1).png>). This results in the setting `\bibtexkey\begin{title} - \format[RemoveBrackets]{\title}\end{title}`.

This makes the filenames start with the citation key followed by the full title. In the concrete case, `\bibtexkey` only may be the better option as the described bibtey key already contains the title.

More details are given at [Managing Linked Files](../finding-sorting-and-cleaning-entries/filelinks.md).

## Adding files currently not linked in the library

In case you have numerous PDF files and want to convert them into new entries, JabRef can search automatically for the PDF files, let you select the relevant ones, and convert them into new entries.

This feature is available through **Lookup -> Search for unlinked local files**.

### Preparation: Adjust the JabRef key generation pattern to fit your needs

JabRef offers a BibTeX key generation and offers different patterns described at [BibtexKeyPatterns](../setup/citationkeypatterns.md).

### Using the Wizard "Search for unlinked local files"

{% hint style="warning" %}
This information is partially outdated. Please help to improve it ([how to edit a help page](../contributing/how-to-improve-the-help-page.md#editing-help-pages-directly-in-the-browser)).
{% endhint %}

1. Create or open a library (AKA a `.bib` file).
2.  Go to **Lookup -> Search for unlinked local files**. (or press `SHIFT + F7`)

    ![FindUnlinkedFiles - Menu](<../.gitbook/assets/bildschirmfoto-2021-07-05-um-19.19.09 (1).png>) ![FindUnlinkedFiles - Menu](<../.gitbook/assets/findunlinkedfiles-menu-5.2 (1).png>)
3.  The "Search for unlinked local files" dialog opens.

    <img src="../.gitbook/assets/findunlinkedfiles-window-5.2 (1).png" alt="FindUnlinkedFiles - Initial dialog" data-size="original">
4. Choose a start directory using the "Browse" button.
5. Click on "Search" / "Scan directory".
6.  In "Select files", the files not yet contained in the library are shown.

    <img src="../.gitbook/assets/findunlinkedfiles-foundfiles-5.2 (1).png" alt="FindUnlinkedFiles - Found files" data-size="original">
7. Select the entries you are interested in. Note: the button `Export selected files` allows you to export the list of the selected files (a text file containing on each line one filename with its path)
8.  Click on `Import`.

    The windows close and the entry table now contains the newly-imported entries.
9. The entry editor with the last imported entry is shown ![FindUnlinkedFiles - 08 - entry editor](<../.gitbook/assets/findunlinkedfiles-08-entry-editor (1).png>)
10. You can now save the file and are finished.
11. Optional: Click on "General" to see the linked file ![FindUnlinkedFiles - 09 - entry editor - General](<../.gitbook/assets/findunlinkedfiles-09-entry-editor-general (1).png>)
12. Optional: Click on "BibTeX source" to see the BibTeX source ![FindUnlinkedFiles - 10 - entry editor - BibTeX source](<../.gitbook/assets/findunlinkedfiles-10-entry-editor-bibtex-source (1).png>)
13. Optional: You have to shrink it to see the entry in the entry table, enlarge the JabRef window and use the mouse at the upper border of the entry editor ![FindUnlinkedFiles - 11 - entry editor - shrunk](<../.gitbook/assets/findunlinkedfiles-11-entry-editor-shrunk (1).png>)
14. Optional: Press Esc to show the entry preview ![FindUnlinkedFiles - 12 - entry preview](<../.gitbook/assets/findunlinkedfiles-12-entry-preview (1).png>)

{% hint style="danger" %}
The imported entries may need some editing because all the information gathered from the PDF files may not be accurate (see below "PDFs for which it works").
{% endhint %}

## How .gitignore affects “Find unlinked local files”

JabRef’s “Find unlinked local files” feature respects `.gitignore` files. A `.gitignore` file is a small text file where you list file names or patterns you don’t want to see; tools that support it (like Git and JabRef) skip those files during searches.

## What JabRef does

* Looks for an applicable `.gitignore` in the directory being scanned and applies its patterns.
* Interprets patterns relative to the directory that contains the `.gitignore`.
* Applies all patterns (not “first match wins”).
* Also ignores the `.git` directory and common OS metadata by default, and ignores the `.gitignore` file itself.

## Notes about pattern behavior

* Patterns are matched against the path relative to the `.gitignore`’s directory.
* Patterns like `ignore/*` and `ignore/**` work as in Git to ignore a named subdirectory and its contents.
* Patterns starting with `**/` (for example, `**/*.png`) also match files in the top directory for convenience, so PNGs are ignored both in subdirectories and at the base level.

## Examples

Ignore all PNG images everywhere:

```gitignore
*.png
```

Ignore a specific subdirectory named ignore (and everything inside, including nested folders):

```gitignore
ignore/*
ignore/**
```

Ignore PDFs in any subfolder (and also at the base directory):

```gitignore
**/*.pdf
```

## Tips

* Place a `.gitignore` file in the folder you start the search in (or deeper) to control what is scanned.
* If you use multiple `.gitignore` files in different subfolders, each one applies to the files under its directory.

This behavior mirrors Git’s expectations in practice, while making it straightforward to exclude unneeded files from the unlinked-files search.

## Further information

### PDFs for which it works

The importer works well if there is BibTeX on the first page of the PDF, based on the content has been written for IEEE and [LNCS](https://github.com/latextemplates/LNCS) formatted papers. Other formats are not (yet) supported. In case a DOI is found on the first page, the DOI is used to generate the BibTeX information.

Background:

* Embedding BibTeX inside PDFs is done by the [LaTeX authorarchive package](https://ctan.org/pkg/authorarchive)
* Having BibTeX on the first page is done by the [LaTeX CoverPage package](https://ctan.org/pkg/coverpage)
* Embedding BibTeX data [using XMP is available in JabRef](../advanced/xmp.md)
* Online parsing is enabled using the online service Grobid.

### Related questions on stack overflow

* [Extract titles from each page of a PDF?](http://stackoverflow.com/q/18071127/873282)
* [Zotero: Extract references from PDF and create new library items from them](https://forums.zotero.org/discussion/16277/extract-references-from-pdf-and-create-new-library-items-from-them)
* [Is there an open source tool for producing bibtex entries from paper PDFs?](http://academia.stackexchange.com/questions/15504/is-there-an-open-source-tool-for-producing-bibtex-entries-from-paper-pdfs)
* [Extracting information from PDFs of research papers](http://stackoverflow.com/questions/1813427/extracting-information-from-pdfs-of-research-papers/3523416)
