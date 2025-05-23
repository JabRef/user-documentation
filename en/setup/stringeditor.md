# The string editor

In JabRef you write the contents of all fields the same way as you would in a text editor, with one exception: to reference a string, enclose the name of the string in a set of \# characters, e.g.: '\#jan\# 1997', which will be interpreted as the string named `jan` followed by `1997`.

[Strings](../advanced/strings.md) can be edited in the library properties, reachable through **Library → Library Properties ->  String constants**

_Strings_ are the _BibTeX_ equivalent to constants in a programming language. Each string is defined with a unique _name_ and a _content_. Elsewhere in the database, the name can be used to represent the content.

For instance, if many entries are from a journal with an abbreviation that may be hard to remember, such as 'J. Theor. Biol.' \(Journal of Theoretical Biology\), a string named JTB could be defined to represent the journal's name. Instead of repeating the exact journal name in each entry, the characters '\#JTB\#' \(without quotes\) are put into the _journal_ field of each, ensuring the journal name is written identically each time.

A string reference can appear anywhere in a field, always by enclosing the string's name in a pair of '\#' characters. This syntax is specific for JabRef, and differs slightly from the _BibTeX_ notation that is produced when you save your library. Strings can only be used for the fields defined under **File → Preferences → Entry**. You can add any other fields for which you may enable BibTeX string support. Here, you cannot use the '\#' character for processing by BibTeX/LaTeX any more.

A string may in the same way be referred in the content of another string, provided the referred string is defined _before_ the referring one.

While the order of strings in your BibTeX file is important in some cases, you do not have to worry about this when using JabRef. The strings will be displayed in alphabetical order in the string editor, and stored in the same order, except when a different ordering is required by BibTeX.

For a complete description of string syntax, see the [dedicated help](../advanced/strings.md).

