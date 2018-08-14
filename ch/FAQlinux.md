---
title：JabRef和Linux
---

# JabRef和Linux

#### 有没有办法在Ubuntu的开始菜单中包含JabRef？

就在这里。有关详细信息，请参见<http://askubuntu.com/a/721387/196423>。

#### JabRef无法在Linux下启动！我能做什么？

JabRef需要Java 8。
请按照[安装页面]（安装）中提供的步骤进行操作。
JabRef尚未在Java 9下运行。请参阅<https://github.com/JabRef/jabref/issues/2594>

您可能会看到错误消息“错误：无法找到或加载主类net.sf.jabref.JabRefMain`。
这意味着，您没有在Java运行时环境中激活[JavaFX](https://en.wikipedia.org/wiki/JavaFX)支持。
如果您使用[OpenJDK](http://openjdk.java.net/)，通常会发生这种情况，需要单独设置[OpenJFX](https://wiki.openjdk.java.net/display/OpenJFX/Main) 。

#### 我在Debian / Ubuntu上点击JabRef图标，但我无法从命令行启动JabRef。哪里不对？

您安装了多个Java虚拟机，并在命令行下选择了错误的虚拟机。
查看上一个问题，告诉您如何更改使用的虚拟机。

对于Ubuntu，您还可以查看[Java上的Ubuntu页面](https://help.ubuntu.com/community/Java)。


#### JabRef是否在免费Java（Classpath，Kaffee，GCJ等）下运行？

据我们所知，由于我们的依赖性，JabRef尚未在这些免费的JVM上运行。
但是，据报道，JabRef在[IcedTea](http://fedoraproject.org/wiki/Features/IcedTea)运行时运行良好，该运行时基于[OpenJDK](http://openjdk.java.net/)使用[GNU Classpath](http://www.gnu.org/software/classpath/)构建以填充缺少的类。
外观上遇到了一些问题（参见问题[＃393](https://github.com/JabRef/jabref/issues/393)和[＃2003](https://github.com/JabRef/的JabRef /问题/ 2003)）。
如果新版本提供不同的结果，请告诉我们。
如果您有想法或专业知识使JabRef在Classpath下工作，请告诉我们。