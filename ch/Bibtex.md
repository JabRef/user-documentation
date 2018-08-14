---
title: 关于 *BibTeX*
---

# 关于 *BibTeX*

JabRef 可以帮助你使用 *BibTeX* 数据库，但在编辑条目时仍需记住规则，以确保 *BibTeX* 程序正确处理您的数据库。

## JabRef 的惯例

### bib 文件头中的字段

JabRef 存储文件的编码和（在使用共享[ SQL 数据库(SQL database)](SQLDatabase)的情况下）bib 文件头中的共享数据库的 ID。

#### 编码

`% Encoding: <encoding>`：说明 BibTeX 文件的编码格式。例如，`% Encoding: UTF-8`

#### 共享 ID

为了启用[自动保存(auto save)](Autosave)， JabRef 会添加 `% DBID: <id>` 到文件头中。
这有助于 JabRef 识别文件所属的 SQL 数据库。
例如，`% DBID: 2mvhh73ge3hc5fosdsvuoa808t`。

## 标准 *BibTeX* 字段

*BibTeX* 中有很多不同的字段。在 JabRef 中还有一些可以设置的其他字段。

默认的参考书目样式可识别以下字段：

-   **bibtexkey** 用于引用 LaTeX 文档中的条目的唯一字符串。请注意，在引用 LaTeX 中的条目时，关键字必须区分大小写地匹配引用字符串。
-   **address** 通常是该 `publisher` 或其他类型机构的地址。对于主要出版社，你可以完全省略这个信息或简单地给出城市。另一方面，对于小型出版商，你可以通过提供完整的地址来帮助读者。
-   **annote** 不会被标准参考书目样式使用，但是可以由制作有注释地书目的其他人使用。
-   **author** 此字段应包含你的条目的完整作者列表。如果有两个及以上地作者，名字之间用单词 *and* 隔开。每个名字都可以采用两种等价形式：
    Donald E. Knuth *或者* Knuth, Donald E.
    Eddie van Halen *或者* van Halen, Eddie
    有两个名地作者应该采用第二种形式，以区分中间名和姓。
