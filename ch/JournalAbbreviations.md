---
title: 期刊缩写
---

# 期刊缩写

JabRef 可以自动在缩写和非缩写形式之间切换日记名称，只要名称包含在您的一个日记列表中。

这个功能可以在 **Options → Manage journal abbreviations** 中配置。

JabRef 包含一个相当广泛的期刊缩写内置列表，但是对于许多用户来说它仍然可能不完整。 您可以以个人列表或外部列表的形式添加缩写。

## 功能使用

期刊名称转换可以在条目编辑器或者菜单 **Tools** 中使用。在条目编辑器中，您会在 *journal* 字段中找到标有 *Toggle abbreviation* 的按钮。 单击此按钮将使当前日志名称切换为以下三种模式中的一种：

-   全名，如 "Aquacultural Engineering"
-   ISO 缩写，如 "Aquacult. Eng."
-   MEDLINE 缩写，如 "Aquacult Eng"

如果在期刊列表中找不到当前期刊名称，则不会修改该字段。

要批量转换许多条目中的期刊名称，您可以选择任意数量的条目，然后选择 **Tools → Abbreviate journal names (ISO)**、**Tools → Abbreviate journal names (MEDLINE)** 或者 **Tools → Unabbreviate journal names**。这三个操作将会缩写或者扩写所有选中条目中的期刊名字，如果这些名字在期刊列表中可以找到。 

## 添加期刊列表设置

除了内置期刊列表，您还可以拥有个人列表和外部列表。

您的个人期刊列表中的任何条目都将覆盖外部列表中具有相同完整期刊名称的条目。 同样，外部列表按列出的顺序优先。

### 个人期刊缩写列表

您的个人期刊列表在 **Manage journal abbreviations** 窗口的中央部分进行管理。要开始构建个人列表，请选择 *New file*，然后手动输入文件名或者使用 *Browse* 按钮。如果您已经有一个要用作起点的文件，请使用以 *Existing file* 开始的行上的 *Browse* 按钮。 该表将更新以显示您选择的列表的内容。

右侧的表格和工具按钮允许您添加，删除和编辑期刊条目。对于每个条目，您必须提供完整的期刊名称和ISO缩写（例如“Aquacultural Engineering”和“Aquacult.Eng”）。 要编辑条目，请双击表中的行。

单击 *OK* 后，如果您选择了文件，并且该表至少包含一个条目，那么表格内容将存储到所选文件中，并且将更新 JabRef 的期刊列表。

### 外部期刊列表

您可以链接到许多外部列表。 这些链接可以在 **Manage journal abbreviations** 窗口的下半部分设置。 外部列表与个人列表类似 - 唯一的区别是 JabRef 不提供用于编辑外部列表的界面。

外部链接可以在 [JabRef's repository abbreviation lists](http://abbrv.jabref.org/) 寻找。

如果需要添加新的外部列表，请单击 **+** 按钮向界面添加另一个插槽。 然后使用窗口下部其中一个插槽旁边的 *Browse* 或者 *Download* 按钮：

- *Browse* 按钮允许您选择计算机上的现有文件。
- *Download* 按钮允许您通过输入URL下载该列表，将其存储为计算机上的本地文件，并链接到 JabRef 的期刊列表。

#### 贡献外部列表

我们想要扩充内置列表和较小列表的可选择性，因此，如果您为自己的课题领域设置了代表性列表，我们将非常感谢您通过 [github](https://github.com/JabRef/reference-abbreviations) 或者留言在 [我们的论坛](http://discourse.jabref.org/) 进行分享。
