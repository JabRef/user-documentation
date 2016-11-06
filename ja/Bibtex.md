---
title: "*BibTeX* について"
---

# *BibTeX* について

JabRefは，あなたが *BibTeX* データベースの作業をする手助けをしますが，それでも依然として，お使いのデータベースが，正しく確実に *BibTeX* プログラムによって取り扱われるようにするためには，項目編集にあたって頭においておかなくてはならない規則があります．

## 標準 *BibTeX* フィールド

*BibTeX* には多くのフィールドがあるほか，JabRef特有のフィールドもあります．

既定の文献様式は，下記の各フィールドを認識します．

-   **Bibtexkey** LaTeX文書中で，この項目を参照するために使われる固有文字列．LaTeXから項目を参照する際，鍵(キー)は大文字小文字の区別を含め，参照文字列と一致していなくてはならないことに注意してください．
-   **address** 通常は，`publisher`あるいは他の型の団体の住所を示します．van Leunenによれば，主要な出版社に関しては，この情報を空欄にしておくことが推奨されます．一方，小さな出版社については，完全なアドレスを提供することによって読者を助けることができるでしょう．
-   **annote** 注釈．標準の文献目録様式では使用されませんが，注釈付きの文献目録を出力する一部の様式では使用されることがあります．
-   **author** このフィールドは，当該項目の著者全員のリストを入れます．氏名は，3名以上の著者がいる場合でも *and* という単語で区切ります．それぞれの氏名は，以下の二つの書き方で書くことができます．
    Donald E. Knuth *または* Knuth, Donald E.
    Eddie van Halen *または* van Halen, Eddie
    2つ以上の名前からなる著者には，ミドルネームや姓と区別するために，後者の形を使用しなくてはなりません．
-   **booktitle** 内容の一部が引用されている場合の書籍のタイトル．book項目の場合には，これではなく`title`フィールドを使用してください．
-   **chapter** 章 (または節などの)番号
-   **crossref** 相互参照している項目のデータベースキー．
-   **edition** 書籍の版--例えば「Second」．これは，ここに示されているように第1文字を大文字にした序数でなくてはなりません．標準的な様式では，必要に応じて小文字に変換されます．
-   **editor** このフィールドは *author* フィールドに類似のものです．`author`フィールドもある場合，`editor`フィールドは，参照文献の現れる書籍やコレクションの編集者を示します．
-   **howpublished** 変わった経緯を持つ文献がどのように出版されたかを示します．最初の文字は大文字にしなくてはなりません．
-   **institution** テクニカルレポートを提供している団体．
-   **journal** 学術誌名．学術誌名は，「文字列」を使用して短縮することができます．この文字列を定義するには，[文字列エディタ](StringEditorHelp)を使用してください．
-   **key** 「author」情報が欠けているときに，アルファベット順の整序や相互参照，ラベルの作成に使用されます．このフィールドを，`\cite`コマンドに現れる鍵(キー)やデータベース項目の最初に現れる鍵と混同しないようにしてください．
-   **month** 著作が発行された月，または未刊行著作の場合にはそれが書かれた月．標準的な3文字短縮形を使用してください (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec)．
-   **note** 読者の助けとなる任意の追加情報．最初の文字は大文字にしてください．
-   **number**
    学術誌・雑誌・テクニカルレポートまたはシリーズ中の著作の号．学術誌や雑誌刊行物は，通常，巻と号とで識別されます．テクニカルレポートを発行する団体は，通常，号を付与します．また，シリーズものの書籍にも号が振られることがあります．
