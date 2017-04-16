---
title: Installation
helpCategories:
  - General
---
# Installation

This page describes how to install Java, which is required for JabRef.
JabRef itself can be either installed using the installer or just running the jar file.
You get these files from <https://www.jabref.org/#downloads>.

On Windows, the installer automatically downloads the OracleJDK (i.e. Java).
You can also install it manually as described here.

The installation steps are written having the [JavaFX development branch](https://builds.jabref.org/javafx/) in mind.
Thus, it especially describes installing [JavaFX].

## Table of Contents

<!-- toc -->

- [Supported JDKs and JREs](#supported-jdks-and-jres)
- [Verify Java Installation](#verify-java-installation)
- [Installation Commands](#installation-commands)
  * [Ubuntu and Oracle Java](#ubuntu-and-oracle-java)
  * [Ubuntu 16.04 and OpenJDK](#ubuntu-1604-and-openjdk)
  * [Debian Jessie 8 and Oracle Java](#debian-jessie-8-and-oracle-java)
    + [Using the ppa](#using-the-ppa)
    + [Directly from Oracle](#directly-from-oracle)
  * [Fedora 23 and Oracle Java](#fedora-23-and-oracle-java)
  * [CentOS 6 or 7 and Oracle Java](#centos-6-or-7-and-oracle-java)
  * [Windows and Oracle Java](#windows-and-oracle-java)
  * [Mac OS and Oracle Java](#mac-os-and-oracle-java)
- [JabRef and OpenOffice/LibreOffice integration](#jabref-and-openofficelibreoffice-integration)

<!-- tocstop -->

## Supported JDKs and JREs

JavaFX is not included in every Java runtime environment or development kit.
Therefore, we highly recommend to use [Oracle Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html).
JavaFX is included since Java 1.8.0_60.
The other official support for JavaFX is [OpenJDK](http://openjdk.java.net/install/index.html) with the external library [OpenJFX](http://packages.ubuntu.com/wily/openjfx-source).
Unfortunately, the installation is not always straight forward.
Therefore, we only recommend this if you know what you are doing.
In case you want to use OpenJDK with OpenJFX in general you should follow this [instructions](https://wiki.openjdk.java.net/display/OpenJFX/Building+OpenJFX).
For Ubuntu 16.04 LTS head to the section [Installation Commands](#ubuntu-openjdk-16-04).


## Verify Java Installation

In case you already have a Java version installed - or you closely followed the steps below, you can check your Java version by typing the following command into your command line interface:

`java -version`

It is possible having multiple Java versions at the same time.
Set your preferred Java version on Linux distributions using the following command:

`sudo update-alternatives --config java`

and choose it by typing the number matching the Java version.

Your Java version should look like this, depending on your operating system and JDK/JRE:

**Oracle Java 32-Bit:**

```
Java version "1.8.0_x" 
Java(TM) SE Runtime Environment (build 1.8.x)
Java HotSpot(TM) Client  VM (build 25.x, mixed mode)
```


**Oracle Java 64-Bit:**

```
Java version "1.8.0_x" 
Java(TM) SE Runtime Environment (build 1.8.x)
Java HotSpot(TM) 64-Bit Server VM (build 25.x, mixed mode)
```


**OpenJDK 32-Bit:**

```
OpenJDK version "1.8.0_x" 
OpenJDK Runtime Environment (build 1.8.0_x)
OpenJDK Client VM (build 25.x, mixed mode)
```


**OpenJDK 64-Bit:**

```
OpenJDK version "1.8.0_x" 
OpenJDK Runtime Environment (build 1.8.0_x)
OpenJDK 64-Bit Server VM (build 25.x, mixed mode)
```

If this does not report to be a product from Oracle (for instance tells you that it is a GCJ VM) even if you have installed the Oracle JVM then you need to change your setup.
In the following, the installation is documented for Ubuntu, Debian, Fedora, CentOS, Windows, and MacOSX.


## Installation Commands

### Ubuntu and Oracle Java

This applies for both 32bit and 64bit and both Ubuntu 14.04 LTS and 16.04 LTS.

Install Oracle JDK with "personal packages archiv (ppa)" which includes an automated update function:

1. Add repository: `sudo add-apt-repository ppa:webupd8team/java`
2. Update package list: `sudo apt-get update`
3. Install: `sudo apt-get install oracle-java8-installer`

If you want to install JRE or install java without ppa you should follow these [instructions](https://help.ubuntu.com/community/Java).

### Ubuntu 16.04 and OpenJDK

Just install JavaFX by executing `sudo apt-get install openjfx`


### Debian Jessie 8 and Oracle Java

#### Using the ppa

1. Add repository: `sudo sh -c 'echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list'`
2. Add GPG key: `sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886`
3. Update package list: `sudo apt-get update`
4. Install: `sudo apt-get install oracle-java8-installer`

Based on: <http://tecadmin.net/install-java-8-on-debian/>

#### Directly from Oracle

1. Download tag.gz-file from the [Java SE Development Kit 8 Downloads] site
2. Navigate to the folder where you downloaded the tar.gz-file
3. Create package with `make-jpkg jdk-[Version]-linux-x64.tar.gz` including the most recent Java version instead of`[Version]`
4. Get root access with `su`
5. Install with `dpkg -i oracle-java8-jdk_[Version].deb`


### Fedora 23 and Oracle Java

1. Download rpm-file from the [Java SE Development Kit 8 Downloads] site
2. Navigate to the folder where you downloaded the rpm-file
3. Install: `rpm -ivh jdk-8u101-linux-x64.rpm`
4. Upgrade: `rpm -Uvh jdk-8u101-linux-x64.rpm`
5. Set alternatives: `alternatives --config java` (choose Oracle version)

Recent JabRef builds are available at <https://build.opensuse.org/package/show/home:cornell_vrdc/jabref3>.

### CentOS 6 or 7 and Oracle Java

1. Download rpm-file from the [Java SE Development Kit 8 Downloads] site
2. Install with `sudo yum localinstall jre-[Version]-linux-[BIT].rpm` include the most recent Java version for `[Version]` and `i586` or `x64` for `[BIT]` depending on your OS version


### Windows and Oracle Java

The "modern" way:

1. Install chocolatey by following the steps described at https://chocolatey.org/install
2. Execute `choco install jre8`

At any time, you can update to the latest Java runtime environment by executing `choco upgrade all`.

The "old" way:

1. Download exe file from the [Java SE Development Kit 8 Downloads] site
2. Run installation wizzard


### Mac OS and Oracle Java

1. Download dmg-file from the [Java SE Development Kit 8 Downloads] site
2. Run installation wizzard

## JabRef and OpenOffice/LibreOffice integration

The connection from JabRef to Libre Office requires some office related `jar`-archives to be present.
The Windows installer for OpenOffice/LibreOffice automatically installs the required libraries.
For Linux you have to install the package `libreoffice-java-common`.

 [Java SE Development Kit 8 Downloads]: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
 [JavaFX]: https://en.wikipedia.org/wiki/JavaFX

