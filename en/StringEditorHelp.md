---
title: The string editor
---

# The string editor

[Strings](StringsHelp) can be edided by **BibTeX -&gt; Edit strings** or pressing a button in the toolbar.

*Strings* are the *BibTeX* equivalent to constants in a programming language. Each string is defined with a unique *name* and a *content*. Elsewhere in the database, the name can be used to represent the content.

For instance, if many entries are from a journal with an abbreviation that may be hard to remember, such as 'J. Theor. Biol.' (Journal of Theoretical Biology), a string named JTB could be defined to represent the journal's name. Instead of repeating the exact journal name in each entry, the characters '\#JTB\#' (without quotes) are put into the *journal* field of each, ensuring the journal name is written identically each time.

A string reference can appear anywhere in a field, always by enclosing the string's name in a pair of '\#' characters. This syntax is specific for JabRef, and differs slightly from the *BibTeX* notation that is produced when you save your database. Strings can by default be used for all standard BibTeX fields, and in **Preferences -&gt; General -&gt; File** you can opt to enable strings for non-standard fields as well. In the latter case you can specify a set of fields that are excepted from string resolving, and here it is recommended to include the 'url' field and other fields that may need to contain the '\#' character and that may be processed by BibTeX/LaTeX.

A string may in the same way be referred in the content of another string, provided the referred string is defined *before* the referring one.

While the order of strings in your BibTeX file is important in some cases, you do not have to worry about this when using JabRef. The strings will be displayed in alphabetical order in the string editor, and stored in the same order, except when a different ordering is required by BibTeX.

For a complete description of string syntax, see the [dedicated help](StringsHelp).
