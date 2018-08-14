---
title: JabRef中的XMP元数据支持
---

# JabRef中的XMP元数据支持

XMP 是一种标准由Adobe Systems创建，用于在文件中存储元数据（有关数据的数据）。
元数据的一个众所周知的例子是MP3标签，其可用于描述MP3文件的艺术家，专辑和歌曲名称
向MP3添加元数据有助于其他人正确地识别歌曲而不依赖于文件名，并且可以为软件（例如MP3播放器）提供对歌曲进行排序和分组的方法。

通过支持XMP，JabRef团队创世将元数据的优势带给参考文献管理器。
您可以在JabRef的“工具”选项卡中点击“将XMP元数据写入PDF中”，把所有BibTeX信息放入PDF中。
如果您通过电子邮件将此PDF发送给同事，她只需将文件拖到JabRef中，您输入的所有信息都将可供她使用。

## 用法

要在JabRef中使用XMP功能，您可以执行以下操作：

-   为了 **导入一个单个带注释的PDF文件** 其中含有XMP，您可以选择 "文件 → 导入到... → 含有XMP注释的PDF文件" 或者拖拽文件进入JabRef的主视图。
-   为了 **将书目信息写入相关PDF** 请执行以下操作：双击主视图中的条目， 转到 "工具“ 选项卡然后单击“写入XMP”。
-   如果您想 **注释给定数据库中的所有PDF** 您可以选择"工具 → 为数据库写入XMP"
-   要验证它是否有效，您可以在Adobe Acrobat中打开PDF并选择“文件→文档属性→其他元数据→高级。在右侧的树中，您应该看到一个名为“http://purl.org/net/bibteXMP” 的条目。这仅适用于Adobe Acrobat，而不适用于Adobe Reader。
-  如果您没有Adobe Acrobat，您可以使用 `pdfinfo` 来查看XMP元数据。 `pdfinfo`是 [Xpdf](http://www.foolabs.com/xpdf/) 和 [Popple](http://poppler.freedesktop.org)的一部分.

## BibTeXmp 文件格式

XMP使用资源描述框架（RDF）的子集来存储数据。
对于JabRef，使用了一种新的元数据格式，它与BibTeX非常接近。
基本上所有字段和值都转换为XML文档的节点。
只有作者和编辑者储存为rdf：Seq-structures,因此数据的用户可以跳过'与'的拆分。
所有的字符串和交叉反射都将在数据中被解析。

以下的简单最小模式被使用：

-   BibTeX-key 将被储存为 `bibtexkey`.
-   BibTeX条目的类型存储为 `entrytype`.
-   `作者` 和 `编辑者` 被编码为 `rdf:Seq` ，其中各个作者被表示为 `rdf:li`.
-   所有其他字段使用其字段名称保存。

以下是映射的示例

    @INPROCEEDINGS{CroAnnHow05,
      author = {Crowston, K. and Annabi, H. and Howison, J. and Masango, C.},
      title = {Effective work practices for floss development: A model and propositions},
      booktitle = {Hawaii International Conference On System Sciences (HICSS)},
      year = {2005},
      owner = {oezbek},
      timestamp = {2006.05.29},
      url = {http://james.howison.name/publications}
    }

将被转化为

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

如果您尝试解析BibTeXMP，请注意以下警告：

-   在RDF中，属性值对也可以表示为节点，反之亦然。

## 相关链接

一些关于XMP和注释PDF的链接

-   [詹姆斯·豪森的博客 "Themp---像管理mp3文件一样管理学术论文"](http://freelancepropaganda.com/themp/)
-   [XML.com 上的文章关于 XMP](http://www.xml.com/pub/a/2004/09/22/xmp)
-   [PDFBox](http://pdfbox.apache.org/) 由apache软件基金会提供的用于访问PDF和元数据流的Jaba库。
-   [ArsTechnica商讨论PDF管理的好主题](http://arstechnica.com/civis/viewtopic.php?f=19&t=408429)
-   [Adobe XMP规范](http://www.adobe.com/content/dam/Adobe/en/devnet/xmp/pdfs/XMPSpecificationPart1.pdf)
