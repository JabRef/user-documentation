# Add unlinked PDFs including BibTeX data into the library

This feature is available through **Lookup -&gt; Search for unlinked local files**.

{% hint style="warning" %}
This page is partly outdated. Please, help.
{% endhint %}

The following description appeared first on [tex.stackexchange.com](http://tex.stackexchange.com/a/344310/9075).

## Preparation: Adjust the JabRef key generation pattern to fit your needs

JabRef offers a BibTeX key generation and offers different patterns described at [BibtexKeyPatterns](../../setup/citationkeypatterns.md).

## Link the PDFs to your bib library

1. Create or open a .bib librarry.
2. Go to **Lookup -&gt; Search for unlinked local files**.

![](../../.gitbook/assets/bildschirmfoto-2021-07-05-um-19.19.09.png)

1. The "Search for unlinked local files" dialog opens. 
2. Choose a start directory using the "Browse" button.
3. Click on "Search".
4. In "Select files", the files not yet contained in the library are shown. 
5. 6. The entry editor with the last imported entry is shown ![FindUnlinkedFiles - 08 - entry editor](../../.gitbook/assets/findunlinkedfiles-08-entry-editor%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29.png)
7. You can now save the file and are finished.
8. Optional: Click on "General" to see the linked file ![FindUnlinkedFiles - 09 - entry editor - General](../../.gitbook/assets/findunlinkedfiles-09-entry-editor-general%20%281%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29.png)
9. Optional: Click on "BibTeX source" to see the BibTeX source ![FindUnlinkedFiles - 10 - entry editor - BibTeX source](../../.gitbook/assets/findunlinkedfiles-10-entry-editor-bibtex-source.png)
10. Optional: You have to shrink it to see the entry in the entry table Enlarge the JabRef window and use the mouse at the upper border of the entry editor ![FindUnlinkedFiles - 11 - entry editor - shrunk](../../.gitbook/assets/findunlinkedfiles-11-entry-editor-shrunk.png)
11. Optional: Press Esc to show the entry preview ![FindUnlinkedFiles - 12 - entry preview](../../.gitbook/assets/findunlinkedfiles-12-entry-preview.png)

## Further information

### PDFs for which it works

The importer based on the content has been written for IEEE and [LNCS](https://github.com/latextemplates/LNCS) formatted papers. Other formats are not \(yet\) supported. In case a DOI is found on the first page, the DOI is used to generate the BibTeX information.

The next development step is to extract the title of the PDF, use the "Lookup DOI" and then the [Get BibTeX data from DOI](../getbibtexdatafromdoi.md) functionality from JabRef to fetch the BibTeX data.

We are also [thinking about](https://github.com/koppor/jabref/issues/169) replacing the code completely by using another library. This is much effort and there is no timeline for that.

### Better filenames

JabRef also offers to change the filenames. You can adapt the pattern at Preferences -&gt; Import ![Preferences - Import](../../.gitbook/assets/preferences-import%20%281%29%20%281%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29.png)

Select "Choose pattern" and choose "bibtexkey - title" ![Preferences - Import - Choose pattern](../../.gitbook/assets/preferences-import-choose-pattern%20%281%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29.png) This results in the setting `\bibtexkey\begin{title} - \format[RemoveBrackets]{\title}\end{title}`.

This makes the filenames start with the bibtey key followed by the full title. In the concrete case, `\bibtexkey` only may be the better option as the described bibtey key already contains the title.

### Mr.DLib

JabRef used to have support for [Mr.DLib](http://mr-dlib.org/), which returned back a full BibTeX entry or a PDF. Due to unclear copyright situation of a used library, this service was removed. Further, Mr.DLib changes its focus and will provide literature recommendations. See [the realted articles tab](https://github.com/JabRef/user-documentation/tree/2e47d73a4cfef323b7122d3e1653444a7ec121f1/en/general/entryeditor.md#related-articles-tab).

### Related questions on stack overflow

* [Extract titles from each page of a PDF?](http://stackoverflow.com/q/18071127/873282)
* [Zotero: Extract references from PDF and create new library items from them](https://forums.zotero.org/discussion/16277/extract-references-from-pdf-and-create-new-library-items-from-them)
* [Is there an open source tool for producing bibtex entries from paper PDFs?](http://academia.stackexchange.com/questions/15504/is-there-an-open-source-tool-for-producing-bibtex-entries-from-paper-pdfs)
* [Extracting information from PDFs of research papers](http://stackoverflow.com/questions/1813427/extracting-information-from-pdfs-of-research-papers/3523416)

