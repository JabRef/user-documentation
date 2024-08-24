# OpenOffice/LibreOffice integration

## Introduction

This feature offers an interface for inserting citations and formatting a Bibliography in an OpenOffice or LibreOffice Writer document from JabRef.

Throughout this help document, whenever the name _OpenOffice_ is used, it can be interchanged with _LibreOffice_.

## Using the OpenOffice/LibreOffice interface

To communicate with OpenOffice, JabRef must first connect to a running OpenOffice instance. You need to start OpenOffice and enter your document before connecting from JabRef.

![](<ConnectToLibreOffice (2).gif>)

JabRef needs to know the location of your OpenOffice executable (**soffice.exe** on Windows, and **soffice** on other platforms), and the directory where several OpenOffice jar files reside. If you connect by clicking the **Connect** button, JabRef will try to automatically determine these locations. If this does not work, you need to connect using the **Manual connect** button, which will open a window asking you for the needed locations.

After the connection has been established, you can insert citations by selecting one or more entries in JabRef and using the **Push to OpenOffice** button in the dropdown menu of JabRef's toolbar, or by using the appropriate button in the OpenOffice panel in the side pane. This will insert citations for the selected entries at the current cursor position in the OpenOffice document, and update the bibliography to contain the full reference.

![](<CiteLibreOffice (3).gif>)

**Note:** JabRef does not use OpenOffice's built-in bibliography system, because of the limitations of that system. A document containing citations inserted from JabRef will not generally be compatible with other reference managers such as Bibus and Zotero.

Two different types of citations can be inserted - either a citation in parenthesis, "(Author 2007)", or an in-text citation, "Author (2007)". This distinction is only meaningful if author-year citations are used instead of numbered citations, but the distinction will be preserved if you switch between the two styles.

If you modify entries in JabRef after inserting their citations into OpenOffice, you will need to synchronize the bibliography. By default, **Automatically sync bibliography when inserting citations** is enabled. This can be disabled by clicking the **Settings** button and unchecking **Automatically sync bibliography when inserting citations**. The **Sync OO bibliography** button will update all entries of the bibliography, provided their citation keys have not been altered (JabRef encodes the citation key into the reference name for each citation to keep track of which citation key the original JabRef entry has).

## The style file

To customize the citation style you need to select a style file, or use one of the default styles. The style defines the format of citations and the format of the bibliography. You can use standard JabRef export formatters to process fields before they are sent to OpenOffice. Through the style file, the intention is to give as much flexibility in citation styles as possible. You can switch style files at any time, and use the **Update** button to refresh your bibliography to follow the new style.

By clicking the **Select style** button you can bring up a window that allows selection of either the default style or an external style file. If you want to create a new style based on the default, you can click the **View** button to bring up the default style contents, which can be copied into a text editor and modified.

To choose an external style file, you have two options. Either you can choose a style file directly, or you can set a style file directory. If you do the latter, you will see a list of styles from that directory (and subdirectories), and can choose one from that list.

To edit an already loaded custom style file or to reload changes that you made to a style file, click on **Select style** to bring up the style selection window, then right-click the currently loaded file to bring up a menu that allows you to choose either "Edit" or "Reload".

**CAUTION**: Please take care that your style file is saved using **UTF-8** for character encoding. If you use another character encoding (even other unicode encodings such as UTF-16 or UTF-32), JabRef will not be able to process your style file.

Here is an example style file:

