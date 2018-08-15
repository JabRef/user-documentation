---
title: 命令行使用和选项
---

# 命令行使用和选项

## 目的和功能

虽然JabRef主要是基于GUI的应用程序，但它提供了一些可能有用的命令行选项，甚至可以在不打开图形界面的情况下执行文件转换操作。


## 基本

```SH
java -jar JabRef.jar [OPTIONS] [BIBTEX_FILE]
```

*注意：* 您可能必须用`.jar`文件的实际名称替换`JabRef.jar`（您可以在安装文件夹中找到该文件）

在Windows上，您也可以直接使用可执行文件，即
`JabRef.exe [OPTIONS] [BIBTEX_FILE]`。在这种情况下，除非指定`-console`选项，否则不会将任何输出写入控制台。

您可以通过简单地列出其文件名来指定要加载的一个或多个BibTeX文件。
请注意在文件名列表之前指定所有选项。
确保第一个文件名不会被误解为选项的参数;这只是意味着如果一个布尔选项如`-n`或`-l`紧接在文件名之前，则添加单词`true`作为参数。
例如，命令行：

`java -jar JabRef.jar -o filetoexport.xml，docbook -n true original.bib`

将正确加载文件`original.bib`，将其以docbook格式导出到`filetoexport.xml`，并禁止GUI。
单词*true*可防止文件名被解释为`-n`选项的参数。


## 选项

