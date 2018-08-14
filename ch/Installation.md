---
title：安装
---
# 安装

本页介绍如何安装JabRef所需的Java。
JabRef本身可以使用安装程序安装，也可以只运行jar文件。
您可以从<https://www.jabref.org/#downloads>获取这些文件。

在Windows上，安装程序会自动下载OracleJDK（即Java）。
您也可以按照此处的说明手动安装它。

安装步骤的编写考虑了[JavaFX开发分支]（https://builds.jabref.org/javafx/）。
因此，它特别描述了安装[JavaFX]。

## 目录

<！ - toc - >

- [支持的JDK和JRE](＃supported-jdks-and-jres)
- [验证Java安装](＃verify-java-installation)
- [安装命令](#instalming-commands)
  * [Ubuntu和Oracle Java](＃ubuntu-and-oracle-java)
  * [Ubuntu 16.04和OpenJDK](＃ubuntu-1604-and-openjdk)
  * [Debian Jessie 8和Oracle Java](＃debian-jessie-8-and-oracle-java)
    + [使用ppa](＃using-the-ppa)
    + [直接来自Oracle](＃direct-from-oracle)
  * [Fedora 23和Oracle Java](＃fedora-23-and-oracle-java)
  * [Fedora和OpenJDK](＃fedora-and-openjdk)
  * [CentOS 6或7和Oracle Java]（＃centos-6-or-7-and-oracle-java）
  * [openSUSE](＃opensuse)
  * [Windows和Oracle Java](＃windows-and-oracle-java)
  * [Mac OS和Oracle Java](＃mac-os-and-oracle-java)
- [JabRef和OpenOffice / LibreOffice集成](＃jabref-and-openofficelibreoffice-integration)

<！ - tocstop - >

## 支持的JDK和JRE

JavaFX不包含在每个Java运行时环境或开发工具包中。
因此，我们强烈建议使用[Oracle Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)。
自Java 1.8.0_60以来包含JavaFX。
JavaFX的另一个官方支持是[OpenJDK](http://openjdk.java.net/install/index.html)和外部库[OpenJFX](http://packages.ubuntu.com/wily/openjfx-source )。
不幸的是，安装并不总是直截了当。
因此，如果您知道自己在做什么，我们只推荐这个。
如果你想在OpenJFX中使用OpenJDK，你应该遵循这些[说明](https://wiki.openjdk.java.net/display/OpenJFX/Building+OpenJFX)。
对于Ubuntu 16.04 LTS，请转到[安装命令](＃ubuntu-openjdk-16-04)。


## 验证Java安装

如果您已经安装了Java版本 - 或者您仔细按照以下步骤操作，则可以通过在命令行界面中键入以下命令来检查Java版本：

`java -version`

可以同时拥有多个Java版本。
在基于debian的Linux发行版上，使用以下命令设置首选Java版本：

`sudo update-alternatives --config java`

并通过键入与Java版本匹配的数字来选择它。

您的Java版本应如下所示，具体取决于您的操作系统和JDK / JRE：

**Oracle Java 32位：**

```
Java版“1.8.0_x”
Java（TM）SE运行时环境（版本1.8.x）
Java HotSpot（TM）客户端VM（build 25.x，混合模式）
```


**Oracle Java 64位：**

```
Java版“1.8.0_x”
Java（TM）SE运行时环境（版本1.8.x）
Java HotSpot（TM）64位服务器VM（版本25.x，混合模式）
```


**OpenJDK 32位：**

```
OpenJDK版“1.8.0_x”
OpenJDK运行时环境（build 1.8.0_x）
OpenJDK客户端VM（build 25.x，混合模式）
```


**OpenJDK 64位：**

```
OpenJDK版“1.8.0_x”
OpenJDK运行时环境（build 1.8.0_x）
OpenJDK 64位服务器VM（build 25.x，混合模式）
```

如果这不是Oracle的产品（例如告诉您它是GCJVM），即使您已安装Oracle JVM，也需要更改设置。
在下文中，为Ubuntu，Debian，Fedora，CentOS，Windows和MacOSX记录了安装。


## 安装命令

### Ubuntu和Oracle Java

这适用于32位和64位以及Ubuntu 14.04 LTS和16.04 LTS。

使用“个人软件包archiv（ppa）”安装Oracle JDK，其中包括自动更新功能：

1.添加存储库：`sudo add-apt-repository ppa：webupd8team / java`
2.更新包列表：`sudo apt-get update`
3.安装：`sudo apt-get install oracle-java8-installer`

如果要安装JRE或安装不带ppa的java，则应遵循这些[说明](https://help.ubuntu.com/community/Java)。

### Ubuntu 16.04和OpenJDK

只需通过执行`sudo apt-get install openjfx`安装JavaFX


### Debian Jessie 8和Oracle Java

#### 使用ppa

1.添加存储库：`sudo sh -c'echo“deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main”>> / etc / apt / sources.list'`
2.添加GPG密钥：`sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886`
3.更新包列表：`sudo apt-get update`
4.安装：`sudo apt-get install oracle-java8-installer`

基于：<http://tecadmin.net/install-java-8-on-debian/>

#### 直接来自Oracle

1.从[Java SE Development Kit 8 Downloads]站点下载tag.gz文件
2.导航到下载tar.gz文件的文件夹
3.使用`make-jpkg jdk- [Version] -linux-x64.tar.gz`创建包，包括最新的Java版本而不是`[Version]
4.使用`su`获取root访问权限
5.使用`dpkg -i oracle-java8-jdk_ [Version] .deb`进行安装


### Fedora 23和Oracle Java

1.从[Java SE Development Kit 8 Downloads]站点下载rpm文件
2.导航到下载rpm文件的文件夹
3.安装：`rpm -ivh jdk-8u101-linux-x64.rpm`
4.升级：`rpm -Uvh jdk-8u101-linux-x64.rpm`
5.设置备选方案：`alternatives --config java`（选择Oracle版本）

最近的JabRef版本可从<https://build.opensuse.org/package/show/home:cornell_vrdc/jabref3>获得。

### Fedora和OpenJDK

通过执行`sudo dnf install openjfx java-1.8.0-openjdk-openjfx`安装JavaFX（实际上是OpenJFX）

### CentOS 6或7和Oracle Java

1.从[Java SE Development Kit 8 Downloads]站点下载rpm文件
2.使用`sudo yum localinstall jre- [Version] -linux- [BIT] .rpm`安装包含`[版本]`和`i586`的最新Java版本或`[BIT]`的`x64`取决于你的OS版本

### openSUSE

可以通过“一键安装”安装必要的Java包：

1. [OpenJDK](https://software.opensuse.org/package/java-1_8_0-openjdk)
2. [java-openjfx](https://software.opensuse.org/package/java-openjfx?search_term=openjfx)

### Windows和Oracle Java

“新”方式：

1.按照https://chocolatey.org/install中描述的步骤安装chocolatey
2.执行`choco install jre8`

您可以随时通过执行`choco upgrade all`来更新到最新的Java运行时环境。

“老”的方式：

1.从[Java SE Development Kit 8 Downloads]站点下载exe文件
2.运行安装wizzard


### Mac OS和Oracle Java

1.从[Java SE Development Kit 8 Downloads]站点下载dmg文件
2.运行安装wizzard

## 在运行JabRef时冻结

一些使用macOS Sierra的用户在使用JabRef时报告了冻结。显然，[添加127.0.0.1的主机映射](https://dzone.com/articles/macos-sierra-problems-with-javanetinetaddress-getl)似乎解决了这些问题。

在几个Linux发行版中也报告了随机冻结。看起来`GTKLookAndFeel`导致了这些问题，并在`选项 - >外观 - >外观和感觉'下选择了一个不同的外观类来解决问题。

## JabRef和OpenOffice / LibreOffice集成

从JabRef到Libre Office的连接需要一些与办公室相关的`jar`-archives。
OpenOffice / LibreOffice的Windows安装程序会自动安装所需的库。
对于Linux，您必须安装包`libreoffice-java-common`。

 [Java SE Development Kit 8 Downloads]：http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
 [JavaFX]：https://en.wikipedia.org/wiki/JavaFX
