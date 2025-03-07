---
description: The data format of JabRef is Bib(La)TeX
---

# About BibTeX and its fields

JabRef is is a program for working with BibTeX and biblatex databases. JabRef program uses no separate internal file format but directly works with BibTeX and biblatex. That means, your BibTeX/biblatex file is kept as is when opening in JabRef and saving again: You normally load and save your libraries directly in the BibTeX/biblatex`.bib` format. In addition, you can also [import](../collect/) and export bibliography libraries in a number of other formats into JabRef.

JabRef helps you work with your _BibTeX_ libraries, but there are still rules to keep in mind when editing your entries, to ensure that your library is treated properly by the _BibTeX_ program.

## JabRef's conventions

### Fields in the header of a bib file

JabRef stores the encoding of the file and (in case a shared [SQL database](../collaborative-work/sqldatabase/) is used) the ID of the shared library in the header of the bib file.

#### Encoding

`% Encoding: <encoding>`: States the encoding of a BibTeX file. E.g., `% Encoding: UTF-8`

#### Shared Id

To enable auto save, JabRef adds `% DBID: <id>` to the header. This helps JabRef identifying the SQL database where the file belongs. E.g., `% DBID: 2mvhh73ge3hc5fosdsvuoa808t`.

## Standard BibTeX Format

<div align="center">

<figure><img src="../.gitbook/assets/a-bibtex-entry.png" alt=""><figcaption><p>A BibTeX "Entry"</p></figcaption></figure>

</div>

An entry consists of entrytype, citekey, fields and field content. The BibTeX and Biblatex standards define a wide range of entrytypes and fields, which should give much leeway. Users that have further needs will be able to edit their entries and come up with custom entrytypes, fields and citekeys, as long as the syntax is honored.

## Standard _BibTeX_ fields

There is a lot of different fields in _BibTeX_, and some additional fields that you can set in JabRef.

The following fields are recognized by the default bibliography styles:

* **bibtexkey** A unique string used to refer to the entry in LaTeX documents. Note that when referencing an entry from LaTeX, the key must match case-sensitively with the reference string. Some characters should not be used in bibtexkey as they are not compatible or not recommended:

    `{ } ( ) , \ " - # ~ ^ : '`
* **address** Usually the address of the `publisher` or other type of institution. For major publishing houses, you may omit the information entirely or give simply the city. For small publishers, on the other hand, you can help the reader by giving the complete address.
* **annote** An annotation. It is not used by the standard bibliography styles, but may be used by others that produce an annotated bibliography.
* **author** This field should contain the complete author list for your entry. The names are separated by the word _and_, even if there are more than two authors. Each name can be written in two equivalent forms:

    Donald E. Knuth _or_ Knuth, Donald E.

    Eddie van Halen _or_ van Halen, Eddie

    The second form should be used for authors with more than two names, to differentiate between middle names and last names.
