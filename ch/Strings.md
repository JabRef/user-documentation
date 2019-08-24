---
title: 字符串
---

# 字符串

*BibTeX* 支持使用 `@String {key = value}`储存常量字符串. JabRef 支持使用 **BibTeX → 编辑简写字串**来管理它们，这会打开 [字符串编辑器](StringEditor).这些值可以在字段中使用。例如，您可以：
    @String { kopp = "Kopp, Oliver" }
    @String { kubovy = "Kubovy, Jan" }
    @String { et = " and " }

然后在某些条目中例如： `@Misc{ author = kopp # et # kubovy }` 或 `@Misc{ author = kopp # " and " # kubovy }`. 在JabRef字段编辑器中，作者必须插入 `#kopp# #et# #kubovy#` 或者 `#kopp# 和 #kubovy#`.

JabRef增强了字符串的概念，为 `@String`添加了一个类型。 问题是如何在BibTeX文件中保留这种类型的字符串。 JabRef通过前缀添加类型：

-   `@String { aKopp = "Kopp, Oliver" }` 是一个带有类型作者的 `@String` 。
-   `@String { iMIT = "{Massachusetts Institute of Technology ({MIT})}" }` 是一个具有机构类型的 `@String` 。
-   `@String { anct = "Anecdote" }` 是一个类型为other的 `@String`。
-   `@String { lTOSCA = "Topology and Orchestration Specification for Cloud Applications" }` 是其他类型的 `@String` 。

那么带有类型作者的 `@String`s 应仅用于作者和编辑器字段。 具有类型机构`@String`只应用于机构和组织领域。 发布者类型的`@String`s 应该只用于发布者字段。 最后，其它类型的`@String`s 可以在任何地方使用。

您可能会遇到多种类型的同一机构：

-   `@String { aMIT = "{Massachusetts Institute of Technology ({MIT})}" }` 如果该机构将作为作者或编辑出现
-   `@String { iMIT = "{Massachusetts Institute of Technology ({MIT})}" }` 如果该机构将作为机构或组织出现
-   `@String { pMIT = "{Massachusetts Institute of Technology ({MIT}) press}" }` 如果该机构将作为出版商出现。

即使最后一个例子可能看起来与原意相矛盾，但这是为了消除两面性，统一个人和机构的名称。
