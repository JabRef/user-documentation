# Custom export filters

JabRef allows you to define and use your own export filters, in the same way as the standard export filters are defined. An export filter is defined by one or more _layout files_, which with the help of a collection of built-in formatter routines specify the format of the exported files. Your layout files must be prepared in a text editor outside of JabRef.

The custom export format of JabRef is an alternative to the [Citation Style Language](http://citationstyles.org/), which is an XML-based format to describe bibliographic rendering.

Existing public files are collected at [https://layouts.jabref.org](https://layouts.jabref.org).

## Adding a custom export filter

The only requirement for a valid export filter is the existence of a file with the extension **.layout**. To add a new custom export filter, open the dialog box **Options → Preferences**, go to the section **Custom export formats**, and click on **Add**. A new dialog box will appear, allowing you to specify a name for the export filter \(which will appear as one of the choices in the File type dropdown menu of the file dialog when you use the **File → Export** menu choice in the JabRef window\), the path to the **.layout** file, and the preferred file extension for the export filter \(which will be the suggested extension in the file dialog when you use the export filter\). Note that if you intend to use the custom export filter also for "Copy...-&gt;Export to Clipboard" in the maintable, the extension must be one of the following: `txt`, `rtf`, `rdf`, `xml`, `html`, `htm`, `csv`, or `ris`.

## Creating the export filter

To see examples of how export filters are made, look for the package containing the layout files for the standard export filters on our download page.

Regarding tool support, there is the [Export-Filter Editor for Jabref](https://github.com/teertinker/Export-Filter-Editor) to quickly create export filters.

### Layout files

Let us assume that we are creating an HTML export filter. While the export filter only needs to consist of a single **.layout** file, which in this case could be called _html.layout_, you may also want to add two files called _html.begin.layout_ and _html.end.layout_. The former contains the header part of the output, and the latter the footer part. JabRef will look for these two files whenever the export filter is used, and if found, either of these will be copied verbatim to the output before or after the individual entries are written.

Note that these files must reside in the same directory as _html.layout_, and must be named by inserting **.begin** and **.end**, respectively. In our example export filter, these could look like the following:

_html.begin.layout_: `<!DOCTYPE html><html> <body style="color:#275856; font-family: Arial, sans-serif;">`

_html.end.layout_: `</body></html>`

The file _html.layout_ provides the _default_ template for exporting one single entry. If you want to use different templates for different entry types, you can do this by adding entry-specific **.layout** files. These must also reside in the same directory as the main layout file, and are named by inserting **.entrytype** into the name of the main layout file. The entry type name must be in all lowercase. In our example, we might want to add a template for book entries, and this would go into the file _html.book.layout_. For a PhD thesis we would add the file _html.phdthesis.layout_, and so on. These files are similar to the default layout file, except that they will only be used for entries of the matching type. Note that the default file can easily be made general enough to cover most entry types in most export filters.

### The layout file format

Layout files are created using a simple markup format where commands are identified by a preceding backslash. All text not identified as part of a command will be copied verbatim to the output file.

### Field commands

An arbitrary word preceded by a backslash, e.g. `\author`, `\editor`, `\title` or `\year`, will be interpreted as a reference to the corresponding field, which will be copied directly to the output.

### Field formatters

Often there will be a need for some preprocessing of the field contents before output. This is done using a _field formatter_ - a java class containing a single method that manipulates the contents of a field.

A formatter is used by inserting the `\format` command followed by the formatter name in square braces, and the field command in curly braces, e.g.:

`\format[ToLowerCase]{\author}`

You can also specify multiple formatters separated by commas. These will be called sequentially, from left to right, e.g.

`\format[ToLowerCase,HTMLChars]{\author}`

will cause the formatter **ToLowerCase** to be called first, and then **HTMLChars** will be called to format the result. You can list an arbitrary number of formatters in this way.

The argument to the formatters, withing the curly braces, does not have to be a field command. Instead, you can insert normal text, which will then be passed to the formatters instead of the contents of any field. This can be useful for some fomatters, e.g. the CurrentDate formatter \(described below\).

Some formatters take an extra argument, given in parentheses immediately after the formatter name. The argument can be enclosed in quotes, which is necessary if it includes the parenthesis characters. For instance, `\format[Replace("\s,_")]{\journal}` calls the **Replace** formatter with the argument **\s,\_** \(which results in the "journal" field after replacing all whitespace by underscores\).

See below for a list of built-in export formatters.

### Conditional output

Some static output might only make sense if a specific field is set. For instance, say we want to follow the editor names with the text `(Ed.)`. This can be done with the following text:

`\format[HTMLChars,AuthorFirstFirst]{\editor} (Ed.)`

However, if the `editor` field has not been set - it might not even make sense for the entry being exported - the `(Ed.)` would be left hanging. This can be prevented by instead using the `\begin` and `\end` commands:

`\begin{editor} \format[HTMLChars,AuthorFirstFirst]{\editor} (Ed.) \end{editor}`

The `\begin` and `\end` commands make sure the text in between is printed if and only if the field referred in the curly braces is defined for the entry being exported.

A conditional block can also be dependent on more than one field, and the content is only printed when simple boolean conditions are satisfied. Three boolean operators are provided:

* AND operator : `&`, `&&`
* OR operator : `|`, `||`
* NOT operator : `!`

For example, to output text only if both `year` and `month` are set, use a block like the following: `\begin{year&&month}Month: \format[HTMLChars]{\month}\end{year&&month}`  
which will print "Month: " plus the contents of the `month` field, but only if also the `year` field is defined.

As an example for the usage of the NOT operator, consider the following:  
`\begin{!year}\format[HTMLChars]{(no year)}\end{!year}`  
Here, "no year" is printed as output text if no year field is defined.

**Note:** Use of the `\begin` and `\end` commands is a key to creating layout files that work well with a variety of entry types.

### Grouped output

If you wish to separate your entries into groups based on a certain field, use the grouped output commands. Grouped output is very similar to conditional output, except that the text in between is printed only if the field referred in the curly braces has changed value.

For example, let's assume I wish to group by keyword. Before exporting the file, make sure you have sorted your entries based on keyword. Now use the following commands to group by keyword:

`\begingroup{keywords}New Category: \format[HTMLChars]{\keywords} \endgroup{keywords}`

## Built-in export formatters

JabRef provides the following set of formatters:

* `Authors` : this formatter provides formatting options for the author and editor fields; for detailed information, see below. It deprecates a range of dedicated formatters provided in versions of JabRef prior to 2.7.
* `CreateBibORDFAuthors` : formats authors for according to the requirements of the Bibliographic Ontology \(bibo\).
* `CreateDocBookAuthors` : formats the author field in DocBook style.
* `CreateDocBookEditors` : formats the editor field in DocBook style.
* `CurrentDate` : outputs the current date. With no argument, this formatter outputs the current date and time in the format "yyyy.MM.dd hh:mm:ss z" \(date, time and time zone\). By giving a different format string as argument, the date format can be customized. For example `\format[CurrentDate]{yyyy.MM.dd}` will give the date only, e.g. 2005.11.30.
* `DateFormatter` : formats a date. With no argument, the date is given in ISO-format \(yyyy-MM-dd\), which is also the expected format of the input. The argument may contain `yyyy`, `MM`, and `dd` in any combination. For example `\format[DateFormatter(MM/yyyy)]{\date}` will output 07/2016 if the date field contains 2016-07-15.
* `Default` : takes a single argument, which serves as a default value. If the string to format is non-empty, it is output without changes. If it is empty, the default value is output. For instance, `\format[Default(unknown)]{\year}` will output the entry's year if set, and "unknown" if no year is set.
* `DOIStrip` : strips any prefixes from the DOI string.
* `DOICheck` : provides the full url for a DOI link.
* `EntryTypeFormatter` : camel case of entry types, so "inbook" -&gt; "InBook".
* `FileLink(filetype)` : if no argument is given, this formatter outputs the first external file link encoded in the field. To work, the formatter must be supplied with the contents of the "file" field.

  This formatter takes the name of an external file type as an optional argument, specified in parentheses after the formatter name. For instance, `\format[FileLink(pdf)]{\file}` specifies `pdf` as an argument. When an argument is given, the formatter selects the first file link of the specified type. In the example, the path to the first PDF link will be output.

* `FirstPage` : returns the first page from the "pages" field, if set. For instance, if the pages field is set to "345-360" or "345--360", this formatter will return "345".
* `FormatChars` : This formatter converts LaTeX character sequences their equicalent unicode characters and removes other LaTeX commands without handling them.
* `FormatPagesForHTML` : replaces "--" with "-".
* `FormatPagesForXML` : replaces "--" with an XML en-dash.
* `GetOpenOfficeType` : returns the number used by the OpenOffice.org bibliography system \(versions 1.x and 2.x\) to denote the type of this entry.
* `HTMLChars` : replaces TeX-specific special characters \(e.g. `{\"{a}}` or `{\sigma})` with their HTML representations, and translates LaTeX commands `\emph`, `\textit`, `\textbf`, `\texttt`, `\underline`, `\textsuperscript`, `\textsubscript`, `\sout` into HTML equivalents.
* `HTMLParagraphs` : interprets two consecutive newlines \(e.g. \n \n\) as the beginning of a new paragraph and creates paragraph-html-tags accordingly.
* `IfPlural` : outputs its first argument if the input field looks like an author list with two or more names, or its second argument otherwise. E.g. `\format[IfPlural(Eds.,Ed.)]{\editor}` will output "Eds." if there is more than one editor, and "Ed." if there is only one.
* `JournalAbbreviator` : The given input text is abbreviated according to the journal abbreviation lists. If no abbreviation for input is found \(e.g. not in list or already abbreviated\), the input will be returned unmodified. For instance, when using `\format[JournalAbbreviator]{\journal}`, "Physical Review Letters" gets "Phys. Rev. Lett."
* `LastPage` : returns the last page from the "pages" field, if set. For instance, if the pages field is set to "345-360" or "345--360", this formatter will return "360".
* `NoSpaceBetweenAbbreviations` : LayoutFormatter that removes the space between abbreviated First names. Example: J. R. R. Tolkien becomes J.R.R. Tolkien.
* `NotFoundFormatter` : Formatter used to signal that a formatter hasn't been found. This can be used for graceful degradation if a layout uses an undefined format.
* `Number` : outputs the 1-based sequence number of the current entry in the current export. This formatter can be used to make a numbered list of entries. The sequence number depends on the current entry's place in the current sort order, not on the number of calls to this formatter.
* `Ordinal` : replaces numbers with ordinals so `1` is replaced with `1st` etc.
* `RemoveBrackets` : removes all curly brackets "{" or "}".
* `RemoveBracketsAddComma` : removes all curly brackets "{" or "}". The closing curly bracket is replaced by a comma.
* `RemoveLatexCommands` : removes LaTeX commands like `\em`, `\textbf`, etc. If used together with `HTMLChars` or `XMLChars`, this formatter should be called last.
* `RemoveTilde` : replaces the tilde character used in LaTeX as a non-breakable space by a regular space. Useful in combination with the [NameFormatter](customexports.md#NameFormatter) discussed in the next section.
* `RemoveWhitespace` : removes all whitespace characters.
* `Replace(regexp,replacewith)` : does a regular expression replacement. To use this formatter, a two-part argument must be given. The parts are separated by a comma. To indicate the comma character, use an escape sequence: \,

  The first part is the regular expression to search for. Remember that any commma character must be preceded by a backslash, and consequently a literal backslash must be written as a pair of backslashes. A description of Java regular expressions can be found at [vogella's repository](https://www.vogella.com/tutorials/JavaRegularExpressions/article.html#rules-of-writing-regular-expressions).

  The second part is the text to replace all matches with.

* `RisAuthors` : to be documented.
* `RisKeywords` : to be documented.
* `RisMonth` : to be documented.
* `RTFChars` : replaces TeX-specific special characters \(e.g. {\^a} or {\"{o}}\) with their RTF representations, and translates LaTeX commands \emph, \textit, \textbf into RTF equivalents.
* `ShortMonth` : formats the month field to use 3 letter BibTeX strings \(`jan`, `feb`, `mar`, `apr`, ...\).
* `ToLowerCase` : turns all characters into lower case.
* `ToUpperCase` : turns all characters into upper case.
* `WrapContent` : This formatter outputs the input value after adding a prefix and a postfix, as long as the input value is non-empty. If the input value is empty, an empty string is output \(the prefix and postfix are not output in this case\). The formatter requires an argument containing the prefix and postix separated by a comma. To include the comma character in either, use an escape sequence \(\,\).
* `WrapFileLinks` : See below.
* `XMLChars` : replaces TeX-specific special characters \(e.g. {\^a} or {\"{o}}\) with their XML representations.

### The `Authors` formatter

To accommodate for the numerous citation styles, the `Authors` formatter allows flexible control over the layout of the author list. The formatter takes a comma-separated list of options, by which the default values can be overridden. The following option/value pairs are currently available, where the default values are given in curly brackets.

`AuthorSort = [ {FirstFirst} | LastFirst | LastFirstFirstFirst ]`  
specifies the order in which the author names are formatted.

* `FirstFirst` : first names are followed by the surname.
* `LastFirst` : the authors' surnames are followed by their first names, separated by a comma.
* `LastFirstFirstFirst` : the first author is formatted as LastFirst, the subsequent authors as FirstFirst.

`AuthorAbbr = [ FullName | LastName | {Initials} | InitialsNoSpace | FirstInitial | MiddleInitial ]`  
specifies how the author names are abbreviated.

* `FullName` : shows full author names; first names are not abbreviated.
* `LastName` : show only surnames, first names are removed.
* `Initials` : all first names are abbreviated.
* `InitialsNospace` : as Initials, with any spaces between initials removed.
* `FirstInitial` : only first initial is shown.
* `MiddleInitial` : first name is shown, but all middle names are abbreviated.

`AuthorPunc = [ {FullPunc} | NoPunc | NoComma | NoPeriod ]`  
specifies the punctuation used in the author list when `AuthorAbbr` is used

* `FullPunc` : no changes are made to punctuation.
* `NoPunc` : all full stops and commas are removed from the author name.
* `NoComma` : all commas are removed from the author name.
* `NoPeriod` : all full stops are removed from the author name.

`AuthorSep = [ {Comma} | And | Colon | Semicolon | Sep=<string> ]`  
specifies the separator to be used between authors. Any separator can be specified, with the `Sep=<string>` option. Note that appropriate spaces need to be added around `string`.

`AuthorLastSep = [ Comma | {And} | Colon | Semicolon | Amp | Oxford | LastSep=<string> ]`  
specifies the last separator in the author list. Any separator can be specified, with the `LastSep=<string>` option. Note that appropriate spaces need to be added around `string`.

`AuthorNumber = [ {inf} | <integer> ]`  
specifies the number of authors that are printed. If the number of authors exceeds the maximum specified, the authorlist is replaced by the first author \(or any number specified by `AuthorNumberEtAl`\), followed by `EtAlString`.

`AuthorNumberEtAl = [ {1} | <integer> ]`  
specifies the number of authors that are printed if the total number of authors exceeds `AuthorNumber`. This argument can only be given after `AuthorNumber` has already been given.

`EtAlString = [ { et al.} | EtAl=<string> ]`  
specifies the string used to replace multiple authors. Any string can be given, using `EtAl=<string>`

If an option is unspecified, the default value \(shown in curly brackets above\) is used. Therefore, only layout options that differ from the defaults need to be specified. The order in which the options are defined is \(mostly\) irrelevant. So, for example,

`\format[Authors(Initials,Oxford)]{\author}`

is equivalent to

`\format[Authors(Oxford,Initials)]{\author}`

As mentioned, the order in which the options are specified is irrelevant. There is one possibility for ambiguity, and that is if both `AuthorSep` and `AuthorLastSep` are given. In that case, the first applicable value encountered would be for `AuthorSep`, and the second for `AuthorLastSep`. It is good practise to specify both when changing the default, to avoid ambiguity.

#### Examples

Given the following authors, _"Joe James Doe and Mary Jane and Bruce Bar and Arthur Kay"_ ,the `Authors` formatter will give the following results:

`Authors()`, or equivalently, `Authors(FirstFirst,Initials,FullPunc,Comma,And,inf,EtAl= et al.)`  
J. J. Doe, M. Jane, B. Bar and A. Kay

`Authors(LastFirstFirstFirst,MiddleInitial,Semicolon)`  
Doe, Joe J.; Mary Jane; Bruce Bar and Arthur Kay

`Authors(LastFirst,InitialsNoSpace,NoPunc,Oxford)`  
Doe JJ, Jane M, Bar B, and Kay A

`Authors(2,EtAl= and others)`  
J. J. Doe and others

Most commonly available citation formats should be possible with this formatter. For even more advanced options, consider using the Custom Formatters detailed below.

### The `WrapFileLinks` formatter

This formatter iterates over all file links, or all file links of a specified type, outputting a format string given as the first argument. The format string can contain a number of escape sequences indicating file link information to be inserted into the string.

This formatter can take an optional second argument specifying the name of a file type. If specified, the iteration will only include those files with a file type matching the given name \(case-insensitively\). If specified as an empty argument, all file links will be included.

After the second argument, pairs of additional arguments can be added in order to specify regular expression replacements to be done upon the inserted link information before insertion into the output string. A non-paired argument will be ignored. In order to specify replacements without filtering on file types, use an empty second argument.

The escape sequences for embedding information are as follows:

* `\i` : This inserts the iteration index \(starting from 1\), and can be useful if the output list of files should be enumerated.
* `\p` : This inserts the file path of the file link.
* `\f` : This inserts the name of the file link's type.
* `\x` : This inserts the file's extension, if any.
* `\d` : This inserts the file link's description, if any.

For instance, an entry could contain a file link to the file "/home/john/report.pdf" of the "PDF" type with description "John's final report". Using the WrapFileLinks formatter with the following argument:

`\format[WrapFileLinks(\i. \d (\p))]{\file}`

would give the following output:

1. John's final report \(/home/john/report.pdf\)

If the entry contained a second file link to the file "/home/john/draft.txt" of the "Text file" type with description 'An early "draft"', the output would be as follows:

1. John's final report \(/home/john/report.pdf\)
2. An early "draft" \(/home/john/draft.txt\)

If the formatter was called with a second argument, the list would be filtered. For instance:

`\format[WrapFileLinks(\i. \d (\p),,text file)]{\file}`

would show only the text file:

1. An early "draft" \(/home/john/draft.txt\)

If we wanted this output to be part of an XML styled output, the quotes in the file description could cause problems. Adding two additional arguments to translate the quotes into XML characters solves this:

`\format[WrapFileLinks(\i. \d (\p),,text file,",&quot;)]{\file}`

would give the following output:

1. An early "draft" \(/home/john/draft.txt\)

Additional pairs of replacements could be added.

### Custom formatters

If none of the available formatters can do what you want to achieve, you can add your own by implementing the `net.sf.jabref.export.layout.LayoutFormatter` interface. If you insert your class into the `net.sf.jabref.export.layout.format` package, you can call the formatter by its class name only, like with the standard formatters. Otherwise, you must call the formatter by its fully qualified name \(including package name\). In any case, the formatter must be in your classpath when running JabRef.

## Using Custom Name Formatters

From JabRef 2.2, it is possible to define custom name formatters using the BibTeX-sty-file syntax. This allows ultimate flexibility, but is a cumbersome to write

You can define your own formatter in the preference tab "Name Formatter" using the following format and then use it with the name given to it as any other formatter

`<case1>@<range11>@<format>@<range12>@<format>@<range13>...@@ <case2>@<range21>@... and so on.`

This format first splits the task to format a list of author into cases depending on how many authors there are \(this is since some formats differ depending on how many authors there are\). Each individual case is separated by @@ and contains instructions on how to format each author in the case. These instructions are separated by a @.

Cases are identified using integers \(1, 2, 3, etc.\) or the character \* \(matches any number of authors\) and will tell the formatter to apply the following instructions if there are a number of less or equal of authors given.

Ranges are either `<integer>..<integer>`, `<integer>` or the character `*` using a 1 based index for indexing authors from the given list of authors. Integer indexes can be negative to denote them to start from the end of the list where -1 is the last author.

For instance with an authorlist of "Joe Doe and Mary Jane and Bruce Bar and Arthur Kay":

* 1..3 will affect Joe, Mary and Bruce
* 4..4 will affect Arthur
* \* will affect all of them
* 2..-1 will affect Mary, Bruce and Arthur

The `<format>`-strings use the BibTeX formatter format:

The four letters v, f, l, j indicate the name parts von, first, last, jr which are used within curly braces. A single letter v, f, l, j indicates that the name should be abbreviated. If one of these letters or letter pairs is encountered JabRef will output all the respective names \(possibly abbreviated\), but the whole expression in curly braces is only printed if the name part exists.

For instance if the format is "{ll} {vv {von Part}} {ff}" and the names are "Mary Kay and John von Neumann", then JabRef will output "Kay Mary" \(with two space between last and first\) and "Neuman von von Part John".

I give two examples but would rather point you to the BibTeX documentation.

Small example: `"{ll}, {f.}"` will turn `"Joe Doe"` into `"Doe, J."`

Large example:

> To turn:
>
> `"Joe Doe and Mary Jane and Bruce Bar and Arthur Kay"`
>
> into
>
> `"Doe, J., Jane, M., Bar, B. and Kay, A."`
>
> you would use
>
> `1@*@{ll}, {f}.@@2@1@{ll}, {f}.@2@ and {ll}, {f}.@@*@1..-3@{ll}, {f}., @-2@{ll}, {f}.@-1@ and {ll}, {f}.`

