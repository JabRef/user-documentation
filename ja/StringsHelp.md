---
title: 文字列ヘルプ
---

# 文字列ヘルプ

*BibTeX*は、`@String {鍵(キー) = 値}` と指定することで固定文字列を記憶させることをサポートしています。 JabRefは、文字列の管理を**BibTeX→文字列を編集**(これは[文字列エディタ](StringEditorHelp.html)を開きます)でサポートしています。指定した値は、フィールド中で使用することができます。例えば、BibTeXファイル中で

    @String { kopp = "Kopp, Oliver" }
    @String { kubovy = "Kubovy, Jan" }
    @String { et = " and " }

と指定してあれば、どこかの項目中で、例えば、`@Misc{ author = kopp # et # kubovy }` あるいは `@Misc{ author = kopp # " and " # kubovy }` として使うことができます。JabRefフィールドエディタ中では、authorフィールドに `#kopp# #et# #kubovy#` あるいは `#kopp# and #kubovy#` のように挿入します。

JabRefでは、文字列の概念を拡張して、これら`@String`に型を導入しました。問題は、そのような文字列の型をBibTeXファイル中でどう保管するかですが、JabRefは、以下のように前置句を加えることで型を追記します。

-   `@String { aKopp = "Kopp, Oliver" }`は、author型の`@String`です。
-   `@String { iMIT = "{Massachusetts Institute of Technology ({MIT})}" }`は、institution型の`@String`です。
-   `@String { anct = "Anecdote" }`は、other型の`@String`です。
-   `@String { lTOSCA = "Topology and Orchestration Specification for Cloud Applications" }`は、other型の`@String`です。

author型の`@String`は、authorフィールドとeditorsフィールドでのみ使うことができます。同じく、institution型の`@String`は、institutionフィールドとorganizationフィールドでのみ使うことができます。other型の`@String`は、どこでも使用することができます。

下記の通り、同じinstitutionを複数の型に持つこともできます。

-   `@String { aMIT = "{Massachusetts Institute of Technology ({MIT})}" }` は、institutionがauthorもしくはeditorとして現れる場合のものです。
-   `@String { iMIT = "{Massachusetts Institute of Technology ({MIT})}" }` は、institutionがinstitutionもしくはorganizationとして現れる場合のものです。
-   `@String { pMIT = "{Massachusetts Institute of Technology ({MIT}) press}" }` は、institutionがpublisherとして現れる場合のものです。

最後の例は、矛盾しているように見えるかもしれませんが、重複を避けた上で、人名と組織名を統一的に扱うためのものです。
