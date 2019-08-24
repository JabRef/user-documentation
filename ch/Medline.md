---
title: 从 MEDLINE 导入条目
---

# 从 MEDLINE 导入条目

[MEDLINE](https://www.nlm.nih.gov/pubs/factsheets/medline.html) 是生命科学和生物医学信息的书目数据库。 它包括来自医学，护理，药学，牙科，兽医和医疗保健等学术期刊文章的书目信息。Medline 还涵盖了生物学和生物化学以及分子进化等领域的大部分文献 ([Wikipedia](https://en.wikipedia.org/wiki/MEDLINE))。

要从MEDLINE中获取条目，请选择 **Search → Web search**，搜索界面将显示在侧窗格中。 在下拉菜单中选择 ** MEDLINE **。
 要开始搜索，请输入查询的字词，然后按 <kbd>Enter</kbd> 或者 **Fetch** 按钮。

有两种方法可以指定要下载的条目：

1.  在文本字段中输入一个或多个 MEDLINE ID（以逗号/分号分隔）。
2.  输入一组要搜索的名称 和/或 单词。 您可以使用运算符 *and*、*or* 和 括号来优化搜索表达式。更多请见 [MEDLINE/OVID operators](http://www.ovid.com/site/products/ovidguide/medline.htm)。
  样例：
    -  `May \[au\] AND Anderson \[au\]`
    -  `Anderson RM \[au\] HIV \[ti\]`
    -  `Valleron \[au\] 1988:2000\[dp\] HIV \[ti\]`
    -  `Valleron \[au\] AND 1987:2000\[dp\] AND (AIDS \[ti\] OR HIV\[ti\])`
    -  `Anderson \[au\] AND Nature \[ta\]`
    -  `Population \[ta\]`

两种情况下，都点击 <kbd>Enter</kbd> 或者 **Fetch** 按钮。如果您使用文本搜索，系统将提示您找到的条目数，并可以选择下载的条目数。

然后，结果会展示在 [import inspection window](ImportInspectionDialog).
如果发生错误，则会在弹出窗口中显示。

## 使用代理服务器

如果需要使用 HTTP 代理服务器，你可以在 JabRef 的 “Network” 选项中配置(**Options → Preferences → Network**)。

## 批量文章下载

JabRef 并非旨在成为大量下载引文的工具。
WebFetchers（例如Medline Fetcher）的目的是在不使用浏览器的情况下简化单个或至少几个条目的下载。这意味着，人们试图以简单的方式导入已知出版物的书目信息。

但是，仍然可以使用数据库本身的导出功能从 medline 导入数百甚至数千个条目。
执行您喜欢的搜索查询，然后选择 "Send to" → "File" 导出（选择 Medline 或 XML 作为格式）：

![medline-export](https://cloud.githubusercontent.com/assets/676652/21082470/83635c92-bfdc-11e6-9345-3dd2f356e18f.png)

然后可以使用 JabRefs "File" → "Import into current/new database" 功能导入下载的文件。

注意：取决于导入的数量，可能需要一些或相当多的时间。
在2016年，以导出的超过 11000 条目、130MB 大小的 XML 文件进行尝试，导入需要超过10分钟。

*除了使用完整搜索获取条目外，还可以使用* ***BibTeX → New Entry*** *对话框直接创建条目，更多细节见  [这里](MedlinetoBibTeX)。*
