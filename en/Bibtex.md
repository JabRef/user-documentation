---
title: About *BibTeX*
helpCategories: ["Fields"]
---

# About *BibTeX*

JabRef helps you work with your *BibTeX* databases, but there are still rules to keep in mind when editing your entries, to ensure that your database is treated properly by the *BibTeX* program.

## Standard *BibTeX* fields

There is a lot of different fields in *BibTeX*, and some additional fields that you can set in JabRef.

The following fields are recognized by the default bibliography styles:

-   **Bibtexkey** A unique string used to refer to the entry in LaTeX documents. Note that when referencing an entry from LaTeX, the key must match case-sensitively with the reference string.
-   **address** Usually the address of the `publisher` or other type of institution. For major publishing houses, you may omit the information entirely or give simply the city. For small publishers, on the other hand, you can help the reader by giving the complete address.
-   **annote** An annotation. It is not used by the standard bibliography styles, but may be used by others that produce an annotated bibliography.
-   **author** This field should contain the complete author list for your entry. The names are separated by the word *and*, even if there are more than two authors. Each name can be written in two equivalent forms:
    Donald E. Knuth *or* Knuth, Donald E.
    Eddie van Halen *or* van Halen, Eddie
    The second form should be used for authors with more than two names, to differentiate between middle names and last names.
-   **booktitle** Title of a book, part of which is being cited. For book entries, use the `title` field instead.
-   **chapter** A chapter (or section or whatever) number.
-   **crossref** The database key of the entry being cross referenced.
-   **edition** The edition of a book--for example, \`\`Second''. This should be an ordinal, and should have the first letter capitalized, as shown here; the standard styles convert to lower case when necessary.
-   **editor** This field is analogue to the *author* field. If there is also an `author` field, then the `editor` field gives the editor of the book or collection in which the reference appears.
-   **howpublished** How something strange has been published. The first word should be capitalized.
-   **institution** The sponsoring institution of a technical report.
-   **journal** The name of a journal or magazine. The name of a journal can be abbreviated using a "string". To define such string, use the [string editor](StringEditorHelp).
-   **key** Used for alphabetizing, cross referencing, and creating a label when the \`\`author'' information is missing. This field should not be confused with the key that appears in the `\cite` command and at the beginning of the database entry.
-   **month** The month in which the work was published or, for an unpublished work, in which it was written. You should use the standard three-letter abbreviation of the English names (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec).
-   **note** Any additional information that can help the reader. The first word should be capitalized.
-   **number**
    The number of a journal, magazine, technical report, or of a work in a series. An issue of a journal or magazine is usually identified by its volume and number; the organization that issues a technical report usually gives it a number; and sometimes books are given numbers in a named series.
-   **organization** The organization that sponsors a conference or that publishes a manual.
-   **pages** One or more page numbers or range of numbers, such as `42--111` or `7,41,73--97` or `43+` (which indicates `page 43 and following pages`). The standard styles convert a single dash (as in `7-33`) to the double dash used in TeX to denote number ranges (as in `7--3`).
-   **publisher** The publisher's name.
-   **school** The name of the academic institution where a thesis was written.
-   **series** The name of a series or set of books. When citing an entire book, the `title` field gives its title and an optional `series` field gives the name of a series or multi-volume set in which the book is published.
-   **title** The title of the work. The capitalization may depend on the bibliography style and on the language used. For words that have to be capitalized (such as a proper noun), enclose the word (or its first letter) in braces.
-   **type** The type of a technical report - for example, "Research Note".
-   **volume** The volume of a journal or multivolume book.
-   **year** The year of publication or, for an unpublished work, the year it was written. Generally it should consist of four numerals, such as `1984`, although the standard styles can handle any `year` whose last four nonpunctuation characters are numerals, such as "(about 1984)". This field is required for most entry types.


## Non-standard fields

BibTeX is extremely popular, and many people have used it to store information in non-standard fields. The information in these non-standard fields may be ignored by BibTeX.

Here is a list of some of the more common non-standard fields ("*" = not directly supported by JabRef):

-   **affiliation*** The authors affiliation.
-   **abstract** An abstract of the work.
-   **doi** The Digital Object Identifier, a permanent identifier given to documents.
-   **eid*** The Electronic identifier is for electronic journals that also appear in print. This number replaces the page number, and is used to find the article within the printed volume. Sometimes also called *citation number*.
-   **contents*** A table of contents
-   **copyright*** Copyright information.
-   **ISBN*** The International Standard Book Number.
-   **ISSN*** The International Standard Serial Number. Used to identify a journal.
-   **keywords** Key words used for searching or possibly for annotation.
-   **language*** The language the document is in.
-   **location*** A location associated with the entry, such as the city in which a conference took place.
-   **LCCN*** The Library of Congress Control Number. I've also seen this as `lib-congress`.
-   **mrnumber*** The number of Mathematical Reviews.
-   **price*** The price of the document.
-   **size*** The physical dimensions of a work.
-   **URL** The WWW Uniform Resource Locator that points to the item being referenced.

## JabRef-specific fields
To help in managing your bibliography, and extend the features of BibTeX, JabRef defines some specific fields:

- [External files](ExternalFiles)
- [General fields](GeneralFields)
- [Owner](OwnerHelp)
- [Quality and grading](SpecialFieldsHelp)
- [Time stamp](TimeStampHelp)

## Define your own fields
You can create new fields by [editing (or creating) entry
types](CustomEntriesHelp).

## Hints on fields

- Generally, you can use LaTeX commands inside of fields containing text. *BibTeX* will automatically format your reference lists, and those fields that are included in the lists will be (de)capitalized according to your bibliography style. To ensure that certain characters remain capitalized, enclose them in braces, like in the word *{B}elgium*.
- An institution name should be inside `{}` brackets.
If the institution name also includes its abbreviation, this abbreviation should be also in `{}` brackets.
For instance, `{The Attributed Graph Grammar System ({AGG})}`.

## Further information resources
- [Reference documentation about BibTeX](http://mirrors.ircam.fr/pub/CTAN/biblio/bibtex/base/btxdoc.pdf)
- [BibTeX tips and FAQ](http://mirror.ibcp.fr/pub/CTAN/biblio/bibtex/contrib/doc/btxFAQ.pdf)
- [Recommended BibTeX Format](http://sandilands.info/sgordon/node/488)
- [BibTeX format according to Wikibook](https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management#BibTeX)
- [BibTeX format according to Wikipedia](https://en.wikipedia.org/wiki/BibTeX#Bibliographic_information_file)
