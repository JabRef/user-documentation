---
title：常见问题
---

# 常见问题

#### 问：我的插件停止工作了。我该怎么办？

答：JabRef v3.0取消了对插件的支持，因为开发团队无法继续保持插件支持。
不过，插件可以集成在JabRef中。
有关当前状态和讨论，请参阅[问题＃152]（https://github.com/JabRef/jabref/issues/152）。
请联系相应插件的作者，并要求他将他的插件移植到JabRef的代码中。

#### 问：我在工作中使用JabRef。我应该在我的出版物中引用JabRef吗？

答：您没有义务引用JabRef，但如果您这样做，我们将非常感激。

{% raw %}
```
@Manual{JabRef,
  title = {JabRef},
  author = {{JabRef Development Team}},
  year = {2016},
  url = {https://www.jabref.org}
}
```
{% endraw %}

#### 问：有没有关于JabRef的出版物？

答：我们正在收集我们在<https://github.com/JabRef/jabref/wiki/JabRef-in-the-media>上听到的所有出版物。

#### 问：JabRef无法启动。我该怎么办？

答：这可能是因为需要重置首选项。
执行`java -jar JabRef-X.Y.jar --prdef all -n`（使用`X.Y`版本的JabRef）。
在Windows上，如果没有帮助，执行`regedit`并删除文件夹`HKEY \ _CURRENT \ _USER \ SOFTWARE \ JavaSoft \ Prefs \ net \ sf \ jabref`。

#### 问：JabRef一般支持非英语语言或UTF8吗？

答：是的。
  - 转到**Options→Preferences→General**。
        - 在“Default Encoding”中选择*UTF8*。
              - 在“Langugae”中，根据需要选择所需的替代UI语言。
  - 转到**Options→Preference→Appearance**。
        - 点击“Set table font”
               - 将“Font family”设置为*dialog*。

### 注意

如果未安装特定于语言的输入法编辑器（IME）， *dialog*字体可能无法正确显示字符。在这种情况下，必须选择包含所需语言的字符范围的unicode字体。例如*simsun*表示中文，*dotum*表示韩语等。有关Windows的更多语言/字体对，请参阅<https://en.wikipedia.org/wiki/List_of_typefaces_included_with_Microsoft_Windows>。

有关语言的更多说明，请访问：
  - 繁体中文
         - <http://yenlung.km.nccu.edu.tw/xms/read_attach.php?id=61>
                - <https://web.archive.org/web/20111027034912/http://yenlung.math.nccu.edu.tw/~yenlung/notes/latex_in_Windows.pdf>

#### 问：当我有一个运行Jabref的实例并双击另一个BibTeX文件时，它会在一个新的JabRef实例中打开。是否可以在第一个实例中的新选项卡中打开它？

