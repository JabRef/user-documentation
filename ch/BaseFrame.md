---
title: JabRef 的主窗口
---

# JabRef 的主窗口

> 下面提到的大多数菜单操作都有键盘快捷键，工具栏中也提供了许多操作。键盘快捷键位于下拉菜单中。

## 概览

这是你使用数据库的主窗口。菜单栏和工具栏下方是一个选项卡式窗格，其中包含当前打开的每个数据库的面板。当你选中其中一个面板时，会出现一个表，列出所有数据库的条目，以及可配置的字段。

-   你可以通过在**Preferences**对话框中选中要查看的字段来确定表中显示的字段。
-   双击表格的某行以编辑其内容。你可以用鼠标在表格上选择。
-   该表根据你选择的一组字段进行排序。可以在**Preferences → Entry table**中设置默认排序，但要更快地更改顺序，请单击列标题以将其设置为主要排序标准，或者在已经设置了排序的情况下反转顺序。再次单击将取消该列作为排序标准。按住 <kbd>Ctrl</kbd> 键并单击列可以添加、修改（以它为标准正序或逆序排列）或删除它作为主列下的子标准。你可以添加任意数量的子标准，但是只会为下次使用 Jabref 存储三个。
-   通过拖动标题之间的边框来调整每列的宽度。
-   可以在 **Preferences** 对话框中切换颜色代码（选择 **Appearance** 并选中选项 "Color codes for optional and required fields"）。它们通过如下着色单元格帮助你可视化数据库的完整性：
    -   最左边单元格是<span style="color: red">红色</span>表示这是一个不完整的条目。
    -   最左边单元格是<span style="color: #909000">黄色</span>表示该条目自身没有定义要求的所有字段，而是包含了一些交叉引用。
    -   <span style="color: blue">蓝色</span> 单元格表示这是一个必填的字段。
    -   <span style="color: green">绿色</span> 单元格表示这是一个选填的字段。
    -   未着色的单元格表示该字段在 *BibTeX* 程序此类条目中未被使用。该字段仍可在 JabRef 中编辑。

## 添加新条目

有几种方法可以添加新条目。**New entry** 菜单会显示一个对话框，你可以从中选择条目的类型；绕过这个对话框，每个条目类型还有单独的菜单操作；对于常见的条目类型，还有键盘快捷键。

添加新条目时，默认打开该条目的 [条目编辑器(entry editor)](EntryEditor)。可以在 **Preferences** 对话框中更改此行为。

*注意：* 我们强烈建议您学习最常用的条目类型的快捷方式，例如，<kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>A</kbd> 用于添加 *文章(article)* 条目。

### 使用 id 添加新条目

在对话框中，你还可以基于Id创建条目。
有关所有可用提取器(fetchers)的概述，请参见 <http://help.jabref.org/en/#using-publication-identifiers>。
例如，当有 ISBN 号时，您可以选择“ISBN”或“DOI”作为Id类型，然后获取它。
有关详细信息，请参阅 [ISBNtoBibTeX](ISBNtoBibTeX) 和 [DOItoBibTeX](DOItoBibTeX)。

### 使用引用文本添加新条目

使用** BibTeX → New entry from plain text... ** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>N</kbd>)。
有关更多信息，请参阅[使用纯文本创建新条目](NewEntryFromPlainText.md).

## 编辑条目
打开现有条目的[条目编辑器(entry editor)](EntryEditor)，只需双击相应行上的任意位置即可（或者选中条目并按 <kbd>Enter</kbd>)。

## 在字段中引用 *BibTeX* 字符串

在 JabRef 中，你可以像在文本编辑器中一样编写所有字段的内容，但有一个例外：要引用字符串，请将字符串的名称括在一组＃字符中，例如：
  '＃jan＃1997' ，
将被解释为名为'jan'的字符串，后跟'1997'。

另请参见：[字符串编辑器(string editor)](StringEditor)。
