# JabRef Bibliography Management

Stay on top of your literature: JabRef helps you to collect and organize sources, find the paper you need and discover the latest research.

## Features

JabRef is a cross-platform application that works on Windows, Linux and Mac OS X. It is available free of charge and is actively developed. JabRef supports you in every step of your research work.

### Collect

* [Search](./import-using-online-bibliographic-database/) across many online scientific catalogues like [CiteSeer](./import-using-online-bibliographic-database/citeseer.md), CrossRef, Google Scholar, IEEEXplore, INSPIRE-HEP, Medline PubMed, MathSciNet, Springer, arXiv, and zbMATH
* Import options for over 15 reference formats
* Easily retrieve and link full-text articles
* Fetch complete bibliographic information based on ISBN, DOI, PubMed-ID and arXiv-ID
* Extract metadata from PDFs
* [JabFox Firefox Add-on](https://addons.mozilla.org/en-US/firefox/addon/jabfox/) lets you import new references directly from the browser with one click

### Organize

* Group your research into hierarchical collections and organize research items based on keywords/tags, search terms or your manual assignments
* Advanced search and filter features
* Complete and fix bibliographic data by comparing with curated online catalogues such as Google Scholar, Springer or MathSciNet
* Customizable citation key generator
* Customize and add new metadata fields or reference types
* Find and merge duplicates
* Attach related documents: 20 different kinds of documents supported out of the box, completely customizable and extendable
* Automatically rename and move associated documents according to customizable rules
* Keep track of what you read: ranking, priority, printed, quality-assured

### Cite

* Native [BibTeX](https://www.ctan.org/pkg/bibtex) and [Biblatex](https://www.ctan.org/pkg/biblatex) support
* [Cite-as-you-write functionality](./import-export/pushtoapplications.md) for external applications such as Emacs, Kile, LyX, Texmaker, TeXstudio, Vim and WinEdt.
* Format references in one of the many thousand built-in citation styles or create your style
* Support for Word and LibreOffice/OpenOffice for inserting and formatting citations

### Share

* Many built-in export options or create your export format
* Library is saved as a simple text file and thus it is easy to share with others via Dropbox and is version-control friendly
* Work in a team: sync the contents of your library [via a SQL database](./collaborative-work/sqldatabase.md)

## The data format of JabRef is BibTeX

JabRef is is a program for working with BibTeX databases. JabRef program uses no separate internal file format, but directly works with BibTeX. That means, your BibTeX file is kept as is when opening in JabRef and saving again: You normally load and save your databases directly in the BibTeX .bib format. In addition, you can also [import and export bibliography libraries](./import-export/) in a number of other formats into JabRef.

## JabRef's main window

> Most menu actions referred in the following have keyboard shortcuts, and many are available from the toolbar. The keyboard shortcuts are found in the pull-down menus.

This is the main window from where you work with your databases. Below the menubar and the toolbar is a tabbed pane containing a panel for each of your currently open databases. When you select one of these panels, a table appears, listing all the database's entries, as well as a configurable selection of their fields.

* You decide which fields are shown in the table by checking the fields you want to see in the **Preferences** dialog.
* Double-click a line of the table to edit the entry content. You can navigate the table with the arrow keys.
* The table is sorted according to a set of fields of your choosing. The default sort order can be set up in **Preferences → Entry table**, but to more quickly change the order, click the header of a column to set it as the primary sort criterion, or reverse the sorting if it is already set. Another click will deselect the column as sorting criterion. Hold down Ctrl and click a column to add, reverse or remove it as a sub-criterion after the primary column. You can add an arbitrary number of sub-criteria, but only three levels will be stored for the next time you start JabRef.
* Adjust the width of each column by dragging the borders between their headers.
* Color codes can be toggled in the **Preferences** dialog \(select **Appearance** and activate option "Color codes for optional and required fields\). They help you visualize the completeness of your database by coloring cells as follows:
  * A red cell in the leftmost column denotes an incomplete entry.
  * A yellow cell in the leftmost column denotes an entry that doesn't define all required fields by itself, but that contains a cross-reference.
  * A blue cell denotes a required field.
  * A green cell denotes an optional field.
  * An uncolored cell denotes a field which is not used by the BibTeX program for this type of entry. The field can still be edited in JabRef.

### Adding a new entry

There are several ways to add a new entry. The **New entry** menu action shows a dialog where you can choose the type of the entry from a list. To bypass this dialog, there are also separate menu actions for each entry type, and keyboard shortcuts for the most common types.

When a new entry is added, by default an [entry editor](./general/entryeditor.md) for the entry will be opened. This behaviour can be toggled in the **Preferences** dialog.

_Note:_ We strongly recommend learning the shortcuts for the entry types you use most often, e.g. Ctrl + Shift + A for adding an _article_ entry.

#### Adding a new entry using an id

In the dialog, you can also create an entry based on Id. See [import using publication identifiers](./import-using-publication-identifiers/) for an overview on all available fetchers. For instance, when having an ISBN number, you can select "ISBN" or "DOI" as Id type and then fetch it. See [ISBNtoBibTeX](./import-using-publication-identifiers/isbntobibtex.md) and [DOItoBibTeX](./import-using-publication-identifiers/doitobibtex.md) for details.

#### Adding a new entry using the reference text

Use the BibTeX → New entry from plain text... \(Ctrl+Shift+N\). For more information see [New entry from plain text](./import-export/newentryfromplaintext.md).

### Editing an entry

To open an [entry editor](./general/entryeditor.md) for an existing entry, simply double-click anywhere on the appropriate line will open the entry editor \(or select the entry and press Enter\).

### Referencing a BibTeX string in a field

In JabRef you write the contents of all fields the same way as you would in a text editor, with one exception: to reference a string, enclose the name of the string in a set of \# characters, e.g.: '\#jan\# 1997', which will be interpreted as the string named `jan` followed by `1997`. For more information, see [string editor](./setup/stringeditor.md).

## Revision history

Please refer to [https://github.com/JabRef/jabref/blob/master/CHANGELOG.md](https://github.com/JabRef/jabref/blob/master/CHANGELOG.md) for a complete history in English.

## License

### The license of the JabRef software

The JabRef software is under the [MIT License](https://github.com/JabRef/jabref/blob/master/LICENSE.md). In short, JabRef is free of use, even commercially. You can do whatever you want with it as long as you include the original copyright and license notice in any copy of the software/source.

### The license of JabRef help

The help of JabRef is under the [Creative Commons 4.0 Attribution 4.0 International License](https://github.com/JabRef/user-documentation/blob/master/LICENSE.md). In short, you can make a commercial use of it, distribute it, modify it and rename it. You must give credit, include copyright, and state changes. And you cannot sublicense it.