-   **booktitle** 是书的名字，其中一部分被引用。对于图书条目，请改用 `title` 字段。
-   **chapter** 章节（或选段或其他）编号。
-   **crossref** 被交叉引用的条目的数据库关键字。
-   **edition** 书的版本————例如， \`\`Second'' 应该是序数，并且应该将首字母大写。标准样式在必要时转换为小写。
-   **editor** 此字段类似于 *author* 字段。如果还有一个 `author` 字段，则 `editor` 字段给出参考的书或合集的编辑者。
-   **howpublished** 发布的是多么新奇的东西。第一个词应该大写。
-   **institution** 技术报告的赞助机构。
-   **journal** 期刊或杂志的名称。可以使用”字符串“缩写期刊的名称。要定义此类字符串，请使用[字符串编辑器(string editor)](StringEditor)。
-   **key** 当缺少\`\`author''信息时，用于按字母顺序排列，交叉引用和创建标签。不应将此字段与`\cite` 命令中出现的键和数据库条目的开头混淆。
-   **month** 发布作品的月份，或者是未发表作品写成的月份。你应该使用英文名称的标准三字母缩写（jan，feb，mar，apr，may，jun，jul，aug，sep，oct，nov，dec）。
-   **note** 任何可以帮助读者的其他信息。第一个词应该大写。
-   **number**
    期刊，杂志，技术报告或系列作品的编号。期刊或杂志的编号通常以其数量来确定; 发布技术报告的组织通常会给出一个数字; 有时书籍会以一个命名系列给出编号。
-   **pages** 一个或多个或一个范围的页码，例如 `42--111` 或者 `7,41,73--97` 或者 `43+`（表示 `43及以后的页码`）。标准样式将单破折号（如 `7-33` 中）转换为 TeX 中使用的双破折号以表示数字范围（如 `7--3` 中）。
-   **publisher** 出版商的名字。
-   **school** 撰写论文的学术机构的名称。
-   **series** 一个系列或一套书的名称。当引用整本书时，在 `title` 字段给出其标题，并在可选的 `series` 字段给出包含该书的系列或多卷集的名称。
-   **title** 工作的标题。是否大写可能取决于参考书目的风格和使用的语言。对于必须大写的单词（例如专有名词），将单词（或其第一个字母）括在大括号中。
-   **type** 技术报告的类型———例如，"Research Note"。
-   **volume** 期刊或多卷书的卷数。
-   **year** 出版年份，或者未发表的作品写成的年份。通常它应该由四个数字组成，例如 `1984`，但是标准样式也可以处理 `year` 字段最后四个非旋转字符是数字的任何情况，例如“（约1984）”。大多数条目类型都需要此字段。


## 非标准字段

BibTeX 非常受欢迎，很多人用它来存储非标准字段的信息。BibTeX 可能会忽略这些非标准字段中的信息。

以下是一些更常见的非标准字段（"*" = JabRef 不直接支持）:

-   **affiliation** 作者所属单位。
-   **abstract** 作品的摘要。
-   **doi** 数字对象标识符，为文档提供的永久标识符。
-   **eid*** 电子标识符适用于也以印刷形式出现的电子期刊。此编号替换页码，用于查找打印卷中的文章。有时也称为 *citation number*。
-   **contents*** 目录。
-   **copyright*** 版权信息。
-   **ISBN*** 国际标准书号。
-   **ISSN*** 国际标准序列号。用于识别期刊。
-   **keywords** 用于搜索或可能用于注释的关键字。
-   **language*** 文档所用的语言。
-   **location*** 与条目关联的地址，例如发生会议的城市。
-   **LCCN*** 国会图书馆控制号码。我也将这视为 `lib-congress`。
-   **mrnumber*** 数学评论的数量。
-   **price*** 文档的价格。
-   **size*** 作品的物理尺寸。
-   **URL** WWW统一资源定位器，指向被引用的项目。

## JabRef 特有的字段
为了帮助管理你的参考书目，并扩展 BibTeX 的功能，JabRef定义了一些特定的字段：

- [外部文件(External files)](ExternalFiles)
- [一般字段(General fields)](GeneralFields)
- [所有者(Owner)](Owner)
- [质量和评价(Quality and grading)](SpecialFields)
- [时间戳(Time stamp)](TimeStamp)

## 定义自己的字段
您可以通过 [editing (or creating) entry types](CustomEntries) 来创建新字段。

## 关于字段的提示

- 通常，您可以在包含文本的字段内使用 LaTeX 命令。 *BibTeX* 将自动格式化您的引用列表，列表中包含的那些字段将根据您的参考书目样式大写或小写。为了确保某些字符保持大写，请将它们括在括号中，例如单词 *{B}elgium*.
- 机构名称应在 `{}` 内。
如果机构名称还包括其缩写，则此缩写也应在 `{}` 中。
例如，`{The Attributed Graph Grammar System ({AGG})}`。

## 更多信息资源
- [Reference documentation about BibTeX](http://mirrors.ircam.fr/pub/CTAN/biblio/bibtex/base/btxdoc.pdf)
- [Tame the BeaST - The B to X of BibTxX](http://texdoc.net/texmf-dist/doc/bibtex/tamethebeast/ttb_en.pdf) - long manual explaining the workings of BibTeX, the BibTeX format, and the available entry types with requried and optional fields.
- [BibTeX tips and FAQ](http://mirror.ibcp.fr/pub/CTAN/biblio/bibtex/contrib/doc/btxFAQ.pdf)
- [Recommended BibTeX Format](http://sandilands.info/sgordon/node/488)
- [BibTeX format according to Wikibook](https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management#BibTeX)
- [BibTeX format according to Wikipedia](https://en.wikipedia.org/wiki/BibTeX#Bibliographic_information_file)
