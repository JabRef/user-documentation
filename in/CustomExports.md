---
title: Penapis ekspor atursendiri
---

# Penapis ekspor atursendiri

Dalam JabRef, anda dapat mengatur sendiri penapis ekspor sesuai dengan kehendak anda sendiri, dengan cara seperti yang digunakan penapis standar lainnya. Penapis ekspor didefinisikan dengan satu atau beberapa *berkas tataletak*, yang dapat disiapkan dengan cara merubah dari rutin pemformat sudah ada. Berkas tataletak anda perlu disiapkan dengan penyunting teks lain di luar JabRef.

## Menambah penapis ekspor atursendiri

Berkas penapis ekspor yang sah harus mempunyai ekstensi **.layout**. Untuk menambahkan penapis ekspor atursendiri baru, **Pengaturan → Pengaturan ekspor atursendiri**, kemudian klik **Tambah baru**. Kotak dialog pengaturan akan muncul. Anda perlu menuliskan nama penapis ekspor (yang akan muncul dalam pilihan ketika anda menggunakan menu **Berkas → Ekspor**), lokasi berkas **.layout**, serta ekstensi berkas untuk penapis ekspor (yang akan disarankan ketika anda menggunakan penapis ekspor atursendiri yang anda buat).

## Membuat penapis ekspor

Untuk melihat contoh bagaimana membuat penapis ekspor, anda perlu mencari berkas tataletak **.layout** untuk penapis ekspor yang ada di situs web muaturun kami.

### Berkas tataletak (.layout)

Sebagai contoh kami menganggap sekarang kita membuat penapis ekspor HTML.

Berkas penapis ekspor hanya mempunyai satu berkas utama **.layout** saja, sehingga untuk contoh ini bisa diberi nama *html.layout*. Disamping itu, anda bisa menambah dua berkas lagi *html.begin.layout* dan *html.end.layout*. Berkas pertama mengatur bagian awal dari keluaran, sedangkan berkas kedua mengatur bagian akhir. JabRef akan mencari dua berkas ini setiap kali penapis ekspor digunakan, dan jika ditemukan, akan menyalin persis ke keluaran sebelum atau sesudah tiap entri dituliskan.

Catatan kedua berkas tambahan harus berada di direktori yang sama dengan direktori dimana berkas *html.layout* berada, dan harus mempunyai nama tambahan **.begin** dan **.end**.

Contoh berkas penapis tambahan tadi dapat berbentuk seperti berikut:

*html.begin.layout*:
`<HTML>      <BODY> text="#275856">     <basefont size="4" color="#2F4958"     face="arial">`

*html.end.layout*:
`</BODY>      </HTML>`

Berkas *html.layout* mengatur templet *bawaan* untuk mengekspor satu entri. Apabila anda ingin menggunakan beberapa templet untuk tipe entri yang berbeda, anda perlu menambahkan berkas entri khusus **.layout**. Berkas tataletak ini harus berada di direktori yang sama dengan berkas tataletak utama, serta diberi nama dengan menyisipkan **.entrytype** dalam berkas tata letak utama. Nama tipe entri harus ditulis dengan huruf kecil semuanya. Pada contoh yang kami berikan, kami akan menambahkan templet untuk entri buku, dan akan disimpan dalam berkas *html.book.layout*. Untuk PhD thesis, akan ditambahkan dalam berkas *html.phdthesis.layout*, dll. Berkas-berkas ini mirip dengan berkas tataletak bawaan, kecuali hanya akan digunakan untuk entri yang mempunyai tipe sama. Catatan, berkas bawaan dapat dengan mudah dibuat umum untuk memenuhi semua tipe entri yang bisa digunakan di hampir semua penapis ekspor.

### Format berkas tataletak

Berkas tataletak dibuat menggunakan format markup sederhana dimana perintah dikenali dengan awalan coret miring (\\). Teks lain yang tidak ada tanda perintah akan disalin secara verbatim ke berkas keluaran.

### Perintah bidang

Merupakan kata bebas yang dimulai dengan coret miring, misal `\author`, `\editor`, `\title` atau `\year`, akan diartikan sebagai acuan ke bidang terkait, yang disalin langsung ke berkas keluaran.

### Pemformat bidang

Seringkali, ada perlunya melakukan pra proses isi bidang sebelum keluaran. Hal ini dilakukan menggunakan *pemformat bidang* - yaitu berupa kelas java yang mempunyai metoda tunggal untuk memipulasi isi dari suatu bidang.

