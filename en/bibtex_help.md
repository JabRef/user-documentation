About *bibtex*
==============

JabRef helps you work with your *bibtex* databases, but there are still rules to keep in mind when editing your entries, to ensure that your database is treated properly by the *bibtex* program.

*Bibtex* fields
---------------

There is a lot of different fields in *bibtex*, and some additional fields that you can set in JabRef.

Generally, you can use LaTeX commands inside of fields containing text. *Bibtex* will automatically format your reference lists, and those fields that are included in the lists will be (de)capitalized according to your bibliography style. To ensure that certain characters remain capitalized, enclose them in braces, like in the word {B}elgium.

Notes about some of the field types:

-   **Bibtexkey** A unique string used to refer to the entry in LaTeX documents. Note that when referencing an entry from LaTeX, the key must match case-sensitively with the reference string.
-   **address
    ** Usually the address of the `publisher` or other type of institution. For major publishing houses, van Leunen recommends omitting the information entirely. For small publishers, on the other hand, you can help the reader by giving the complete address.
-   **annote
    ** An annotation. It is not used by the standard bibliography styles, but may be used by others that produce an annotated bibliography.
-   **author
    ** This field should contain the complete author list for your entry. The names are separated by the word *and*, even if there are more than two authors. Each name can be written in two equivalent forms:
    Donald E. Knuth *or* Knuth, Donald E.
    Eddie van Halen *or* van Halen, Eddie
    The second form should be used for authors with more than two names, to differentiate between middle names and last names.
-   **booktitle
    ** Title of a book, part of which is being cited. For book entries, use the `title` field instead.
-   **chapter
    ** A chapter (or section or whatever) number.
-   **crossref
    ** The database key of the entry being cross referenced.
-   **edition
    ** The edition of a book--for example, \`\`Second''. This should be an ordinal, and should have the first letter capitalized, as shown here; the standard styles convert to lower case when necessary.
-   **editor
    ** This field is analogue to the *author* field. If there is also an `author` field, then the `editor` field gives the editor of the book or collection in which the reference appears.
-   **howpublished
    ** How something strange has been published. The first word should be capitalized.
-   **institution
    ** The sponsoring institution of a technical report.
-   **journal
    ** A journal name. The name of a journal can be abbreviated using a "string". To define such string, use the [string editor](StringEditorHelp.md).
-   **key
    ** Used for alphabetizing, cross referencing, and creating a label when the \`\`author'' information is missing. This field should not be confused with the key that appears in the `\cite` command and at the beginning of the database entry.
-   **month
    ** The month in which the work was published or, for an unpublished work, in which it was written. You should use the standard three-letter abbreviation (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec).
-   **note
    ** Any additional information that can help the reader. The first word should be capitalized.
-   **number**
    The number of a journal, magazine, technical report, or of a work in a series. An issue of a journal or magazine is usually identified by its volume and number; the organization that issues a technical report usually gives it a number; and sometimes books are given numbers in a named series.
-   **organization
    ** The organization that sponsors a conference or that publishes a manual.
-   **pages
    ** One or more page numbers or range of numbers, such as `42-111` or `7,41,73-97` or `43+` (the \``+`' in this last example indicates pages following that don't form a simple range). To make it easier to maintain *Scribe*-compatible databases, the standard styles convert a single dash (as in `7-33`) to the double dash used in TeX to denote number ranges (as in `7-33`).
-   **publisher
    ** The publisher's name.
-   **school
    ** The name of the school where a thesis was written.
-   **series
    ** The name of a series or set of books. When citing an entire book, the `title` field gives its title and an optional `series` field gives the name of a series or multi-volume set in which the book is published.
-   **title
    ** The work's title. The capitalization may depend on the bibliography style and on the language used. For words that have to be capitalized (such as a proper noun), enclose the word (or its first letter) in braces.
-   **type
    ** The type of a technical report--for example, \`\`Research Note''.
-   **volume
    ** The volume of a journal or multivolume book.
-   **year
    ** The year of publication or, for an unpublished work, the year it was written. Generally it should consist of four numerals, such as `1984`, although the standard styles can handle any `year` whose last four nonpunctuation characters are numerals, such as \`(about 1984)'. This field is required for most entry types.

Other fields
------------

BibTeX is extremely popular, and many people have used it to store information. Here is a list of some of the more common fields:

-   **<span style="font-weight: normal; font-style: italic;"> affiliation\*</span>
    ** The authors affiliation.
-   **abstract
    ** An abstract of the work.
-   **doi
    ** The Digital Object Identifier, a permanent identifier given to documents.
-   **eid
    ** The Electronic identifier is for electronic journals that also appear in print. This number replaces the page number, and is used to find the article within the printed volume. Sometimes also called *citation number*.
-   **<span style="font-weight: normal; font-style: italic;"> contents\*</span>
    ** A Table of Contents
-   **<span style="font-weight: normal; font-style: italic;"> copyright\*</span>
    ** Copyright information.
-   **<span style="font-weight: normal; font-style: italic;"> ISBN\*</span>
    ** The International Standard Book Number.
-   **<span style="font-weight: normal; font-style: italic;"> ISSN\*</span>
    ** The International Standard Serial Number. Used to identify a journal.
-   **keywords
    ** Key words used for searching or possibly for annotation.
-   **<span style="font-weight: normal; font-style: italic;"> language\*</span>
    ** The language the document is in.
-   **<span style="font-weight: normal; font-style: italic;"> location\*</span>
    ** A location associated with the entry, such as the city in which a conference took place.
-   **<span style="font-weight: normal; font-style: italic;"> LCCN\*</span>
    ** The Library of Congress Control Number. I've also seen this as `lib-congress`.
-   **<span style="font-weight: normal; font-style: italic;"> mrnumber\*</span>
    ** The *Mathematical Reviews* number.
-   **<span style="font-weight: normal; font-style: italic;"> price\*</span>
    ** The price of the document.
-   **<span style="font-weight: normal; font-style: italic;"> size\*</span>
    ** The physical dimensions of a work.
-   **URL
    ** The WWW Uniform Resource Locator that points to the item being referenced. This often is used for technical reports to point to the ftp site where the postscript source of the report is located.

### JuraBib

-   **urldate
    ** The date of the last page visit.

\*) not direct supported by JabRef

Hints on fields
---------------

An institution name should be inside `{} ` brackets. If the institution name also includes its abbreviation, this abbreviation should be also in `{}` brackets. For instance, `{The Attributed Graph Grammar System ({AGG})}`.

Further information resources
-----------------------------

-   Hints on BibTeX: [Recommended BibTeX Format](http://sandilands.info/sgordon/node/488)

