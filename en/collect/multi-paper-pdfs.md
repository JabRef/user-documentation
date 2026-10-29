---
description: JabRef creates one entry per paper from a PDF that contains several papers, such as conference proceedings.
---

# Multi-paper PDFs

Conference proceedings, edited collections, and some books come as a single PDF that contains several papers or chapters. JabRef recognizes such a PDF and creates one entry for each paper. Each paper gets a PDF containing only its pages and keeps the page numbers printed in the volume. The original PDF is never changed.

## Importing a multi-paper PDF

You can import a multi-paper PDF in three ways:

* **File → Import into current library...** and select the PDF. The [import inspection window](import/importinspectiondialog.md) lists the papers first, followed by the entry for the whole PDF. If sending PDFs to Grobid is allowed (**File → Preferences → Web search**, section "Remote services"), the references cited by the papers are listed after them.
* **Lookup → Search for unlinked local files**, see [Add entry using PDFs](findunlinkedfiles.md#adding-files-currently-not-linked-in-the-library). The result reads, for example, "File was imported as 8 papers and an entry for the whole PDF".
* Drag and drop the PDF between two entries of the entry table, or onto its empty area.

<figure><img src="../.gitbook/assets/multi-paper-pdf-import-dialog.png" alt="Import dialog listing the eight papers of a proceedings PDF"><figcaption><p>File → Import lists the papers first</p></figcaption></figure>

JabRef then creates the following entries:

| Entry | Type | Content |
| --- | --- | --- |
| One entry for the whole PDF | Proceedings, Collection, or Book | Citation key from the file name, title, the original PDF, and `pageoffset` |
| One entry per paper | InProceedings, InCollection, or InBook | Title, printed pages (for example `40--72`), `crossref` to the entry for the whole PDF, `pageoffset`, and a PDF containing only the paper's pages |

The PDFs of the papers are named after the paper titles and saved next to the original PDF. The entry for the whole PDF keeps its citation key, even if JabRef is set to generate new keys on import, so that the `crossref` of the papers keeps working.

The type of the entry for the whole PDF follows the PDF's front matter:

* **Proceedings** if the title pages or bookmarks name a conference, workshop, or symposium, or list the committees that organized it.
* **Collection** if they name editors, for example "(Eds.)" or "Edited by", list the contributors, or if the papers give the e-mail addresses of their authors.
* **Book** otherwise.

## Splitting a PDF attached to an existing entry

Attach a PDF to an entry using the **+** button in the **Files and links** section of the [entry editor](../advanced/entryeditor/), or using **More file operations... → Attach file** in the context menu of the entry table. What happens next depends on the entry:

* **Proceedings, Collection, or Book entry** (and their multi-volume types): JabRef splits a multi-paper PDF and reports, for example, "Created 8 entries from the PDF." Each new paper cross-references the entry if it has a citation key. A paper that already cross-references the entry under the same title gets its PDF instead of a second entry. The entry stores the `pageoffset` of the PDF if it has none.
* **Any other entry with `pages`**: JabRef adds a copy of just these pages, for example `proceedings-p15-53.pdf`, next to the original PDF. If the entry has no `pageoffset`, the one of the entry it cross-references is used. If the PDF already contains only these pages, no copy is made.

<figure><img src="../.gitbook/assets/multi-paper-pdf-split-proceedings.png" alt="Entry table with one InProceedings entry per paper and the entry editor showing pages 40--72 and pageoffset -39"><figcaption><p>Attaching the PDF to the proceedings entry P creates one entry per paper, each with its printed pages and its own pageoffset</p></figcaption></figure>

<figure><img src="../.gitbook/assets/multi-paper-pdf-page-copy.png" alt="Files and links listing the original PDF and a copy of pages 15 to 53"><figcaption><p>Attaching the PDF to an entry with the pages 15--53 adds a copy of just these pages</p></figcaption></figure>

Splitting is a single step that you can take back with **Edit → Undo**.

## Opening a paper at its first page

**View → Open document viewer** opens the PDF of the selected entry at the first page given in `pages`, shifted by `pageoffset`. Entries without `pages`, such as the entry for the whole PDF, open at the first page of their PDF.

If the entry has no PDF but cross-references an entry that has one, JabRef asks "This entry has no PDF. Open the PDF of the entry it cross-references?". Click **Open PDF** to open that PDF at the entry's first page.

<figure><img src="../.gitbook/assets/multi-paper-pdf-crossref-dialog.png" alt="Dialog asking whether to open the PDF of the cross-referenced entry"><figcaption><p>JabRef asks before opening the PDF of the cross-referenced entry</p></figcaption></figure>

<figure><img src="../.gitbook/assets/multi-paper-pdf-viewer-crossref-page.png" alt="Document viewer showing page 54 of 270 with the title page of a paper"><figcaption><p>The entry Q with the pages 40--72 and the crossref P opens the PDF of P at page 54</p></figcaption></figure>

## The pageoffset field

Printed page numbers and PDF page numbers often differ, because front matter such as the preface and the table of contents comes before printed page 1. The field `pageoffset` stores the difference, PDF page minus printed page, for the PDF linked to the entry. For example, if printed page 1 is the 15th page of the PDF, the offset is `14`, and printed page 40 opens at PDF page 54, as shown in [Opening a paper at its first page](#opening-a-paper-at-its-first-page).

JabRef reads the offset from the PDF's page labels when it imports or splits a PDF. The PDF of a paper starts at the paper's first page, so its offset is negative: a paper on pages `40--72` has the offset `-39`, and its PDF opens at page 1. Without `pageoffset`, printed pages and PDF pages are taken to be the same.

You can also set `pageoffset` yourself, for example in the [BibTeX source tab](../advanced/entryeditor/add-entry-manually.md), when a PDF has no page labels. An offset that is already set is used when the PDF is split.

## Which PDFs are recognized

JabRef finds the papers using the bookmarks (outline) of the PDF. A PDF counts as a multi-paper PDF only if:

* its bookmarks list at least two papers,
* most papers start on a page with a title set larger than the text, and
* if the papers have bookmarked sections, most of them share a section name such as "Introduction" or "References".

Bookmarks without sections next to papers with sections, such as the preface or the author index, do not get entries. A PDF without bookmarks, or with a single paper, is imported or attached as usual.

## BibTeX and biblatex libraries

In a biblatex library, the entry types are as described above. BibTeX has no collection type and passes on only fields of the same name through `crossref`. Thus, in a BibTeX library:

* an imported collection becomes a Book,
* the entry for the whole PDF repeats its title as `booktitle`, and
* papers in a book are InCollection entries, because the title of a BibTeX InBook entry is the title of the book.

<figure><img src="../.gitbook/assets/multi-paper-pdf-split-book-bibtex.png" alt="Entry table with the Book entry B and eight InCollection entries"><figcaption><p>In a BibTeX library, attaching the PDF to the Book entry B creates InCollection entries</p></figcaption></figure>

See [BibTeX and biblatex](../cite/bibtex-and-biblatex.md) for the differences between both modes.