Pemformat digunakan dengan cara menyisipkan perintah `\format` yang diikuti dengan nama pemformat dalam kurung kotak, dan perintah bidang dalam kurung kurawal, misalnya:

`\format[ToLowerCase]{\author}`

Anda juga bisa menggunakan beberapa pemformat yang dipisahkan dengan tanda koma. Pemformat ini akan dipanggil berurutan, dari kiri ke kanan, misalnya

`\format[ToLowerCase,HTMLChars]{\author}`

akan memanggil pemformat **ToLowerCase** terlebih dahulu, kemudian **HTMLChars** untuk memformat hasil. Anda dapat menggunakan beberapa pemformat dengan cara ini.

Argumen untuk pemformat, dalam kurung kurawal, tidak harus dalam bentuk perintah bidang. Anda dapat menyisipkan teks normal, yang akan dibaca oleh pemformat bukan sebagai isi dari bidang manapun. Hal ini sangat berguna untuk bebrapa pemformat, misalnya pemformat CurrentDate (dijelaskan dibawah).

Beberapa pemformat memerlukan argumen ekstra, memerlukan tanda kurung setelah nama pemformat. Argumen boleh menggunakan tanda petik, yang diperlukan jika menggunakan karakter kurung. Misalnya, `\format[Replace("\s,_")]{\journal}` memanggil pemformat **Replace** dengan argumen **\\s,\_** (yang menghasilkan bidang "journal" setelah mengganti semua spasi dengan garis bawah).

Lihat dibawah ini daftar pemformat ekspor yang sudah dibuat.

### Keluaran kondisional

Beberapa keluaran statik hanya mungkin dibuat apabila ditentukan bidang spesifik. Sebagai contoh, kita ingin menulis nama editor yang diikuti dengan teks `(Ed.)`. Hal ini bisa dilakukan dengan cara berikut:

`\format[HTMLChars,AuthorFirstFirst]{\editor}     (Ed.)`

Namun demikian, jika bidang `editor` tidak ditentukan - ketika dilakukan ekspor informasinya akan membingungkan - Kata `(Ed.)` akan berada di sebelah kiri. Hal ini bisa dihindari dengan menggunakan perintah `\begin` dan `\end` :

`\begin{editor}     \format[HTMLChars,AuthorFirstFirst]{\editor} (Ed.)      \end{editor}`

Perintah `\begin` dan `\end` akan memastikan teks yang berada diantaranya dicetak hanya jika bidang dalam tanda kurung kurawal didefinisikan untuk entri yang diekspor.

Blok kondisional bisa tergantung pada lebih dari satu bidang. Pada kasus ini isi dalam blok hanya dicetak jika semua bindangnya didefinisikan terlebih dahulu. Untuk membuat blok, caranya adalah dengan menulis bidang-bidang dengan pemisah titik koma. Sebagai contoh, untuk menulis keluaran `year` dam `month`, gunakan blok seperti dibawah ini:

`\begin{year;month}Month: \format[HTMLChars]{\month}\end{year;month}`

yang akan mencetak "Month: " ditambah denngan bidang `month`, jika bidang `year` didefinisikan.

**Catatan:** Perintah `\begin` dan `\end` adalah perintah umum untuk membuat berkas tataletak yang bisa digunakan untuk berbagai tipe entri.

### Keluaran grup

If you wish to separate your entries into groups based on a certain field, use the grouped output commands. Grouped output is very similar to conditional output, except that the text in between is printed only if the field referred in the curly braces has changed value.

For example, let's assume I wish to group by keyword. Before exporting the file, make sure you have sorted your entries based on keyword. Now use the following commands to group by keyword:

`\begingroup{keywords}New Category:     \format[HTMLChars]{\keywords}      \endgroup{keywords}`

## Sharing your work

With external layout files, it's fairly simple to share custom export formats between users. If you write an export filter for a format not supported by JabRef, or an improvement over an existing one, we encourage you to post your work on our SourceForge.net page. The same goes for formatter classes that you write. We'd be happy to distribute a collection of submitted layout files, or to add to the selection of standard export filters and formatters.

Starting with JabRef 2.4 you can also package your ExportFormat or LayoutFormatter as a plug-in. If you do so, you can provide a single zip-file to other user to make use of your ExportFormat. For an example download the JabRef source release and have a look at the directory `src/resources/plugins/`. Don't hesitate to stop by the forums on Sourceforge, since we don't have extensive documentation, yet.