```text
NAME
Example style file for JabRef-OpenOffice integration.

JOURNALS
Journal name 1
Journal name 2

PROPERTIES
Title="References"
IsSortByPosition="false"
IsNumberEntries="false"
ReferenceParagraphFormat="Default"
ReferenceHeaderParagraphFormat="Heading 1"

CITATION
AuthorField="author/editor"
YearField="year"
MaxAuthors="3"
MaxAuthorsFirst="3"
AuthorSeparator=", "
AuthorLastSeparator=" & "
EtAlString=" et al."
ItalicEtAl="true"
YearSeparator=" "
InTextYearSeparator=" "
BracketBefore="["
BracketAfter="]"
BracketBeforeInList="["
BracketAfterInList="]"
CitationSeparator="; "
UniquefierSeparator=","
GroupedNumbersSeparator="-"
MinimumGroupingCount="3"
FormatCitations="false"
CitationCharacterFormat="Default"
MultiCiteChronological="false"
PageInfoSeparator="; "

LAYOUT
article=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}
(<b>\year\uniq</b>). <i>\title</i>, \journal \volume\begin{pages} :
\format[FormatPagesForHTML]{\pages}\end{pages}.

book=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}\begin{editor}
\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\editor} (Ed.)\end{editor},
<b>\year\uniq</b>. <i>\title</i>. \publisher, \address.

incollection=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}
(<b>\year\uniq</b>). <i>\title</i>. In: \format[AuthorLastFirst,
AuthorAbbreviator,AuthorAndsReplacer]{\editor} (Ed.), <i>\booktitle</i>, \publisher.

inbook=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}
(<b>\year\uniq</b>). <i>\chapter</i>. In: \format[AuthorLastFirst,
AuthorAbbreviator,AuthorAndsReplacer]{\editor} (Ed.), <i>\title</i>, \publisher.

phdthesis=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}
(<b>\year\uniq</b>). <i>\title</i>, \school.

default=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}
(<b>\year\uniq</b>). <i>\title</i>, \journal \volume\begin{pages} :
\format[FormatPagesForHTML]{\pages}\end{pages}.
```

(Note that the layout for each entry type must be constrained to a single line in the style file - above, the lines are broken up to improve readability.)

