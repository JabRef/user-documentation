---
title: Installation
---

# Installation

**This help page gets relevant if the [JavaFX](https://builds.jabref.org/javafx/) technology will be released!**

This guide instructs you to install Java in order to run JabRef.

## Necessary Pakages

JavaFX is not included in every Java runtime environment or development kit.
We highly recommend to use [Oracle Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html), because JavaFX is already included since Java 8.

An alternative to Oracle Java would be OpenJDK with the external library OpenJFX. We only recommend this if you know what you are doing. If you want to use OpenJDK you should follow this [instructions](https://wiki.openjdk.java.net/display/OpenJFX/Building+OpenJFX)

You can download these different versions here:

* [Oracle Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* [OpenJDK](http://openjdk.java.net/install/index.html)
* [OpenJFX](http://packages.ubuntu.com/wily/openjfx-source)

You can check your Java version by typing the following command into your command-line interface:

`java -version`

It should return messages like this, depending on your operating system:

**Oracle Java 64-Bit:**

Java version "1.8.0\_101" Java(TM) SE Runtime Environment (build 1.8.x)Java HotSpot(TM) 64-Bit Server VM (build 25.x, mixed mode)

**Oracle Java 32-Bit:**

Java version "1.8.0\_101" Java(TM) SE Runtime Environment (build 1.8.x)Java HotSpot(TM) Client  VM (build 25.x, mixed mode)

**OpenJDK 64-Bit:**

Openjdk version "1.8.0\_91" OpenJDK Runtime Environment (build 1.8.0\_x)OpenJDK 64-Bit Server VM (build 25.x, mixed mode)

**OpenJDK 32-Bit:**

Openjdk version "1.8.0\_91" OpenJDK Runtime Environment (build 1.8.0\_x)OpenJDK Client VM (build 25.x, mixed mode)


## Installation Commands

### Ubuntu Oracle Java
Install oracle JDK with "personal packages archiv" that includes an automated update function.
If you want to install JRE or install java without ppa you should follow this [instuctions](https://wiki.ubuntuusers.de/Java/Installation/Oracle_Java/Java_8/).

1. Add repository `sudo add-apt-repository ppa:webupd8team/java`
2. Update package list `sudo apt-get update`
3. Install  `sudo apt-get install oracle-java8-installer`

### Ubuntu OpenJDK 16.04

1. Install Java with `sudo apt-get install openjdk-8-jdk`
2. Install JavaFX with `sudo apt-get install openjfx`

### Fedora 23 Oracle Java

1. Download rpm-file from [oracle](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
2. Navigate to the folder where you downloaded the rpm-file
3. Install with `rpm -ivh jdk-8u101-linux-x64.rpm`
4. Upgrade with `rpm -Uvh jdk-8u101-linux-x64.rpm`
5. Set alternatives with `alternatives --config java` (Choose Oracle version)

### Debian Jessie 8

1. Download tag.gz-file from [oracle](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
2. Navigate to the folder where you downloaded the tar.gz-file
3. Create package with `make-jpkg jdk-[Version]-linux-x64.tar.gz` including the most recent Java version instead of`[Version]`
4. Get root access with `su`
5. Install with `dpkg -i oracle-java8-jdk_[Version].deb`

### CentOS 6 or 7
1. Download rpm-file from [oracle](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
2. Install with `sudo yum localinstall jre-[Version]-linux-[BIT].rpm` include the most recent Java version for `[Version]` and `i586` or `x64` for `[BIT]` depending on your OS version

### Windows

1. Download exe-file from [oracle](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
2. Run installation wizzard

### Mac OS
1. Download dmg-file from [oracle](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
2. Run installation wizzard