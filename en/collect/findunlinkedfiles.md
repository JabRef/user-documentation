---
description: JabRef can create entries from PDF files.
---

# Add entry using PDFs

{% hint style="info" %}
The simplest way to create a new entry based on a single PDF file is to drag & drop the file onto the table of entries (between two existing entries). JabRef will then analyze the PDF and create a new entry.
{% endhint %}

This feature is available through **Lookup -> Search for unlinked local files**.

{% hint style="warning" %}
This information is partially outdated. Please help to improve it ([how to edit a help page](../../contributing/how-to-improve-the-help-page.md#editing-help-pages-directly-in-the-browser)).
{% endhint %}

The following description appeared first on [tex.stackexchange.com](http://tex.stackexchange.com/a/344310/9075).

## Preparation: Adjust the JabRef key generation pattern to fit your needs

JabRef offers a BibTeX key generation and offers different patterns described at [BibtexKeyPatterns](../setup/citationkeypatterns.md).

## Link the PDFs to your bib library

In case you have numerous PDF files and want to convert them into new entries, JabRef can search automatically for the PDF files, let you select the relevant ones, and convert them into new entries.

1. Create or open a `.bib` library.
2. Go to **Lookup -> Search for unlinked local files**. (or press `SHIFT + F7`)

    ![FindUnlinkedFiles - Menu](<../.gitbook/assets/bildschirmfoto-2021-07-05-um-19.19.09 (1).png>) ![FindUnlinkedFiles - Menu](<../.gitbook/assets/findunlinkedfiles-menu-5.2 (6).png>)
3. The "Search for unlinked local files" dialog opens.

    <img src="../.gitbook/assets/findunlinkedfiles-window-5.2 (5).png" alt="FindUnlinkedFiles - Initial dialog" data-size="original">
4. Choose a start directory using the "Browse" button.
5. Click on "Search" / "Scan directory".
6. In "Select files", the files not yet contained in the library are shown.

    <img src="../.gitbook/assets/findunlinkedfiles-foundfiles-5.2.png" alt="FindUnlinkedFiles - Found files" data-size="original">
7. Select the entries you are interested in. Note: the button `Export selected files` allows you to export the list of the selected files (a text file containing on each line one filename with its path)
8. Click on `Import`.

    The windows close and the entry table now contains the newly-imported entries.
9. The entry editor with the last imported entry is shown ![FindUnlinkedFiles - 08 - entry editor](<../.gitbook/assets/findunlinkedfiles-08-entry-editor (1).png>)
10. You can now save the file and are finished.
11. Optional: Click on "General" to see the linked file ![FindUnlinkedFiles - 09 - entry editor - General](<../.gitbook/assets/findunlinkedfiles-09-entry-editor-general (5).png>)
12. Optional: Click on "BibTeX source" to see the BibTeX source ![FindUnlinkedFiles - 10 - entry editor - BibTeX source](../.gitbook/assets/findunlinkedfiles-10-entry-editor-bibtex-source.png)
13. Optional: You have to shrink it to see the entry in the entry table, enlarge the JabRef window and use the mouse at the upper border of the entry editor ![FindUnlinkedFiles - 11 - entry editor - shrunk](../.gitbook/assets/findunlinkedfiles-11-entry-editor-shrunk.png)
14. Optional: Press Esc to show the entry preview ![FindUnlinkedFiles - 12 - entry preview](../.gitbook/assets/findunlinkedfiles-12-entry-preview.png)

{% hint style="danger" %}
The imported entries may need some editing because all the information gathered from the PDF files may not be accurate (see below "PDFs for which it works").
{% endhint %}

## Further information

### PDFs for which it works

The importer based on the content has been written for IEEE and [LNCS](https://github.com/latextemplates/LNCS) formatted papers. Other formats are not (yet) supported. In case a DOI is found on the first page, the DOI is used to generate the BibTeX information.

The next development step is to extract the title of the PDF, use the "Lookup DOI" and then the [Get BibTeX data from DOI](../finding-sorting-and-cleaning-entries/getbibtexdatafromdoi.md) functionality from JabRef to fetch the BibTeX data.

We are also [thinking about](https://github.com/koppor/jabref/issues/169) replacing the code completely by using another library. This is much effort and there is no timeline for that.

### Better filenames

JabRef also offers to change the filenames. You can adapt the pattern at Preferences -> Import ![Preferences - Import](../.gitbook/assets/preferences-import.png)

Select "Choose pattern" and choose "bibtexkey - title" ![Preferences - Import - Choose pattern](<../.gitbook/assets/preferences-import-choose-pattern (4).png>) This results in the setting `\bibtexkey\begin{title} - \format[RemoveBrackets]{\title}\end{title}`.

This makes the filenames start with the bibtey key followed by the full title. In the concrete case, `\bibtexkey` only may be the better option as the described bibtey key already contains the title.

### Mr.DLib

JabRef used to have support for [Mr.DLib](http://mr-dlib.org), which returned back a full BibTeX entry or a PDF. Due to unclear copyright situation of a used library, this service was removed. Further, Mr.DLib changes its focus and will provide literature recommendations. See [the realted articles tab](../advanced/entryeditor/#related-articles-tab).

### Related questions on stack overflow

* [Extract titles from each page of a PDF?](http://stackoverflow.com/q/18071127/873282)
* [Zotero: Extract references from PDF and create new library items from them](https://forums.zotero.org/discussion/16277/extract-references-from-pdf-and-create-new-library-items-from-them)
* [Is there an open source tool for producing bibtex entries from paper PDFs?](http://academia.stackexchange.com/questions/15504/is-there-an-open-source-tool-for-producing-bibtex-entries-from-paper-pdfs)
* [Extracting information from PDFs of research papers](http://stackoverflow.com/questions/1813427/extracting-information-from-pdfs-of-research-papers/3523416)