答：是的。转到**Options→Preference→Advanced→Remote operation**。
勾选“Listen for remote operation on port:”。
此选项允许JabRef的新实例检测已运行的实例，并将文件传递给该实例，而不是打开新窗口。
注意：[从JabRef 3.0](https://github.com/JabRef/jabref/blob/master/CHANGELOG.md#30---2015-11-29)开始，这是默认的。

#### 问：我打开了JabRef。如果我从Web浏览器打开BibTeX文件，则会启动新的JabRef。我希望在当前打开的JabRef中打开该文件。这可能吗？

答：是的。转到**Options → Preferences → Advanced → “Remote operation”**。
勾选“Listen for remote operation on port:”。
此选项允许JabRef的新实例检测已运行的实例，并将文件传递给该实例，而不是打开新窗口。
注意：[从JabRef 3.0](https://github.com/JabRef/jabref/blob/master/CHANGELOG.md#30---2015-11-29)开始，这是默认的。

#### 问：我有一个DOI。是否可以直接从DOI创建条目？

答：是的。转到**Search → Web Search**以启用网络搜索。
JabRef左侧会出现一个Web搜索框。
选择网络搜索的名称（例如“ACM门户”）。
单击它并将其更改为“DOI to BibTeX”。
在字段中输入DOI，然后按**Fetch**。
搜索开始，结果显示在新的弹出窗口中。
应该出现一个条目。
只需按“确定”即可将条目插入数据库。
有关详细信息，请参阅有关[DOI-to-BibTeX fetcher](DOItoBibTeX)的专用帮助文件。

#### 问：我有一个ISBN。是否可以直接在ISBN中创建条目？

答：是的。转到**Search → Web Search**以启用网络搜索。
JabRef左侧会出现一个Web搜索框。
选择网络搜索的名称（例如“ACM门户”）。
单击它并将其更改为“ISBN to BibTeX”。
如果找不到ISBN，请前往Manas Tungare的[online service](http://manas.tungare.name/software/isbn-to-BibTeX/)。
有关详细信息，请参阅有关[ISBN-to-BibTeX fetcher](ISBNtoBibTeX)的专用帮助文件

#### 问：我丢失一个字段*translator*，*lastfollowedon*，...我该如何添加这些字段？

答：要将此*translator*字段添加到所有条目类型，您可以使用**Options → Set up general fields**并在JabRef的一般字段选项卡下添加*翻译*字段。
要将此*translator*字段添加到特定条目类型，请编辑特定条目类型（**Options → Customize entry types**），并根据需要在必填字段或可选字段下添加*translator*字段。

#### 问：在保存.bib文件时，如何防止JabRef在某些字段（例如“title”）中引入换行符？

答：打开**Options → Preferences**。
在“File”面板中，您将找到一个名为“Do not wrap the following fields when saving”的选项。
此选项包含以分号分隔的字段名称列表。
您添加到此列表的任何字段将始终存储，而不会引入换行符。

#### 问：是否可以附加BibTeX文件中的条目，例如：从我的网络浏览器，到当前打开的数据库？

答：可以，您可以使用[命令行](CommandLine)的参数`--importToOpen bibfile`。

#### 问：我想将外部文件与相对于我的.bib文件的路径链接起来，这样我就可以轻松地将我的数据库及其文件移动到另一个目录。这可能吗？

答：是的。您需要覆盖此特定数据库的默认文件目录。
转到**File → Database properties**。您可以覆盖**Default file directory**设置。
在那里，您可以输入**General file directory**（对于文件的所有用户都有效）或**User-specific file directory**（仅对您有效） 。
如果只输入“.”（一个点，不带引号），则文件目录将与.bib文件目录相同。
要将文件放在名为**subdir **的子目录中，可以输入**“./ subdir”**（不带引号）。
如果文件放在默认文件目录或下面的目录中，文件将自动链接到相对路径。

#### 问：我想将我的参考书目条目导出到一个简单的文本文件中，以便我可以轻松地将它们导入电子表格。这可能吗？

答：是的。使用**File → Export**。
在“Filter:”下，选择“OpenOffice / LibreOffice CSV（\ * .csv）”。

#### 问：如何添加和删除多个条目的关键字？

答：选择条目。
右键点击。
选择“Manage keywords”。
然后，您可以管理出现在所有选定条目或任何选定条目中的关键字。
新关键字将添加到所有选定的条目中。

#### 问：我想要一个特定于bib文件的PDF目录。

答：右键单击.bib文件的选项卡。
选择“Database properties”。
然后在“General file directory”字段中选择特定于数据库的目录。
如果只想为您设置目录（以便其他用户使用默认目录），请使用“User-specific file directory”字段。

#### 问：链接文件时，我无法设置正确的类型。如何添加新类型？

答：转到**Options → Manage external file types**。
在这里你可以添加任意类型。

#### 问：是否有可移植版本的JabRef？

答：将文件jabref.jar存储在驱动器上。
通过双击`jar`文件，可以在任何提供Java安装的计算机上直接打开它。
在**Options → Preferences → General**中，请务必在启动时（记忆棒模式）激活“Load and Save preferences from/to jabref.xml on start-up (memory stick mode)”。

#### 问：当一个组织作为作者提供时，我的BibTeX风格无法识别它。例如，“欧洲委员会”被转换为“Commission，E。”。

答：使用大括号告诉BibTeX保持您的作者字段：`{European Commission}`。
在BibLaTeX中，您可以使用`label = {EC}`将`EC05`作为2005年欧盟委员会出版物的标签。

#### 问：BibTeX上有常见问题吗？

答：是的，请查看[英国网上TeX常见问题清单]中的“参考书目和引文”（http://www.tex.ac.uk/）。
对于德国读者来说，有[dante e.V. FAQ]（http://projekte.dante.de/DanteFAQ/LiteraturVerzeichnis）。

#### 问：RenameFile插件在哪里？导入条目后如何自动重命名文件？

答：JabRef不再支持插件（版本> 2.11）。但是，插件功能逐步集成。
重命名文件现在是“清理条目”功能的一部分（工具栏中的画笔按钮或<kbd> Ctrl </ kbd> + <kbd> Shift </ kbd> + <kbd> F7 </ kbd>）。
然后，您可以根据BibTeX密钥重命名附加文件。您可以更改下面的格式（模式）
**Options → Preferences → Import**，通过更改“默认PDF文件链接操作”下的模式。

#### 问：我有一个JabRef数据库，我想将一个子集导出为BibTeX（或BibLaTeX）格式。这个怎么做？

答：您的JabRef数据库已经是Bib（La）TeX格式的文件。只需选择要导出的条目，然后
选择**File→Save Selected as... **。更多详细信息查看[stackexchange.com](https://tex.stackexchange.com/questions/82554/jabref-can-it-export-a-subset-of-the-bibliography-in-BibTeX-format)。

#### 问：我有一个JabRef数据库，我想导出与我的LaTeX文件对应的子集。这个怎么做？

答：编译后，LaTeX会生成一个扩展名为“.aux”的文件。此文件包含引用引用的键（以及其他内容）。使用此AUX文件，JabRef可以提取相关条目。选择菜单**Tools → New subdatabase based on AUX file**。然后选择参考数据库（在打开的数据库中），并指定AUX文件。

#### 问：当我修改数据库时，我希望JabRef自动执行条目清理。这个怎么做？

答：在**File → Database properties**中，您将找到名为“Save actions”的部分。启用此功能后，您可以选择在保存时应为每个字段执行哪些操作。这应该可以帮助您保持数据库整洁。

#### 问：Google学术搜索不再有效。到底是怎么回事？

答：Google学术阻止“自动”抓取，在短时间内产生过多流量。 JabRef已经使用了两步法（在抓取实际的BibTeX数据之前使用预取列表）来规避这一点。
但是，经过太多的抓取后，JabRef被阻止了。

要解决此问题，请参阅[Google学术搜索帮助](GoogleScholar)中的*流量限制*部分。

#### 问：虽然我已经配置了正确的路径和服务器名称，但JabRef没有推送到vim。到底是怎么回事？

答：您必须使用选项`--servername`（例如`vim --servername MyVimServer`）启动vim。如果您收到`Unknown option argument`消息，则表示您的vim版本不包含*clientserver*功能（您可以使用`vim --version`进行检查）。在这种情况下，你必须安装另一个版本的`vim`。

#### 问：JabRef是否可以免费供私人和企业使用？

答：是的。 JabRef在MIT许可下分发，[允许以下用法](https://tldrlegal.com/license/mit-license)。