## Built-in export formatters

JabRef provides the following set of formatters:

-   `Authors` : this formatter provides formatting options for the author and editor fields; for detailed information, see below. It deprecates a range of dedicated formatters provided in versions of JabRef prior to 2.7.
-   `CreateDocBookAuthors` : formats the author field in DocBook style.
-   `CreateDocBookEditors` : to be documented.
-   `CurrentDate` : outputs the current date. With no argument, this formatter outputs the current date and time in the format "yyyy.MM.dd hh:mm:ss z" (date, time and time zone). By giving a different format string as argument, the date format can be customized. E.g. `\format[CurrentDate]{yyyy.MM.dd}` will give the date only, e.g. 2005.11.30.
-   `Default` : takes a single argument, which serves as a default value. If the string to format is non-empty, it is output without changes. If it is empty, the default value is output. For instance, `\format[Default(unknown)]{\year}` will output the entry's year if set, and "unknown" if no year is set.
-   `DOIStrip` : strips any prefixes from the DOI string.
-   `DOICheck` : provides the full url for a DOI link.
-   `FileLink(filetype)` : if no argument is given, this formatter outputs the first external file link encoded in the field. To work, the formatter must be supplied with the contents of the "file" field.

    This formatter takes the name of an external file type as an optional argument, specified in parentheses after the formatter name. For instance, `\format[FileLink(pdf)]{\file}` specifies `pdf` as an argument. When an argument is given, the formatter selects the first file link of the specified type. In the example, the path to the first PDF link will be output.

