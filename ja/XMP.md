---
title: JabRefにおけるXMPメタデータ サポート
---

# JabRefにおけるXMPメタデータ サポート

XMPは、ファイル中にメタデータ(データに関するデータ)を収録するために、Adobe Systemsによって作られた標準です。メタデータのよく知られた例としてはMP3タグがありますが、これはMP3ファイルのアーティストやアルバム、歌の名前を記述するのに用いられます。MP3にメタデータを書き加えると、他の人が、ファイル名とは独立に正しく楽曲を特定する助けとなる他、(MP3プレイヤーのような)ソフトウェアが、楽曲を整序したりグループ化したりするための手段を提供することになります。

XMPサポートによって、JabRef開発チームは、メタデータの利点を書誌情報管理の世界に持ち込もうとしました。JabRefタブ中の「XMPメタデータとして書き込む」ボタンを押すと、BibTeX情報をリンクされたPDFに書き込みます。このPDFを同僚に電子メールで送って、同僚がそのファイルをJabRefにドラッグすれば、あなたが入力した情報すべてが、この同僚にも利用可能になります。

## 使用法

JabRefでXMP機能を使うには、以下のようにしてください。

-   XMPを含んでいる**注釈付きPDFファイルを読み込む**には、「ファイル→...に読み込む→XMP注釈付きPDF」を選択するか、そのファイルを基本ビューにドラッグしてください。
-   **関連したPDFに書誌情報を書き込む**には、基本ビューで項目をダブルクリックし、タブ中の「XMPメタデータとして書き込む」ボタンを押してください。
-   **データベース中のすべてのPDFに注釈を付ける**場合には、「ツール→XMPメタデータをPDFに書き出す」を選択してください。
-   うまく行ったかどうかを確認するには、PDFをAdobe Acrobatで開き、「ファイル→文書プロパティ→追加のMetadata→詳細」を選択してください。右側のツリーに「http://purl.org/net/bibteXMP」という項目があります。これは、Adobe Acrobatで動作しますが、Adobe Readerでは動作しません。
-   Adobe Acrobatがなければ、XMPメタデータを見るのに代わりに*pdfinfo*を使うことができます。*pdfinfo*は、Xpdf (`www.foolabs.com/xpdf`)とPoppler (`http://poppler.freedesktop.org`)の一部です。
-   ## BibteXmpファイル形式

    XMPは、データを保管するのにResource Description Framework (RDF)のサブセットを使用します。JabRefでは、BibTeXに非常に近い形にマップする新しいメタデータ形式を使用しています。基本的にすべてのフィールドと値は、XML文書のノードに変換されます。authorsとeditorsのみがrdf:Seq構造として保管されるので、データのユーザーは「and」の分割作業をスキップすることができます。すべての文字列と相互参照は、データ中で解決されます。

    以下の簡単な最小限のスキーマを使用します。

    -   BibTeX鍵は`bibtexkey`として保管されます。
    -   BibTeX鍵の型は`entrytype`として保管されます。
    -   `author`と`editor`は、`rdf:Seq`としてエンコードされ、各著者は`rdf:li`として表されます。
    -   他のフィールドは、すべてフィールド名そのものを使用して保存されます。

    下記はマッピングの例です。

        @INPROCEEDINGS{CroAnnHow05,
          author = {Crowston, K. and Annabi, H. and Howison, J. and Masango, C.},
          title = {Effective work practices for floss development: A model and propositions},
          booktitle = {Hawaii International Conference On System Sciences (HICSS)},
          year = {2005},
          owner = {oezbek},
          timestamp = {2006.05.29},
          url = {http://james.howison.name/publications}
        }

    これは以下のように変換されます。
        <rdf:Description xmlns:bibtex="http://jabref.sourceforge.net/bibteXMP/"
            bibtex:bibtexkey="CroAnnHow05"
            bibtex:year="2005"
            bibtex:title="Effective work practices for floss development: A model and propositions"
            bibtex:owner="oezbek"
            bibtex:url="http://james.howison.name/publications"
            bibtex:booktitle="Hawaii International Conference On System Sciences (HICSS)"
            bibtex:timestamp="2006.05.29">
                <bibtex:author>
                    <rdf:Seq>
                        <rdf:li>K. Crowston</rdf:li>
                        <rdf:li>H. Annabi</rdf:li>
                        <rdf:li>J. Howison</rdf:li>
                        <rdf:li>C. Masango</rdf:li>
                    </rdf:Seq>
                </bibtex:author>
            <bibtex:entrytype>Inproceedings</bibtex:entrytype>
        </rdf:Description>

    bibtexXMPを解析しようとする場合には、以下の点に注意してください。

    -   RDFでは、属性-値の組はノードとして表すこともでき、その逆もできます。

    ## 関連リンク:

    XMPと注釈付きPDFに関するリンク:

    -   [James Howisonのブログ「Themp---MP3のように学術論文を管理する」](http://freelancepropaganda.com/themp/)
    -   [XMPに関するXML.comの記事](http://www.xml.com/pub/a/2004/09/22/xmp)
    -   Apache Software Foundationの[PDFBox](http://pdfbox.apache.org/)は、PDFとメタデータ ストリームにアクセスするのに使われるJavaライブラリです。
    -   [PDF管理を論じているArsTechnica上の良いスレッド](http://arstechnica.com/civis/viewtopic.php?f=19&t=408429)
    -   [Adobe XMPの仕様](http://www.adobe.com/content/dam/Adobe/en/devnet/xmp/pdfs/XMPSpecificationPart1.pdf)