-   **organization** コンファレンスの主催団体やマニュアルの発行元団体．
-   **pages** `42--111`や`7,41,73--97`や`43+`（`43ページ以降`の意）のように表記される，ページ数あるいはページ数の範囲．標準的な様式は，単一のダッシュ(例: `7-33`)を，TeX中でのページ範囲の表記のように複数ダッシュ(例: `7--33`)に変換します．
-   **publisher** 出版社名．
-   **school** 論文の執筆された学校名．
-   **series** シリーズまたは全集の名称．書籍全体を引用する際には，`title`フィールドがそのタイトルを与え，非必須フィールドの`series`が，その本が刊行されたシリーズ名ないし複数巻書籍の名称を与えます．
-   **title** 著作のタイトル．大文字化は，文献目録様式と使用される言語とに依存します．大文字にしなくてはならない単語(固有名詞など)については，その単語(ないし最初の文字)を波括弧で囲んでください．
-   **type** テクニカルレポートの型．例えば「Research Note」．
-   **volume** 学術誌ないし複数巻書籍の巻．
-   **year** 発行年，あるいは未発行の著作に関しては執筆年．一般には，`1984`のような4桁数字を含んでいなくてはなりません．しかしながら，標準的な様式は，「(about 1984)」のように最後の非句読点文字4つが数字であるものならば，どのような`year`も取扱可能です．このフィールドは，ほとんどの項目型で必須です．

## 非標準フィールド

BibTeXは非常にポピュラーであり，多くの人々が情報を保管するために，その非標準フィールドを使用してきました．これらの非標準フィールド内の情報は，BibTeXには無視されることがあります．

以下は，よく使われる非標準フィールドの一部を挙げたものです（「*」＝JabRefは直接サポートせず）．

-   **affiliation*** 著者の所属
-   **abstract** 著作の要約
-   **doi** デジタルオブジェクト識別子 (Digital Object Identifier)．文書に振られた恒久的識別子．
-   **eid*** 電子識別子 (electronic identifier) は，印刷もされている電子ジャーナルのためのものです．この番号はページ数の代わりであり，印刷された刊行物で論文を見つけるのに用いられます．これは，*citation number* とも呼ばれています．
-   **contents*** 目次
-   **copyright*** 著作権情報
-   **ISBN*** 国際標準図書番号 (International Standard Book Number)
-   **ISSN*** 国際標準逐次刊行物番号 (International Standard Serial Number)．学術誌を特定するのに使用されます．
-   **keywords** 検索やときに注釈に使われるキーワード
-   **language*** 文書で使用されている言語
-   **location*** コンファレンスの開催された都市など，項目に関連した場所．
-   **LCCN*** 米国議会図書館管理番号 (Library of Congress Control Number)．`lib-congress`と表記することもあるようです．
-   **mrnumber*** Mathematical Reviews番号
-   **price*** 文書の価格
-   **size*** 著作物の物理的な寸法
-   **URL** 参照されている項目を指すWWWユニフォームリソースロケータ．

## JabRef特有のフィールド
あなたの文献を管理する手助けとし，BibTeXの機能を拡張するために，JabRefは以下のフィールドを定義しています．

- [External files](ExternalFiles)
- [General fields](GeneralFields)
- [Owner](OwnerHelp)
- [Quality and grading](SpecialFieldsHelp)
- [Time stamp](TimeStampHelp)

## 自分のフィールドを定義する
[項目型を編集](CustomEntriesHelp)することによって，新しいフィールドを作ることができます．

## フィールドに関するヒント

- 一般的に，文字列を置けるフィールドの中では，LaTeXコマンドを使うことができます．*BibTeX* は，自動的にあなたの文献一覧を整形し，一覧中に含まれるフィールドは，使用する文献様式にしたがって，大文字化あるいは小文字化されます．ある文字をつねに大文字のままに残したい場合には，*{B}elgium* のように波括弧で囲んでください．
- 組織名は，`{}`括弧の中に置きます．組織名に省略表記がある場合，その省略表記も`{}`括弧の中に置きます．例：`{The Attributed Graph Grammar System ({AGG})}`.

## 他の情報リソース
- [Reference documentation about BibTeX](http://mirrors.ircam.fr/pub/CTAN/biblio/bibtex/base/btxdoc.pdf)
- [BibTeX tips and FAQ](http://mirror.ibcp.fr/pub/CTAN/biblio/bibtex/contrib/doc/btxFAQ.pdf)
- [Recommended BibTeX Format](http://sandilands.info/sgordon/node/488)
- [BibTeX format according to Wikibook](https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management#BibTeX)
- [BibTeX format according to Wikipedia](https://en.wikipedia.org/wiki/BibTeX#Bibliographic_information_file)