-   `FirstPage` : returns the first page from the "pages" field, if set. For instance, if the pages field is set to "345-360" or "345--360", this formatter will return "345".
-   `FormatPagesForHTML` : replaces "--" with "-".
-   `FormatPagesForXML` : replaces "--" with an XML en-dash.
-   `GetOpenOfficeType` : returns the number used by the OpenOffice.org bibliography system (versions 1.x and 2.x) to denote the type of this entry.
-   `HTMLChars` : replaces TeX-specific special characters (e.g. {\\^a} or {\\"{o}}) with their HTML representations, and translates LaTeX commands \\emph, \\textit, \\textbf into HTML equivalents.
-   `HTMLParagraphs` : interprets two consecutive newlines (e.g. \\n \\n) as the beginning of a new paragraph and creates paragraph-html-tags accordingly.
-   `IfPlural` : outputs its first argument if the input field looks like an author list with two or more names, or its second argument otherwise. E.g. `\format[IfPlural(Eds.,Ed.)]{\editor}` will output "Eds." if there is more than one editor, and "Ed." if there is only one.
-   `LastPage` : returns the last page from the "pages" field, if set. For instance, if the pages field is set to "345-360" or "345--360", this formatter will return "360".
-   `Number` : outputs the 1-based sequence number of the current entry in the current export. This formatter can be used to make a numbered list of entries. The sequence number depends on the current entry's place in the current sort order, not on the number of calls to this formatter.
-   `RemoveBrackets` : removes all curly brackets "{" or "}".
-   `RemoveBracketsAddComma` : to be documented.
-   `RemoveLatexCommands` : removes LaTeX commands like `\em`, `\textbf`, etc. If used together with `HTMLChars` or `XMLChars`, this formatter should be called last.
-   `RemoveTilde` : replaces the tilde character used in LaTeX as a non-breakable space by a regular space. Useful in combination with the NameFormatter discussed in the next section.
-   `RemoveWhitespace` : removes all whitespace characters.
-   `Replace(regexp,replacewith)` : does a regular expression replacement. To use this formatter, a two-part argument must be given. The parts are separated by a comma. To indicate the comma character, use an escape sequence: \\,
     
    The first part is the regular expression to search for. Remember that any commma character must be preceded by a backslash, and consequently a literal backslash must be written as a pair of backslashes. A description of Java regular expressions can be found at:
     http://java.sun.com/j2se/1.4.2/docs/api/java/util/regex/Pattern
     
    The second part is the text to replace all matches with.
-   `RTFChars` : replaces TeX-specific special characters (e.g. {\\^a} or {\\"{o}}) with their RTF representations, and translates LaTeX commands \\emph, \\textit, \\textbf into RTF equivalents.
-   `ToLowerCase` : turns all characters into lower case.
-   `ToUpperCase` : turns all characters into upper case.
-   `WrapContent` : This formatter outputs the input value after adding a prefix and a postfix, as long as the input value is non-empty. If the input value is empty, an empty string is output (the prefix and postfix are not output in this case). The formatter requires an argument containing the prefix and postix separated by a comma. To include the comma character in either, use an escape sequence (\\,).
-   `WrapFileLinks` : See below.
-   `XMLChars` : replaces TeX-specific special characters (e.g. {\\^a} or {\\"{o}}) with their XML representations.

### The `Authors` formatter

To accommodate for the numerous citation styles, the `Authors` formatter allows flexible control over the layout of the author list. The formatter takes a comma-separated list of options, by which the default values can be overridden. The following option/value pairs are currently available, where the default values are given in curly brackets.

`AuthorSort = [ {FirstFirst} | LastFirst | LastFirstFirstFirst ]`
specifies the order in which the author names are formatted.

-   `FirstFirst` : first names are followed by the surname.
-   `LastFirst` : the authors' surnames are followed by their first names, separated by a comma.
-   `LastFirstFirstFirst` : the first author is formatted as LastFirst, the subsequent authors as FirstFirst.

`AuthorAbbr = [ FullName | LastName | {Initials} | InitialsNoSpace | FirstInitial | MiddleInitial ]`
specifies how the author names are abbreviated.

-   `FullName` : shows full author names; first names are not abbreviated.
-   `LastName` : show only surnames, first names are removed.
-   `Initials` : all first names are abbreviated.
-   `InitialsNospace` : as Initials, with any spaces between initials removed.
-   `FirstInitial` : only first initial is shown.
-   `MiddleInitial` : first name is shown, but all middle names are abbreviated.

`AuthorPunc = [ {FullPunc} | NoPunc | NoComma | NoPeriod ]`
specifies the punctuation used in the author list when `AuthorAbbr` is used

-   `FullPunc` : no changes are made to punctuation.
-   `NoPunc` : all full stops and commas are removed from the author name.
-   `NoComma` : all commas are removed from the author name.
-   `NoPeriod` : all full stops are removed from the author name.

`AuthorSep = [ {Comma} | And | Colon | Semicolon | Sep=<string> ]`
specifies the separator to be used between authors. Any separator can be specified, with the `Sep=<string>` option. Note that appropriate spaces need to be added around `string`.

`AuthorLastSep = [ Comma | {And} | Colon | Semicolon | Amp | Oxford | LastSep=<string> ]`
specifies the last separator in the author list. Any separator can be specified, with the `LastSep=<string>` option. Note that appropriate spaces need to be added around `string`.

`AuthorNumber = [ {inf} | <integer> ]`
specifies the number of authors that are printed. If the number of authors exceeds the maximum specified, the authorlist is replaced by the first author, followed by `EtAlString`.

`EtAlString = [ { et al.} | EtAl=<string> ]`
specifies the string used to replace multiple authors. Any string can be given, using `EtAl=<string>`

If an option is unspecified, the default value (shown in curly brackets above) is used. Therefore, only layout options that differ from the defaults need to be specified. The order in which the options are defined is (mostly) irrelevant. So, for example,

`\format[Authors(Initials,Oxford)]{\author}`

is equivalent to

`\format[Authors(Oxford,Initials)]{\author}`

As mentioned, the order in which the options are specified is irrelevant. There is one possibility for ambiguity, and that is if both `AuthorSep` and `AuthorLastSep` are given. In that case, the first applicable value encountered would be for `AuthorSep`, and the second for `AuthorLastSep`. It is good practise to specify both when changing the default, to avoid ambiguity.

#### Examples

Given the following authors, *"Joe James Doe and Mary Jane and Bruce Bar and Arthur Kay"* ,the `Authors` formatter will give the following results:

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

This formatter can take an optional second argument specifying the name of a file type. If specified, the iteration will only include those files with a file type matching the given name (case-insensitively). If specified as an empty argument, all file links will be included.

After the second argument, pairs of additional arguments can be added in order to specify regular expression replacements to be done upon the inserted link information before insertion into the output string. A non-paired argument will be ignored. In order to specify replacements without filtering on file types, use an empty second argument.

The escape sequences for embedding information are as follows:

-   `\i` : This inserts the iteration index (starting from 1), and can be useful if the output list of files should be enumerated.
-   `\p` : This inserts the file path of the file link.
-   `\f` : This inserts the name of the file link's type.
-   `\x` : This inserts the file's extension, if any.
-   `\d` : This inserts the file link's description, if any.

For instance, an entry could contain a file link to the file "/home/john/report.pdf" of the "PDF" type with description "John's final report". Using the WrapFileLinks formatter with the following argument:

`\format[WrapFileLinks(\i. \d (\p))]{\file}`

would give the following output:

        1. John's final report (/home/john/report.pdf)

If the entry contained a second file link to the file "/home/john/draft.txt" of the "Text file" type with description 'An early "draft"', the output would be as follows:

        1. John's final report (/home/john/report.pdf)
        2. An early "draft" (/home/john/draft.txt)

If the formatter was called with a second argument, the list would be filtered. For instance:

`\format[WrapFileLinks(\i. \d (\p),,text file)]{\file}`

would show only the text file:

        1. An early "draft" (/home/john/draft.txt)

If we wanted this output to be part of an XML styled output, the quotes in the file description could cause problems. Adding two additional arguments to translate the quotes into XML characters solves this:

`\format[WrapFileLinks(\i. \d (\p),,text file,",&quot;)]{\file}`

would give the following output:

        1. An early "draft" (/home/john/draft.txt)

Additional pairs of replacements could be added.

### Custom formatters

If none of the available formatters can do what you want to achieve, you can add your own by implementing the `net.sf.jabref.export.layout.LayoutFormatter` interface. If you insert your class into the `net.sf.jabref.export.layout.format` package, you can call the formatter by its class name only, like with the standard formatters. Otherwise, you must call the formatter by its fully qualified name (including package name). In any case, the formatter must be in your classpath when running JabRef.

## <a href="" id="NameFormatter">Using Custom Name Formatters</a>

From JabRef 2.2, it is possible to define custom name formatters using the bibtex-sty-file syntax. This allows ultimate flexibility, but is a cumbersome to write

You can define your own formatter in the preference tab "Name Formatter" using the following format and then use it with the name given to it as any other formatter

`<case1>@<range11>@<format>@<range12>@<format>@<range13>...@@       <case2>@<range21>@... and so on.`

This format first splits the task to format a list of author into cases depending on how many authors there are (this is since some formats differ depending on how many authors there are). Each individual case is separated by @@ and contains instructions on how to format each author in the case. These instructions are separated by a @.

Cases are identified using integers (1, 2, 3, etc.) or the character \* (matches any number of authors) and will tell the formatter to apply the following instructions if there are a number of less or equal of authors given.

Ranges are either `<integer>..<integer>`, `<integer>` or the character `*` using a 1 based index for indexing authors from the given list of authors. Integer indexes can be negative to denote them to start from the end of the list where -1 is the last author.

For instance with an authorlist of "Joe Doe and Mary Jane and Bruce Bar and Arthur Kay":

-   1..3 will affect Joe, Mary and Bruce
-   4..4 will affect Arthur
-   \* will affect all of them
-   2..-1 will affect Mary, Bruce and Arthur

The `<format>`-strings use the Bibtex formatter format:

The four letters v, f, l, j indicate the name parts von, first, last, jr which are used within curly braces. A single letter v, f, l, j indicates that the name should be abbreviated. If one of these letters or letter pairs is encountered JabRef will output all the respective names (possibly abbreviated), but the whole expression in curly braces is only printed if the name part exists.

For instance if the format is "{ll} {vv {von Part}} {ff}" and the names are "Mary Kay and John von Neumann", then JabRef will output "Kay Mary" (with two space between last and first) and "Neuman von von Part John".

I give two examples but would rather point you to the bibtex documentation.

Small example: `"{ll}, {f.}"` will turn `"Joe Doe"` into `"Doe, J."`

Large example:

> To turn:
>
> `"Joe Doe and Mary Jane and Bruce Bar and Arthur         Kay"`
>
> into
>
> `"Doe, J., Jane, M., Bar, B. and Kay,         A."`
>
> you would use
>
> `1@*@{ll}, {f}.@@2@1@{ll}, {f}.@2@ and {ll},         {f}.@@*@1..-3@{ll}, {f}., @-2@{ll}, {f}.@-1@ and {ll},         {f}.`

If somebody would like to write a better tutorial about this: Write a mail to one of the JabRef mailinglists!
