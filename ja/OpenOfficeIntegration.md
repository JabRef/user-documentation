---
title: OpenOffice.org / LibreOffice の統合
---

# OpenOffice.org / LibreOffice の統合

## はじめに

この機能は、JabRefからOpenOfficeもしくはLibreOfficeのWriter文書に引用を挿入したり、書誌情報を整形したりするための橋渡しを提供します。

本ヘルプ文書内で*OpenOffice*という語が使用されているところでは、常に、これを*LibreOffice*に置き換えて結構です。

## OpenOffice/LibreOffice操作盤の使用法

OpenOfficeと通信するために、JabRefは、まず起動済みのOpenOfficeインスタンスに接続する必要があります。JabRefから接続する前に、OpenOfficeを起動し、文書を開いてください。JabRefは、OpenOffice実行ファイル(Windowsでは**soffice.exe**、他のプラットフォームでは**soffice**)の位置と、OpenOfficeのjarファイルがあるディレクトリを知っておく必要があります。**接続**ボタンを押して接続すると、JabRefは、自動的にこれらの位置を特定しようと試みます。これがうまく動作しない場合には、**手動接続**ボタンを使用しなくてはなりません。この場合、必要な場所を入力するウィンドウが開きます。

接続が確立されたあと、JabRefで一つ以上の項目を選択して、JabRefツールバーのドロップダウンメニューから**OpenOfficeへ送出**ボタンか、サイドペーンのOpenOfficeパネルで適切なボタンを押すことで、引用を挿入することができます。これによって、OpenOffice文書のカーソル現在位置に選択した項目が挿入され、参照文献すべてを含む書誌情報が更新されます。

**《註》**JabRefは、OpenOfficeの組込書誌情報システムは、制約があるために使用しません。JabRefから挿入された引用を含む文書は、一般的に、BibusやZeteroなど他の書誌情報マネージャとは互換性がありません。

引用には、括弧に囲まれた引用「(Author 2007)」と文中での引用「Author (2007)」の二つの型を用いることができます。この区別は、連番引用ではなく、著者-年型の引用が行われる時のみ意味がありますが、この区別はスタイルを変更した時にも維持されます。

OpenOfficeに引用を挿入したあとにJabRefで項目を変更した場合、書誌情報を同期させる必要があります。**OO書誌情報を同期**ボタンを押すと、それらのBibTeX鍵が変更されていない限り(元のJabRef項目がどのBibTeX鍵を保持しているかを追跡するため、JabRefはBibTeX鍵を参照名の中にエンコードします)、書誌情報がすべて更新されます。

## 様式ファイル

引用様式を調整するためには、様式ファイルを選択するか、既定様式のいずれかを用いる必要があります。様式は、引用の書式と書誌情報の書式を定めるものです。標準JabRef書出フォーマッタを使用することによって、項目フィールドはOpenOfficeへの送出前に処理することができます。様式ファイルを用いることによって、引用様式にできる限りの柔軟性を持たせることが意図されています。様式ファイルはいつでも変更することができ、新規様式を反映するために、**更新**ボタンを押して、書誌情報を更新することができます。

**様式の選択**ボタンを押すことによって、既定様式か外部様式ファイルを選択するウィンドウを開くことができます。既定様式に基づいて新しい様式を作成したい場合には、**表示**ボタンを押して既定様式の内容を表示させ、テキストエディタにコピーして修正することができます。

外部様式ファイルを選択するには、二つの方法があります。直接様式ファイルを選択するか、様式ファイルディレクトリを設定するかです。後者の方法では、そのディレクトリ(とサブディレクトリ)の様式一覧を見て、その中から一つを選ぶことになります。

下記は様式ファイルの例です。

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

(各項目型のレイアウトは、スタイルファイル内で一行に収めなくてはなりません。上記では、読みやすさのために、わざと改行が入れてあります。)

### 大域特性

**PROPERTIES**セクションには、書誌情報の大域的な特性を記述します。下表に使用できる特性を挙げます。