Regarding tool support, there is the [Export-Filter-Editor](https://github.com/teertinker/Export-Filter-Editor) for Jabref to quickly create a style file.

### Global properties

The **PROPERTIES** section describes global properties for the bibliography. The following table describes the available properties:

|                                |          |                   |                                                                                                                                                                                                |
| ------------------------------ | -------- | ----------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Property**                   | **Type** | **Default value** | **Description**                                                                                                                                                                                |
| IsNumberEntries                | boolean  | `false`           | Determines the type of citations to use. If `true`, number citations will be used. If `false`, author-year citations will be used.                                                             |
| IsSortByPosition               | boolean  | `false`           | Determines how the bibliography is sorted. If true, the entries will be sorted according to the order in which they are cited. If false, the entries will be sorted alphabetically by authors. |
| ReferenceParagraphFormat       | string   | `Default`         | Gives the name of the paragraph format to be used for the reference list. This format must be defined in your OpenOffice document.                                                             |
| ReferenceHeaderParagraphFormat | string   | `Heading 1`       | Gives the name of the paragraph format to be used for the headline of the reference list. This format must be defined in your OpenOffice document.                                             |
| Title                          | string   | `Bibliography`    | The text to enter as the headline of the reference list.                                                                                                                                       |

### Citation properties

The **CITATION** section describes the format of the citation markers inserted into the text.

The following table gives a brief description of all the available citation properties. Properties that are not given in the style file will keep their default value.

|                           |          |                   |                                                                                                                                                                                                                                                                                                                                                                               |
| ------------------------- | -------- | ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Property**              | **Type** | **Default value** | **Description**                                                                                                                                                                                                                                                                                                                                                               |
| AuthorField               | string   | `author/editor`   | Field containing author names. Can specify fallback field, e.g. `author/editor`                                                                                                                                                                                                                                                                                               |
| AuthorLastSeparator       | string   | `&`               | Text inserted between the two last author names.                                                                                                                                                                                                                                                                                                                              |
| AuthorLastSeparatorInText | string   |                   | If specified, this property overrides `AuthorLastSeparator` for in-text citations such as `Smith & Jones (2001)`.                                                                                                                                                                                                                                                             |
| AuthorSeparator           | string   | `,`               | Text inserted between author names except the last two.                                                                                                                                                                                                                                                                                                                       |
| BracketAfter              | string   | `]`               | The closing bracket of citations.                                                                                                                                                                                                                                                                                                                                             |
| BracketAfterInList        | string   | ]                 | The closing bracket for citation numbering in the reference list.                                                                                                                                                                                                                                                                                                             |
| BracketBefore             | string   | `[`               | The opening bracket of citations.                                                                                                                                                                                                                                                                                                                                             |
| BracketBeforeInList       | string   | \[                | The opening bracket for citation numbering in the reference list.                                                                                                                                                                                                                                                                                                             |
| CitationCharacterFormat   | string   | `Default`         | If `FormatCitations` is set to `true`, the character format with the name given by this property will be applied to citations. The character format must be defined in your OpenOffice document.                                                                                                                                                                              |
| CitationSeparator         | string   | `;`               | Text inserted between items when a citation contains multiple entries, e.g. `[Smith 2001; Jones 2002]`                                                                                                                                                                                                                                                                        |
| EtAlString                | string   | `et al.`          | Text inserted after author names when not all authors are listed, e.g. `[Smith et al. 2001]`                                                                                                                                                                                                                                                                                  |
| FormatCitations           | boolean  | `false`           | Determines whether formatting should be applied to citations. If true, a character format will be applied to the citations. The property `CitationCharacterFormat` controls which format should be applied, and the given format must be defined in your OpenOffice document. Any font settings and effects can be chosen within OpenOffice for your chosen character format. |
| GroupedNumbersSeparator   | string   | `-`               | Text inserted between numbers when numbered citations are grouped, e.g. `[4-6]`                                                                                                                                                                                                                                                                                               |
| InTextYearSeparator       | string   | Single Space      | Text inserted between author names and starting bracket before year in in-text citations.                                                                                                                                                                                                                                                                                     |
| ItalicEtAl                | boolean  | `true`            | If true, the "et al." string in citation markers is italicized.                                                                                                                                                                                                                                                                                                               |
| MaxAuthors                | integer  | `3`               | The maximum number of authors to list in a citation that has appeared earlier in the document.                                                                                                                                                                                                                                                                                |
| MaxAuthorsFirst           | integer  | `3`               | The maximum number of authors to list in a citation when appearing for the first time.                                                                                                                                                                                                                                                                                        |
| MinimumGroupingCount      | integer  | `3`               | The minimum number of consecutive entries a citation should contain before the numbers are grouped, e.g. `[4-6]` vs. `[4; 5; 6]`.                                                                                                                                                                                                                                             |
| MultiCiteChronological    | boolean  | `true`            | If `true`, multiple entries in the same citation are sorted chronologically, otherwise they are sorted alphabetically.                                                                                                                                                                                                                                                        |
| PageInfoSeparator         | string   | `;`               | For citations with extra information, e.g. page numbers, this string is inserted between the year (for author-year citations) or the citation number (for numbered citations) and the extra information. E.g. the text between `2001` and `p. 301` in `[Smith 2001; p. 301]`.                                                                                                 |
| UniquefierSeparator       | string   | `,`               | Text inserted between letters used to differentiate citations with similar authors and year. E.g. the text between `a` and `b` in `[Smith 2001a, b]`.                                                                                                                                                                                                                         |
| YearField                 | string   | `year`            | The field to get publication year from.                                                                                                                                                                                                                                                                                                                                       |
| YearSeparator             | string   | Single Space      | Text inserted between author names and year in parenthesis citations such as `[Smith 2001]`.                                                                                                                                                                                                                                                                                  |

If numbered entries are used, the `BracketBefore` and `BracketAfter` properties are the most important - they define which characters the citation number is wrapped in. The citation is composed as follows: `[BracketBefore][Number][BracketAfter]` where \[Number] is the number of the citation, determined according to the ordering of the bibliography and/or the position of the citation in the text. If a citation refers to several entries, these will be separated by the string given in the property `CitationSeparator` (for instance, if `CitationSeparator`=;, the citation could look like `[2;4;6]`). If two or more of the entries have a series of consecutive numbers, the numbers can be grouped (for instance `[2-4]` for 2, 3 and 4 or `[2;5-7]` for 2, 5, 6 and 7). The property `GroupedNumbersSeparator` (default `-`) determines which string separates the first and last of the grouped numbers. The integer property `MinimumGroupingCount` (default 3) determines what number of consecutive numbers is required before entries are grouped. If `MinimumGroupingCount`=3, the numbers 2 and 3 will not be grouped, while 2, 3, 4 will be. If `MinimumGroupingCount`=0, no grouping will be done regardless of the number of consecutive numbers.

If numbered entries are not used, author-year citations will be created based on the citation properties. A parenthesis citation is composed as follows: `[BracketBefore][Author][YearSeparator][Year][BracketAfter]` where \[Author] is the result of looking up the field or fields given in the `AuthorField` property, and formatting a list of authors. The list can contain up to `MaxAuthors` names - if more are present, the list will be composed as the first author plus the text specified in the property `EtAlString`. If the property `MaxAuthorsFirst` is given, it overrides `MaxAuthors` the first time each citation appears in the text.

If several, slash-separated, fields are given in the `AuthorField` property, they will be looked up successively if the first field is empty for the given entry. In the example above, the "author" field will be used, but if empty, the "editor" field will be used as a backup.

The names in the author list will be separated by the text given by the `AuthorSeparator` property, except for the last two names, which will be separated by the text given by `AuthorLastSeparator`. If the property `AuthorLastSeparatorInText` is given, it overrides the former for citations of the in-text type. This makes it possible to get citations like `(Olsen & Jensen, 2008)` and `Olsen and Jensen (2008)` for the same style.

\[Year] is the result of looking up the field or fields given in the \[YearField] property.

An in-text citation is composed as follows: `[Author][InTextYearSeparator][BracketBefore][Year][BracketAfter]` where \[Author] and \[Year] are resolved in exactly the same way as for the parenthesis citations.

If two different cited sources have the same authors and publication year, and author-year citations are used, their markers will need modification in order to be distinguishable. This is done automatically by appending a letter after the year for each of the publications; 'a' for the first cited reference, 'b' for the next, and so on. For instance, if the author "Olsen" has two cited papers from 2005, the citation markers will be modified to `(Olsen, 2005a)` and `(Olsen, 2005b)`. In the bibliography layout, the placement of the "uniquefier" letter is indicated explicitly by inserting the virtual field `uniq`.

If several entries that have been "uniquefied" are cited together, they will be grouped in the citation marker. For instance, of the two entries in the example above are cited together, the citation marker will be `(Olsen, 2005a, b)` rather than `Olsen, 2005a; Olsen, 2005b)`. The grouped uniquefier letters (a and b in our example) will be separated by the string specified by the `UniquefierSeparator` property.

Author-year citations referring more than one entry will by default be sorted chronologically. If you wish them to be sorted alphabetically, the citation property `MultiCiteChronological` should be set to `false.`.

### Reference list layout

The **LAYOUT** section describes how the bibliography entry for each entry type in JabRef should appear. Each line should start with either the name of an entry type, or the word `default`, followed by a '='. The `default` layout will be used for all entry types for which an explicit layout hasn't been given.

The remainder of each line defines the layout, with normal text and spaces appearing literally in the bibliography entry. Information from the entry is inserted by adding `\field` markers with the appropriate field name (e.g. `\author` for inserting the author names). Formatting information for the field can be included here, following JabRef's standard export layout syntax. Refer to [JabRef's documentation on custom export filters](../collaborative-work/export/customexports.md) for more information about which formatters are available and tooling hints.

