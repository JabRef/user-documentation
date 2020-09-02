# Add entry using PDFs

The simplest way to create a new entry based an a PDF file is to drag & drop the file onto the main table \(between two existing entries\). JabRef will then analyze the PDF and create a new entry.

In case you want to import many PDFs \(and some of the files are already linked to existing entries\),  **Lookup → Search for unlinked local files** is your friend and the process is described below in detail.

## Mass-link PDFs

1. Go to **Lookup → Search for unlinked local files**.
![FindUnlinkedFiles - 01 - menu](../.gitbook/assets/findunlinkedfiles-01-menu.png)
2. The "Find unlinked files" dialog opens.
![FindUnlinkedFiles - 02 - initial dialog](../.gitbook/assets/findunlinkedfiles-02-initial-dialog.png)
3. Choose a directory using the "Browse" button.
4. Click on "Scan directory".
5. The files not yet contained in the database are shown.
![FindUnlinkedFiles - 03 - scan result](../.gitbook/assets/findunlinkedfiles-03-scan-result.png)
6. To create entries for all files, click on "Import".
7. For each file, an import dialog is shown.
![FindUnlinkedFiles - 04 - metadata](../.gitbook/assets/findunlinkedfiles-04-metadata.png)
The dialog shows the XMP metadata stored in the PDF in the area "XMP-metadata". If this data fits your needs, select "Create entry based on XMP data". Typically, the XMP-metadata is not good enough. Choose "Create entry based on content".
8. Click on "OK" to start the import.
9. A dialog asking for the link opens.
![FindUnlinkedFiles - 05 - LinkToFile](../.gitbook/assets/findunlinkedfiles-05-linktofile.png)
You can choose "Leave file in its current directory" to keep the file where it is. Typically, this is that what one wants. In case you choose "Move file to file directory", you can also choose to rename the file to the generated citation key.
10. Press "OK" to link the file to the entry
11. This happens for each file. After that, the "Find unlinked files" dialog is shown. Just click on "Close" to close it.
12. The entry editor with the last imported entry is shown.
![FindUnlinkedFiles - 08 - entry editor](../.gitbook/assets/findunlinkedfiles-08-entry-editor.png)
13. You can now save the file. You are done.
14. Optional: Click on "General" to see the field of the linked file.
![FindUnlinkedFiles - 09 - entry editor - General](../.gitbook/assets/findunlinkedfiles-09-entry-editor-general.png)

## Further information

### PDFs for which it works

The importer based on the content has been written for IEEE and [LNCS](https://github.com/latextemplates/LNCS) formatted papers. Other formats are not \(yet\) supported. In case a DOI is found on the first page, the DOI is used to generate the BibTeX information.

The next development step is to extract the title of the PDF, use the "Lookup DOI" and then the [Get BibTeX data from DOI](../finding-sorting-and-cleaning-entries/getbibtexdatafromdoi.md) functionality from JabRef to fetch the BibTeX data.

We are also [thinking about](https://github.com/koppor/jabref/issues/169) replacing the code completely by using another library. This is much effort and there is no timeline for that.

### Better filenames

JabRef also offers to change the filenames. You can adapt the pattern at  **Options → Preferences →  Linked files**
![Preferences - Import](../.gitbook/assets/preferences-import.png)

In the section *Linked file name conventions*, you can select the *Filename format pattern*: `[bibtexkey] - [title]` or `[bibtexkey]`.
![Preferences - Import - Choose pattern](../.gitbook/assets/preferences-import-choose-pattern.png).
Selecting `[bibtexkey] - [title]` results in the setting `\bibtexkey\begin{title} - \format[RemoveBrackets]{\title}\end{title}`.

This makes the filenames start with the citation key followed by the full title. In the concrete case, `\bibtexkey` only may be the better option as the described citation key already contains the title.
