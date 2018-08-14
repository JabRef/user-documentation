---
title: 翻译JabRef界面
---

# 翻译JabRef界面

## 介绍

JabRef带有一组不同语言的翻译，目前有：
中文（简体），丹麦语，荷兰语，英语，波斯语，法语，德语，印度尼西亚语，意大利语，日语，挪威语，波斯语，葡萄牙语（巴西），俄语，西班牙语，瑞典语，土耳其语和越南语。

如果JabRef界面中已经有了您的语言，您可以帮助改进它。
否则，您可以将JabRef翻译成您自己的语言。
对于每种语言，有两个文件（`xx`表示该语言的国家/地区代码）：

- `Menu_xx.properties`: 菜单项的翻译
- `JabRef_xx.properties`: 其他项目的翻译

## 改进现有翻译

我们使用 [Crowdin](https://crowdin.com/) 提供的服务来保持我们的翻译更新。
这是一种可以直接在浏览器中运行的服务，可以使翻译者快速加入并开始翻译。
请访问 <http://translate.jabref.org/> 来开始使用.

## 将JabRef翻译成新语言

Crowdin 提供快速添加新语言的功能。
请联系我们，以便我们添加新语言。

### 属性文件

在JabRef源代码树中，属性文件位于 [/src/main/resources/l10n](https://github.com/JabRef/jabref/blob/master/src/main/resources/l10n/) 目录中.
对于每种语言，都有两个字符（`xx`表示该语言的国家/地区代码）：

- `Menu_xx.properties`: 菜单项的翻译，标记为助记键
- `JabRef_xx.properties`: 其他项目的翻译

### 属性文件的格式

每个条目首先用英语给出，然后用另一种语言给出，两个部分用'='字符分隔。例如，一行在德语翻译文件中可能如下所示

`Background\ color\ for\ optional\ fields=Hintergrundfarbe für optionale Felder`

请注意，每个空格字符都需要被(`\` )转义 。
翻译中的具体的值不需要被转义。

某些条目包含由JabRef在运行时插入的“变量” - 例如，这可以是文件名或文件类型名称：

`Synchronizing\ %0\ links...=Synchronisiere %0-Links...`

变量由 `%0`, `%1`, `%2` 等表示。在这些条目中，只需在翻译版本中重复相同的表示法。

我们可以看到，有几个“特殊”字符：百分号和等号，以及冒号字符。如果这些字符是条目中实际文本的一部分，则它们必须以英文版本进行转义，如下例中的冒号：

`Error\ writing\ XMP\ to\ file\:_%0=Fehler beim Schreiben von XMP in die Datei: %0`

字符编码应为 **UTF-8**。 请避免使用Unicode转义，例如 `\u2302`.

#### 测试翻译

要在JabRef中提供转换，必须在Java类GUIGlobals中添加相应的行 (可在JabRef源代码树中的 `/src/main/java/org/jabref/logic/l10n/Languages.java` 文件中找到 )，在对应行的静态部分中添加语言对应信息。在修改之后，当然必须重新编译代码。

要测试您的翻译，您必须能够在修改源码后编译源代码树。
这需要您安装 [Java Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/index.html).
在根目录中执行 `gradlew run`， JabRef应该启动。
