---
title: JabRef和Windows
---

# JabRef和Windows

#### 问：我的高分辨率显示器有问题。我能做什么？

您必须将JabRef的“兼容性设置”更改为“禁用高DPI设置的缩放”。
有关详细信息，请访问https://www.microsoft.com/surface/en-us/support/apps-and-windows-store/app-display-issues?os=windows-10

进一步阅读：https://github.com/JabRef/jabref/issues/415
和
http://discourse.jabref.org/t/jabref-3-6-on-hires-laptop-screen-messed-up/277。

#### 问：如何使用JabRef作为Microsoft Word的后端？

您可以直接使用Word的内部参考管理器中的引用。
简短说明：以XML格式导出参考书目并替换`％APPDATA％\ Roaming \ Microsoft \ Bibliography`中的Sources.xml。
详细解释：请参阅[在Word文档中使用JabRef引用](http://www.ademcan.net/?d=2012/01/30/15/23/05-using-jabref-references-in-word-documents) 。

另一种选择是使用[Bibtex4Word](http://www.ee.ic.ac.uk/hp/staff/dmb/perl/index.html)。

最后一个选项是使用[Docear4Word](https://github.com/Docear/Docear4Word)，计划将其移植到JabRef（参见[JabRef4Word](https://github.com/JabRef/JabRef4Word)） 。

#### 问：如何使用热键<kbd>⊞</ kbd> + <kbd> J </ kbd>启动或聚焦JabRef（<kbd> Win </ kbd> + <kbd> J </ kbd> ）？

使用[koppor's autohotkey提供的[AutoHotkey](http://www.autohotkey.com/)和[JabRef.ahk](https://github.com/koppor/autohotkey-scripts/blob/master/JabRef.ahk)脚本

#### 问：JAR文件无法启动

确保你执行了`choco install jre8`（由[chocolatey](https://chocolatey.org/)提供）。
如果仍然遇到问题，请使用[Jarfix](https://johann.loefflmann.net/en/software/jarfix/index.html)将文件关联恢复到jar文件。

#### 问：我得到`警告：无法在根0x80000002打开/创建prefs根节点Software \ JavaSoft \ Prefs。 Windows RegCreateKeyEx（...）返回错误代码5.`

启动regedit并创建以下密钥：`HKEY_LOCAL_MACHINE \ SOFTWARE \ Wow6432Node \ JavaSoft \ Prefs`。 [源](https://stackoverflow.com/a/20798112/873282)