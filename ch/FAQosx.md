---
title：JabRef和Mac OS X.
---

# JabRef和Mac OS X.

#### 问：下载并解压后，OS X显示“JabRef Installer.app”无法打开，因为它来自一个身份不明的开发人员。

答：目前这是必要的，因为我们的代码签名基础设施无法运行。
`Ctrl- click`在Finder中打开下载的`.dmg`文件以安装JabRef。

#### 问：下载并解压缩后，OS X显示“包已损坏并移至垃圾箱”

答：在Mac OS X Lion上，可以通过将系统首选项中“安全和隐私”下的Gate Keeper安全设置暂时更改为“Anywhere”来解决此问题。
之后，您可以打开JabRef应用程序。
当您打开一次后，您可以更改安全设置，您仍然可以打开该应用程序。

#### 问：JabRef 2.11没有明确的Mac OS X应用程序

答：我们无法为Mac OS X生成JabRef 2.11的工作版本。
请使用版本2.11的jar，或查看较新的3.X版本（完全支持Mac OS X）。

#### 问：是否可以直接从JabRef 2.x升级到JabRef 3.x？

答：由于3.x安装程序的更改，需要执行任何JabRef 3.x版本的全新安装。
您需要从“Applications”文件夹中删除任何以前安装的JabRef 2.x应用程序。
然后，您可以使用安装程序安装最新的JabRef 3.x版本。
只要您运行任何JabRef 3.x版本，就可以使用安装程序升级JabRef。

#### 问：我正在尝试安装JabRef，但我被“JabRef安装程序无法打开，因为它来自一个身份不明的开发人员”。

答：要覆盖它，<kbd> Ctrl </ kbd> + <kbd>, 单击</ kbd>，然后选择“打开”，它会发出相同的警告，但可以覆盖它。然后你可以安装。

#### 问：我正在尝试安装JabRef，但我被“JabRef安装程序错误：下载Java（TM）运行时环境时出错”阻止。请检查您的互联网连接并重新开始设置。“

答：出现问题是因为您没有安装Java 8，并且自动下载和安装以某种方式失败...可以手动下载： <http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>

#### 问：Jabref在MacOS Sierra上缓慢/挂起

答：这是一些用户在Mac OS Sierra上使用JabRef 4.0或更高版本时遇到的问题。这似乎是MacOS上Java的网络部分中的一个错误。您可以尝试将localhost明确地添加到`/ etc / hosts`，如[here](https://dzone.com/articles/macos-sierra-problems-with-javanetinetaddress-getl)所述。

#### 问：主表中没有显示某些字符（数学字符或某些大写字母）。

答：这可能是与您使用的字体有关的问题。您可以下载支持数学字母数字符号的其他字体，例如FreeSerif或Cambria Math。可以在<http://www.fileformat.info/info/unicode/block/mathematical_alphanumeric_symbols/fontsupport.htm>上找到支持Math Unicode块的字体列表。