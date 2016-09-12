---
title: Installation
---

# Installation

**This help page gets relevant if the [JavaFX](https://builds.jabref.org/javafx/) technology will be released!**

This guide helps you to install Java which enable to run JabRef with ported JavaFX user interface elements.

## Supported JDKs and JREs

JavaFX is not included in every Java runtime environment or development kit.
Therefore we highly recommend to use [Oracle Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html) because JavaFX is already included since Java 1.8.0_60.

The other official support for JavaFX would be [OpenJDK](http://openjdk.java.net/install/index.html) with the external library [OpenJFX](http://packages.ubuntu.com/wily/openjfx-source). Unfortunately the installation isn't always straight forward which is why we only recommend this if you know what you are doing. If you want to use OpenJDK with OpenJFX in general you should follow this [instructions](https://wiki.openjdk.java.net/display/OpenJFX/Building+OpenJFX). For Ubuntu 16.04 LTS you can use the section in [Installation Commands](#ubuntu-openjdk-16-04).

## Verify Java installation

If you don't know your Java version, you can check it by typing the following command into your command-line interface:

`java -version`

It's possible to store several Java version at the same time.
Set your required java on linux distributions with following command:

`alternatives --config java`

Choose it with typing the the number which belongs to the java version.
Your java version should look like this, depending on your operating system and JDK/JRE:

**Oracle Java 64-Bit:**

Java version "1.8.0\_x" 
Java(TM) SE Runtime Environment (build 1.8.x)
Java HotSpot(TM) 64-Bit Server VM (build 25.x, mixed mode)

**Oracle Java 32-Bit:**

Java version "1.8.0\_x" 
Java(TM) SE Runtime Environment (build 1.8.x)
Java HotSpot(TM) Client  VM (build 25.x, mixed mode)

**OpenJDK 64-Bit:**

OpenJDK version "1.8.0\_x" 
OpenJDK Runtime Environment (build 1.8.0\_x)
OpenJDK 64-Bit Server VM (build 25.x, mixed mode)

**OpenJDK 32-Bit:**

OpenJDK version "1.8.0\_x" 
OpenJDK Runtime Environment (build 1.8.0\_x)
OpenJDK Client VM (build 25.x, mixed mode)



## Installation Commands

### Ubuntu Oracle Java
Install oracle JDK with "personal packages archiv(ppa)" which includes an automated update function.
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