If author-year citations are used, you have to explicitly specify the position of the "uniquefier" letter that is added to distinguish similar-looking citations. This is done by including a marker for the virtual field `uniq`, typically right after the year (as shown in the example style file). The `uniq` field is automatically set correctly for each entry before its reference text is laid out.

To indicate formatting in the bibliography, you can use the HTML-like tag pairs \<b> \</b>, \<i> \</i>, \<sup> \</sup> and \<sub> \</sub> to specify bold text, italic text, superscript and subscript, respectively.

If you are using numbered citations, the number for each entry will be automatically inserted at the start of each entry in the reference list. By default, the numbers will be enclosed in the same brackets defined for citations. The optional citation properties `BracketBeforeInList` and `BracketAfterInList` override `BracketBefore` and `BracketAfter` if set. These can be used if you want different types of brackets (or no brackets) in the reference list. Note that these need not be brackets as such - they can be any combination of characters.

## Known issues

* Make sure to save your Writer document in OpenDocument format (odt). Saving to Word format will lose your reference marks.
  * Otherwise, try to use the external tool [JabRef LibreOffice Converter](https://github.com/teertinker/JabRef\_LibreOffice\_Converter). This LibreOffice extension converts the reference marks to code that can be saved.
* There is currently no support for footnote based citations.
* The cursor may be poorly positioned after inserting a citation.
* Copy-pasting the example style file directly from this page can give an unparseable file. To avoid this, instead download the example file from the link in the download section.
* Make sure that `libreoffice-java-common` is installed on Linux for LibreOffice 5, otherwise important libraries are missing.
* The snap version of LibreOffice and JabRef may cause connection issues. Try to use the \*deb versions instead.
* Open Office 4 will only work running under a 32-bit Java JRE/JDK on Windows because there is no 64-bit version of OpenOffice yet.