* **booktitle** Title of a book, part of which is being cited. For book entries, use the `title` field instead.
* **chapter** A chapter (or section or whatever) number.
* **crossref** The library key of the entry being cross referenced.
* **edition** The edition of a book--for example, \`\`Second''. This should be an ordinal, and should have the first letter capitalized, as shown here; the standard styles convert to lower case when necessary.
* **editor** This field is analogue to the _author_ field. If there is also an `author` field, then the `editor` field gives the editor of the book or collection in which the reference appears.
* **howpublished** How something strange has been published. The first word should be capitalized.
* **institution** The sponsoring institution of a technical report.
* **journal** The name of a journal or magazine. The name of a journal can be abbreviated using a "string". To define such string, use the [string editor](../setup/stringeditor.md).
* **key** Used for alphabetizing, cross referencing, and creating a label when the \`\`author'' information is missing. This field should not be confused with the key that appears in the `\cite` command and at the beginning of the library entry.
* **month** The month in which the work was published or, for an unpublished work, in which it was written. You should use the standard three-letter abbreviation of the English names (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec).
* **note** Any additional information that can help the reader. The first word should be capitalized.
* **number**

    The number of a journal, magazine, technical report, or of a work in a series. An issue of a journal or magazine is usually identified by its volume and number; the organization that issues a technical report usually gives it a number; and sometimes books are given numbers in a named series.
* **organization** The organization that sponsors a conference or that publishes a manual.
* **pages** One or more page numbers or range of numbers, such as `42--111` or `7,41,73--97` or `43+` (which indicates `page 43 and following pages`). The standard styles convert a single dash (as in `7-33`) to the double dash used in TeX to denote number ranges (as in `7--3`).
* **publisher** The publisher's name.
* **school** The name of the academic institution where a thesis was written.
* **series** The name of a series or set of books. When citing an entire book, the `title` field gives its title and an optional `series` field gives the name of a series or multi-volume set in which the book is published.
* **title** The title of the work. The capitalization may depend on the bibliography style and on the language used. For words that have to be capitalized (such as a proper noun), enclose the word (or its first letter) in braces.
* **type** The type of a technical report - for example, "Research Note".
* **volume** The volume of a journal or multivolume book.
* **year** The year of publication or, for an unpublished work, the year it was written. Generally it should consist of four numerals, such as `1984`, although the standard styles can handle any `year` whose last four nonpunctuation characters are numerals, such as "(about 1984)". This field is required for most entry types.

## BibLaTeX fields

BibLaTeX defines more fields. It gets especially interesting in the context of date handling. See the [BibLaTeX manual](https://ftp.rrzn.uni-hannover.de/pub/mirror/tex-archive/macros/latex/contrib/biblatex/doc/biblatex.pdf) for detais.

* **date** The date of the publication. Can also include date ranges (e.g., `2014-04-07/2014-04-10`).

## Non-standard fields

BibTeX is extremely popular, and many people have used it to store information in non-standard fields. The information in these non-standard fields may be ignored by BibTeX.

Here is a list of some of the more common non-standard fields ("\*" = not directly supported by JabRef):

* **affiliation** The authors affiliation.
* **abstract** An abstract of the work.
* **doi** The Digital Object Identifier, a permanent identifier given to documents.
* **eid** The Electronic identifier is for electronic journals that also appear in print. This number replaces the page number, and is used to find the article within the printed volume. Sometimes also called _citation number_.
* **contents** A table of contents
* **copyright** Copyright information.
* **ISBN** The International Standard Book Number.
* **ISSN** The International Standard Serial Number. Used to identify a journal.
* **keywords** Key words used for searching or possibly for annotation.
* **language** The language the document is in.
* **location** A location associated with the entry, such as the city in which a conference took place.
* **LCCN** The Library of Congress Control Number. I've also seen this as `lib-congress`.
* **mrnumber** The number of Mathematical Reviews.
* **price** The price of the document.
* **size** The physical dimensions of a work.
* **URL** The WWW Uniform Resource Locator that points to the item being referenced.

## JabRef-specific fields

To help in managing your bibliography, and extend the features of BibTeX, JabRef defines some specific fields:

* [External files](externalfiles.md)
* [General fields](../setup/generalfields.md)
* [Owner](entryeditor/owner.md)
* [Quality and grading](../finding-sorting-and-cleaning-entries/specialfields.md)
* [Time stamp](entryeditor/timestamp.md)

## Define your own fields

You can create new fields by [editing (or creating) entry types](../setup/customentrytypes.md).

## Hints on fields

* Generally, you can use LaTeX commands inside of fields containing text. _BibTeX_ will automatically format your reference lists, and those fields that are included in the lists will be (de)capitalized according to your bibliography style. To ensure that certain characters remain capitalized, enclose them in braces, like in the word _{B}elgium_.
* An institution name should be inside `{}` brackets.

    If the institution name also includes its abbreviation, this abbreviation should be also in `{}` brackets.

    For instance, `{The Attributed Graph Grammar System ({AGG})}`.

## Further information resources

* [Tame the BeaST - The B to X of BibTxX](http://mirrors.ctan.org/info/bibtex/tamethebeast/ttb_en.pdf) - long manual explaining the workings of BibTeX, the BibTeX format, and the available entry types with required and optional fields.
* [BibTeX format according to Wikibook](https://en.wikibooks.org/wiki/LaTeX/Bibliography\_Management#BibTeX)
* [BibTeX format according to Wikipedia](https://en.wikipedia.org/wiki/BibTeX#Bibliographic\_information\_file)
* [Reference documentation about BibTeX](https://ctan.org/tex-archive/biblio/bibtex/contrib/doc) --> `btxdoc.pdf`
* [BibTeX tips and FAQ](https://ctan.org/tex-archive/biblio/bibtex/contrib/doc) --> `btxFAQ.pdf`

### BibTeX files

* [https://github.com/lvilnis/BibtexParser/tree/master/inputs](https://github.com/lvilnis/BibtexParser/tree/master/inputs)
* [https://github.com/environmentalinformatics-marburg/jabref](https://github.com/environmentalinformatics-marburg/jabref)
* [https://mirrors.ctan.org/biblio/bibtex/contrib/test/test.bib](https://mirrors.ctan.org/biblio/bibtex/contrib/test/test.bib)

### BibLaTeX files

* [http://mirrors.ctan.org/macros/latex/contrib/biblatex/bibtex/bib/biblatex/biblatex-examples.bib](http://mirrors.ctan.org/macros/latex/contrib/biblatex/bibtex/bib/biblatex/biblatex-examples.bib)
* [http://mirrors.ctan.org/macros/latex/contrib/biblatex/bibtex/bib/biblatex/biblatex-examples.bib](http://mirrors.ctan.org/macros/latex/contrib/biblatex/bibtex/bib/biblatex/biblatex-examples.bib)

### BibTeX and BibLaTeX files in the JabRef repository

* [https://github.com/JabRef/jabref/tree/main/src/test/resources/testbib](https://github.com/JabRef/jabref/tree/main/src/test/resources/testbib)

### Good references for the BibTeX "standard"

* [https://mirrors.ctan.org/biblio/bibtex/contrib/doc/btxdoc.pdf](https://mirrors.ctan.org/biblio/bibtex/contrib/doc/btxdoc.pdf)
* [http://maverick.inria.fr/\~Xavier.Decoret/resources/xdkbibtex/bibtex\_summary.html](http://maverick.inria.fr/\~Xavier.Decoret/resources/xdkbibtex/bibtex\_summary.html)

### BibLaTeX standard

* [http://mirrors.ctan.org/macros/latex/contrib/biblatex/doc/biblatex.pdf](http://mirrors.ctan.org/macros/latex/contrib/biblatex/doc/biblatex.pdf)
* [https://github.com/plk/biblatex](https://github.com/plk/biblatex)

### BibTeX parsers

* [https://github.com/ambs/Text-BibTeX](https://github.com/ambs/Text-BibTeX)
* [https://github.com/lvilnis/BibtexParser](https://github.com/lvilnis/BibtexParser)
* [https://github.com/sciunto-org/python-bibtexparser](https://github.com/sciunto-org/python-bibtexparser)
* [citation.js](https://citation.js.org/)