- [帮助：`-h`](＃help - h)
- [无GUI模式：`-n`](#no-gui-mode -n)
- [导入文件：`-i filename [，导入格式]`](import-file -i-filenameimport-format)
- [导出文件：`-o filename [，导出格式]`](＃export-file -o-filenameexport-format)
- [导出匹配条目：`-m [field] searchTerm，outputFile：file [，exportFormat]`](＃export-matching-entries - m-fieldsearchtermoutputfilefileexportformat)
- [从Web获取条目：`-f = FetcherName：QueryString`](#fetch-entries-from-web - ffetchernamequerystring)
- [.aux文件中的子数据库：`-a infile [.aux]，outfile [.bib] base-BibTeX-file`](＃subdatabase-from-aux-file - a-infileauxoutfilebib-base-bibtex-file)
- [设置文件链接：`-asfl`](＃set-file-links - asfl)
- [重新生成键：`-g`](＃regenerate-keys - g)
- [导出首选项：`-x filename`](＃export-preferences - x-filename)
- [导入首选项：`-p filename`](#import-preferences - p-filename)
- [重置首选项：`-d key`](＃reset-preferences - d-key)
- [启动时没有文件：`-b`](＃no-files-at-startup - b)
- [版本：`-v`](＃version - v)
- [调试模式：`--debug`](＃debug-mode --- debug)
- [在控制台中显示输出：`--console`](＃display-output-in-the-console --- console)


### 帮助：`-h`
（或`--help`）

显示命令行选项的摘要，包括可用导入和导出格式的列表。


### 无GUI模式：`-n`
（或`--nogui`）

禁止JabRef窗口（即不显示GUI - 图形用户界面）。

一旦处理完命令行选项，它会立即退出程序。
此选项对于从命令行或脚本执行文件转换操作非常有用。


### 导入文件：`-i filename [，import format]`
（或`--import filename [，import format]`或`--importToOpen filename [，import format]`）

导入或加载文件`filename`。

如果只指定了文件名（或者如果文件名后跟逗号和`*`字符），JabRef将尝试自动检测文件格式。
这适用于BibTeX文件，也适用于支持的导入格式的所有文件。
如果文件名后跟逗号和导入格式的名称，则将使用给定的导入过滤器。

使用`-h`选项获取可用导入格式列表。

如果还指定了导出选项，则将始终首先处理导入，导出过滤器将使用导入或加载的文件。
如果未禁止GUI（使用`-n`选项），则任何导入或加载的文件都将显示在主窗口中。

如果使用`--importToOpen`，则文件的内容将导入打开的选项卡。

*注意：*`-i`选项只能指定一次，而且只能指定一个文件。


### 导出文件：`-o filename [，export format]`
（或`--output filename [，export format]`

导出或保存由同一命令行导入或加载的文件。

如果使用`-i`选项导入文件，则将导出该文件。
如果没有使用`-i`选项，则将导出指定（并成功加载）的*last*文件。

如果只指定了filename，它将以BibTeX格式导出。
如果文件名后跟逗号和导出格式，则将使用给定的导出过滤器。

可以使用自定义导出过滤器，如果导出名称与自定义和标准导出过滤器匹配，则首选过滤器。

如果未禁止GUI（使用`-n`选项），则在打开JabRef窗口之前将执行任何导出操作，导入的数据库将显示在窗口中。

*注意：*`-o`选项只能指定一次，而且只能指定一个文件


#### Xmp导出选项
[XMP](https://en.wikipedia.org/wiki/Extensible_Metadata_Platform)是用于创建，处理和交换数字文档和数据集的标准化和自定义元数据的ISO标准。

第一个选项是将`entries.bib`文件中包含的所有条目导出到指定的`export.xmp`文件。第二个参数，以逗号分隔，是JabRef使用的导出器类型。
```SH
java -jar JabRef.jar -o path \ export.xmp，xmp path \ entries.bib -n
```

第二个选项是将entries.bib中的每个条目导出到单个.xmp文件中。因此，文件名被替换为关键字`split`而没有文件结束！ JabRef在`path`位置生成单独的.xmp文件。文件名是JabRef提供的标识符和条目的引用键的组合。
```SH
java -jar JabRef.jar -o path \ split，xmp path \ entries.bib -n
```


###导出匹配条目：`-m [field] searchTerm，outputFile：file [，exportFormat]`
（或`--exportMatches [field] searchTerm，outputFile：file [，exportFormat]`）

将与给定搜索词匹配的所有数据库条目保存到新文件。

如果文件名后跟逗号和导出格式，则将使用给定的导出过滤器。
否则，使用默认格式*html-table*（带*Abstract*和*BibTeX*，由*tablerefsabsbib*提供）。

有关搜索功能的信息在['高级搜索'文档]（搜索）中给出。

*注意：* 此外，还可以在一个时间范围内搜索条目，例如`Year = 1989-2005`
(而不仅仅是在'Year = 2005`中搜索特定年份的条目）。

*注意：*包含空格的搜索词需要用引号括起来，如
`（author = bock或title | keywords =“计算机方法”）而不是（author = sager）`


### 从Web获取条目：`-f = FetcherName：QueryString`
（或`--fetch = FetcherName：QueryString`）

查询Web提取程序并导入条目。

传递一个fetcher的名字和你的搜索词或纸质id（例如`--fetch = Medline：cancer`），然后运行给定的fetcher。
如果某些获取者需要您的反馈，他们仍会显示GUI窗口。

可以从命令行运行Web搜索面板中列出的提取程序。
要获取可用的提取器列表，请运行不带参数的`--fetch`。


### 来自.aux文件的子数据库：`-a infile [.aux]，outfile [.bib] base-BibTeX-file`
（或`--aux infile [.aux]，outfile [.bib] base-BibTeX-file`）

从.aux文件中提取子数据库：

编译LaTeX文档（例如`infile.tex`）时，会创建一个.aux文件（`infile.aux`）。
除其他外，它包含文档中使用的条目列表。
JabRef可以将`base-BibTeX-file`中使用的引用提取到新的.bib文件（`outfile.bib`）。
这样，您将拥有一个仅包含.tex文件中使用的条目的子数据库。


### 设置文件链接：`-asfl`
（或`--automaticallySetFileLinks`）

自动设置文件链接。


### 重新生成密钥：`-g`
（或`--generateBibtexKeys`）

重新生成BibTeX文件条目的所有键。


### 导出首选项：`-x filename`
（或`--prexp filename`）

将用户首选项导出到XML文件。
导出后，JabRef将正常启动。


### 导入首选项：`-p filename`
（或`--primp filename`）

从XML文件导入用户首选项（使用`-x`选项或通过GUI导出）。
导入后，JabRef将正常启动。


### 重置首选项：`-d key`
（或`--prdef key`）

重置首选项（key1，key2，...或`all`）。


### 启动时没有文件：`-b`
（或`--blank`）
不要在启动时打开任何文件


### 版本：`-v`
（或`--version`）

显示JabRef的版本号。


### 调试模式：`--debug`

显示调试级别消息。

### 在控制台中显示输出：`--console`

在控制台中显示信息和错误消息。只有在使用`JabRef.exe`而不是`.jar`文件时才需要