|                                |          |                |                                                                                                                                       |
|--------------------------------|----------|----------------|---------------------------------------------------------------------------------------------------------------------------------------|
| **特性**                       | **型**   | **既定値**     | **摘要**                                                                                                                              |
| IsNumberEntries                | ブール値 | `false`        | 使用する引用の型を指定。`true`ならば連番引用が用いられ、`false`ならば著者-年型引用が用いられます。                                    |
| IsSortByPosition               | ブール値 | `false`        | 書誌情報の整序のしかたを指定。`true`ならば、項目は引用された順に整序され、`false`ならば、項目は著者のアルファベット順に整序されます。 |
| ReferenceParagraphFormat       | 文字列   | `Default`      | 書誌情報一覧に用いる段落書式名を与えます。この書式はOpenOffice文書で定義されている必要があります。                                    |
| ReferenceHeaderParagraphFormat | 文字列   | `Heading 1`    | 書誌情報一覧の見出しに用いる段落書式名を与えます。この書式はOpenOffice文書で定義されている必要があります。                            |
| Title                          | 文字列   | `Bibliography` | 書誌情報一覧の見出しに入れる文字列                                                                                                    |

### 引用特性

**CITATION**セクションには、本文中に挿入する引用マーカーの書式を記述します。

下表は、使用できる引用特性すべての簡単な説明です。様式ファイルで特性を指定しない場合、既定値が用いられます。

|                           |          |                 |                                                                                                                                                                                                                                         |
|---------------------------|----------|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **特性**                  | **型**   | **既定値**      | **摘要**                                                                                                                                                                                                                                |
| AuthorField               | 文字列   | `author/editor` | 著者名の入っているBibTeXフィールド。`author/editor`のように帰着フィールドを指定することができます。                                                                                                                                     |
| AuthorLastSeparator       | 文字列   | ` & `           | 最後の二つの著者名の間に入れる文字列                                                                                                                                                                                                    |
| AuthorLastSeparatorInText | 文字列   |                 | 指定すると、`Smith & Jones (2001)`のような本文中での引用時に、この特性で`AuthorLastSeparator`を上書きします。                                                                                                                           |
| AuthorSeparator           | 文字列   | `, `            | 最後の二つ以外の著者名の間に挿入する文字列                                                                                                                                                                                              |
| BracketAfter              | 文字列   | `]`             | 引用の閉じ括弧                                                                                                                                                                                                                          |
| BracketAfterInList        | 文字列   | \]              | 書誌情報一覧中の引用番号の閉じ括弧                                                                                                                                                                                                      |
| BracketBefore             | 文字列   | `[`             | 引用の開き括弧                                                                                                                                                                                                                          |
| BracketBeforeInList       | 文字列   | \[              | 書誌情報一覧中の引用番号の開き括弧                                                                                                                                                                                                      |
| CitationCharacterFormat   | 文字列   | `Default`       | `FormatCitations`が`true`に設定されている時、この特性で指定した名称の文字書式が引用に用いられます。文字書式は、OpenOffice文書で定義されている必要があります。                                                                           |
| CitationSeparator         | 文字列   | `; `            | 引用が複数の項目を含む時(例: `[Smith 2001; Jones 2002]`)、項目の間に挿入する文字列                                                                                                                                                      |
| EtAlString                | 文字列   | ` et al. `      | すべての著者を表示しない時に、著者名のあとに入れる文字列 (例)`[Smith et al. 2001]`                                                                                                                                                      |
| FormatCitations           | ブール値 | `false`         | 引用に整形を行うかどうかを指定します。trueならば、引用に文字書式が適用されます。`CitationCharacterFormat`特性がどの書式を適用すべきかを制御しますが、その文字書式で使うフォント設定や効果は、OpenOfficeで選択可能でなくてはなりません。 |
| GroupedNumbersSeparator   | 文字列   | `-`             | 連番引用をグループ化する際に、番号の間に入れる文字列 (例)`[4-6]`                                                                                                                                                                        |
| InTextYearSeparator       | 文字列   | Single Space    | 本文中引用時に発行年の前の開き括弧と著者名の間に入れる文字列/td&gt;                                                                                                                                                                     |
| ItalicEtAl                | ブール値 | `true`          | trueならば、引用マーカー中の「et al.」文字列はイタリック体になります。                                                                                                                                                                  |
| MaxAuthors                | 整数     | `3`             | 文中既出の引用において表示する著者の最大数                                                                                                                                                                                              |
| MaxAuthorsFirst           | 整数     | `3`             | 最初の引用において表示する著者の最大数                                                                                                                                                                                                  |
| MinimumGroupingCount      | 整数     | `3`             | 引用で番号をグループ化し始める前に最小限列挙する項目数。(例) `[4-6]` 対 `[4; 5; 6]`.                                                                                                                                                    |
| MultiCiteChronological    | ブール値 | `true`          | `true`ならば、同一引用中の複数項目は年代順に並べられ、`false`ならば、アルファベット順に並べられます。                                                                                                                                   |
| PageInfoSeparator         | 文字列   | `; `            | ページ番号などの追加情報付きの引用で、この文字列は、発行年と追加情報の間(著者-発行年引用の場合)や、引用番号と追加情報の間(連番情報の場合)に挿入されます。(例) `[Smith 2001; p. 301]`における`2001`と`p. 301`の間の文字。                |
| UniquefierSeparator       | 文字列   | `, `            | 同じ著者と発行年を持つ引用同士を区別するために使う文字の間に挿入する文字列。(例) `[Smith 2001a, b]`における`a`と`b`の間の文字。                                                                                                         |
| YearField                 | 文字列   | `year`          | 発行年を抽出するBibTeXフィールド。                                                                                                                                                                                                      |
| YearSeparator             | 文字列   | Single Space    | `[Smith 2001]`のような括弧付き引用で著者名と発行年の間に入れる文字。                                                                                                                                                                    |

連番引用を用いる場合には、`BracketBefore`特性と`BracketAfter`特性は、最も重要です。これらは、引用番号を囲む文字に何を使うかを指定します。引用は、
`[BracketBefore][番号][BracketAfter]`
という形で構成され、ここで\[番号\]には、書誌情報の順番と本文中の引用の位置にしたがって定められる引用番号が入ります。一つの引用が複数の項目を参照している場合、`CitationSeparator`特性で指定されている文字列で区切られます(例えば、`CitationSeparator`=;ならば、引用部分は`[2;4;6]`のようになります)。二つ以上の項目が連番になっている場合、番号をグループ化することができます(例えば、2・3・4に対して`[2-4]`、2・5・6・7に対して`[2;5-7]`)。`GroupedNumbersSeparator`特性は、グループ化された連番の最初と最後の数字を区切る文字を指定します(既定値は`-`)。整数値を取る`MinimumGroupingCount` 特性は、項目をグループ化し始める前に列挙しなくてはならない連番の数を指定します(既定値は3)。`MinimumGroupingCount`=3ならば、2・3はグループ化されませんが、2・3・4はグループ化されます。`MinimumGroupingCount`=0ならば、連番の数がいくつあっても、グループ化はされません。

連番項目を使わない場合には、著者-発行年型引用が、引用特性に基づいて生成されます。括弧付き引用は、以下のように構成されます。
`[BracketBefore][著者][YearSeparator][発行年][BracketAfter]`
ここで、\[著者\]は、`AuthorField`特性で指定されたフィールドを参照し、得られた著者リストを整形した結果が入ります。このリストには、最大`MaxAuthors`個までの著者名が入ることができ増す。それ以上の場合のリストは、第一著者に`EtAlString`特性で指定した文字列を加えたものとして構成されます。`MaxAuthorsFirst`特性が指定されている場合には、特定の引用が本文中に初めて現れた場合には、`MaxAuthors`の代わりにこちらが用いられます。

`AuthorField`特性に、スラッシュで区切られた複数のフィールドが与えられている場合、最初のフィールドが、特定のBibTeX項目に関しては空だった場合、他のフィールドが順に参照されます。上述の例では、「author」フィールドが使われますが、それが空ならば「editor」フィールドがバックアップとして用いられます。

著者リスト中の名前は、`AuthorLastSeparator`で与えられた文字列で区切られる最後の二人を除き、`AuthorSeparator`特性で与えられている文字列で区切られます。`AuthorLastSeparatorInText`特性が指定されている時は、本文中型の引用では、こちらの方が用いられます。こうすると、同じ様式に対して、`(Olsen & Jensen, 2008)`と`Olsen and Jensen (2008)`という引用型を得ることができます。

\[発行年\]には、\[YearField\]特性で与えられているフィールドを参照した結果が入ります。

本文中引用は、以下のように構成されます。
`[著者][InTextYearSeparator][BracketBefore][発行年][BracketAfter]`
ここで\[著者\]および\[発行年\]は、括弧内引用と全く同じように解決されます。

二つの別々の引用元の著者と発行年が重なっており、著者-発行年型引用が用いられている場合、これらを区別するためにマーカーに手を加える必要があります。これは、各引用の発行年の後に、最初の引用文献には「a」、二つめの引用文献には「b」のように、文字を付け加えることで自動的に為されます。例えば、著者「Olsen」の2005年の論文を二つ引用している場合、引用マーカーは、`(Olsen, 2005a)`および`(Olsen, 2005b)`のように変更されます。書誌情報レイアウト中で「一意化」文字の位置は、疑似フィールド`uniq`を挿入することで明示的に指示することができます。

「一意化」された項目のいくつかが同時に引用されると、それらは引用マーカーの中でグループ化されます。例えば、上記の例において、二つの項目が同時に引用されたとすると、引用マーカーは、`(Olsen, 2005a; Olsen, 2005b)`とはならずに`(Olsen, 2005a, b)`となります。グループ化された一意化文字(上例ではaやb)は、`UniquefierSeparator`特性で指定された文字列で区切られます。

二つ以上の項目を参照する著者-発行年型引用では、既定値では年代順に整序されます。アルファベット順に整序したい時には、引用特性`MultiCiteChronological`を`false`に設定する必要があります。

### 参考文献一覧の様式

**LAYOUT**セクションには、JabRef中の各項目型の書誌情報項目がどのように表示されるかが記述されています。各行の冒頭は、BibTeX項目型名か`default`で始まり、その後に「=」が来ます。`default`は、明示的にレイアウトが与えられていないすべての項目型に使用されます。

各行の残りの部分は、レイアウトを定義しており、通常のテキストと空白は、書誌情報項目にそのまま出力されます。BibTeX項目からの情報は、`\field`のようにフィールド名を入れたマーカー(例：著者名を入れる時は`\author`)を書き加えることで挿入することができます。ここには、JabRefの標準書出レイアウトの文法を用いて、フィールドの整形情報を含めることができます。使用できる整形子(フォーマッタ)についての情報は、[自作書出フィルタに関するJabRefの説明書](http://jabref.sourceforge.net/help/ja/CustomExports.php)を参照してください。

著者-発行年型引用を用いる場合には、同型になった場合の別の引用を区別するために追記される「一意化」文字の位置を明示的に指定しなくてはなりません。これは、マーカーに疑似フィールド`uniq`を、典型的には(様式ファイルの例に示されているように)発行年の後に加えることで実現できます。`uniq`フィールドは、文献の参照テキストが配置される前に、各項目向けに自動的に正しく設定されます。

書誌情報の整形を指示するためには、ボールド体には&lt;b&gt; &lt;/b&gt;、イタリック体には&lt;i&gt; &lt;/i&gt;、上付文字には&lt;sup&gt; &lt;/sup&gt;、下付文字には&lt;sub&gt; &lt;/sub&gt;と云った風に、HTML型のタグ対を使用することができます。

連番引用を用いる場合には、各項目の番号は、書誌情報一覧中、各項目の冒頭に自動的に挿入されます。既定状態では、番号は引用向けに定義されている括弧と同じもので囲われます。非必須の引用特性`BracketBeforeInList`および`BracketAfterInList`は、指定されると`BracketBefore`および`BracketAfter`よりも優先して用いられます。これは、書誌情報一覧中で異なる形の括弧を用いたい(場合によっては括弧無し)場合に使います。これらは、文字通り括弧である必要はありません。文字の組み合わせを用いることもできます。

## 既知の問題

-   Writer文書は、OpenDocument形式(odt)で保存するようにしてください。Word形式で保存すると、引用マークが損なわれます。
-   脚注にある引用は、現在のところサポートされていません。
-   引用を挿入した後、カーソルは変な位置に飛ぶ可能性があります。
-   このページの様式ファイルの例を直接コピー＆ペーストすると、解析不能なファイルを生成することがあります。これを回避するために、コピー＆ペーストをしないで、ダウンロードセクションのリンクから用例ファイルをダウンロードしてください。

