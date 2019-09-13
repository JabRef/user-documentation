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

- [Supported JDKs and JREs](#supported-jdks-and-jres)
    - [JabRef 5.x](#jabref-5x)
    - [JabRef 4.x](#jabref-4x)
- [Verify Java Installation](#verify-java-installation)
- [Installation Commands](#installation-commands)
    - [JabRef 5.x](#jabref-5x-1)
      - [Building From Source](#building-from-source)
      - [Using Prebuilt Binaries](#using-prebuilt-binaries)
    - [JabRef 4.x](#jabref-4x-1)
        - [Ubuntu and Oracle Java](#ubuntu-and-oracle-java)
        - [Ubuntu and OpenJDK](#ubuntu-and-openjdk)
        - [Debian Jessie 8 and Oracle Java](#debian-jessie-8-and-oracle-java)
            - [Using the ppa](#using-the-ppa)
            - [Directly from Oracle](#directly-from-oracle)
        - [Fedora 23 and Oracle Java](#fedora-23-and-oracle-java)
        - [Fedora and OpenJDK](#fedora-and-openjdk)
        - [CentOS 6 or 7 and Oracle Java](#centos-6-or-7-and-oracle-java)
        - [openSUSE](#opensuse)
        - [Arch and Manjaro](#arch-and-manjaro)
        - [Windows and Oracle Java](#windows-and-oracle-java)
        - [Mac OS and Oracle Java](#mac-os-and-oracle-java)
- [Freezes when running JabRef](#freezes-when-running-jabref)
- [JabRef and OpenOffice/LibreOffice integration](#jabref-and-openofficelibreoffice-integration)

## Supported JDKs and JREs

### JabRef 5.x

> JabRef 5.x requires JRE 11

### JabRef 4.x

> JabRef 4.x requires JRE 8 (and does not run at JRE 9 onwoards)

JavaFX is not included in every Java runtime environment or development kit.
Therefore, we highly recommend to use [Oracle Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html).
JavaFX is included since Java 1.8.0_60.
The other official support for JavaFX is [OpenJDK](http://openjdk.java.net/install/index.html) with the external library [OpenJFX](http://packages.ubuntu.com/wily/openjfx-source).
Unfortunately, the installation is not always straight forward.
Therefore, we only recommend this if you know what you are doing.
In case you want to use OpenJDK with OpenJFX in general you should follow this [instructions](https://wiki.openjdk.java.net/display/OpenJFX/Building+OpenJFX).
For Ubuntu 16.04 LTS and 18.04 LTS head to the section [Installation Commands](#installation-commands).

## Verify Java Installation

In case you already have a Java version installed - or you closely followed the steps below, you can check your Java version by typing the following command into your command line interface:

`java -version`

It is possible having multiple Java versions at the same time.
On debian based Linux distributions set your preferred Java version using the following command:

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

### JabRef 5.x

JabRef 5.x is shipped with a lightweight Java runtime environment that includes
only the Java dependencies JabRef uses. There are two major ways of obtaining
JabRef for your platform.

#### Building From Source

This method is mainly for package maintainers and users who would like to build
the latest snapshots of JabRef directly from the source.

To build JabRef from source, you first need to have a working Java Development
Kit 11 (JDK 11) and Git installed on your system. After installing the two
requirements, you open a terminal window (i.e., a command prompt) and type the
following:

```
git clone https://github.com/JabRef/jabref
cd jabref
git submodule update --init
./gradlew assemble
./gradlew jlink
```

In a nutshell, you clone the latest snapshot of JabRef into `jabref` directory,
change directory to `jabref`, initialize and update all the submodules
(dependencies) of JabRef, assemble them to be built via JDK 11, and finally
build and link them together.

The output should be the `build/image` subdirectory that contains the JabRef
binary with all of its Java dependencies. To start JabRef, you need to run
`bin/JabRefMain` (in Linux and MacOS) or `bin/JabRefMain.bat` (in Windows) under
`build/image` subdirectory.

#### Using Prebuilt Binaries

This method is mainly for anyone who would like to download and run the latest
snapshot of JabRef.

To use the prebuilt binaries, simply visit http://builds.jabref.org/master/ and
download the packaged binaries (e.g., `dmg` files for MacOS and `exe` files for
Windows), run them and follow the instructions. We also provide generic archive
files (e.g., `tar.gz` files for Linux and MacOS, and `zip` files for Windows)
which can be downloaded and extracted. Inside the archive files you will find a
`bin` subdirectory which contains the binary needed to run JabRef (i.e.,
`JabRefMain` for Linux and MacOS, and `JabRefMain.bat` for Windows).

### JabRef 4.x

#### Ubuntu and Oracle Java

This applies for both 32bit and 64bit and both Ubuntu 14.04 LTS, 16.04 LTS and 18.04 LTS.

Install Oracle JDK with "personal packages archiv (ppa)" which includes an automated update function:

1. Add repository: `sudo add-apt-repository ppa:webupd8team/java`
2. Update package list: `sudo apt-get update`
3. Install: `sudo apt-get install oracle-java8-installer`

If you want to install JRE or install java without ppa you should follow these [instructions](https://help.ubuntu.com/community/Java).

#### Ubuntu and OpenJDK

Just install JavaFX by executing `sudo apt-get install openjfx`.

For Ubuntu 18.04 and newer, `openjfx` [uses the Java version 11](https://github.com/JabRef/help.jabref.org/issues/204) which is currently not supported by JabRef. Hence, use an older version:

1. If you accidently installed the new version, remove it with `sudo apt purge openjfx`.
2. Install an older version with `sudo apt install openjfx=8u161-b12-1ubuntu2 libopenjfx-jni=8u161-b12-1ubuntu2 libopenjfx-java=8u161-b12-1ubuntu2`.
3. To prevent the software updater from installing the newer not supported version, mark it to be not updated with `sudo apt-mark hold openjfx libopenjfx-jni libopenjfx-java`. 

This also works for Linux Mint 19.1 Tessa which is based on Ubuntu 18.04.

#### Debian Jessie 8 and Oracle Java

##### Using the ppa

1. Add repository: `sudo sh -c 'echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list'`
2. Add GPG key: `sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886`
3. Update package list: `sudo apt-get update`
4. Install: `sudo apt-get install oracle-java8-installer`

Based on: <http://tecadmin.net/install-java-8-on-debian/>

##### Directly from Oracle

1. Download tag.gz-file from the [Java SE Development Kit 8 Downloads] site
2. Navigate to the folder where you downloaded the tar.gz-file
3. Create package with `make-jpkg jdk-[Version]-linux-x64.tar.gz` including the most recent Java version instead of`[Version]`
4. Get root access with `su`
5. Install with `dpkg -i oracle-java8-jdk_[Version].deb`

#### Fedora 23 and Oracle Java

1. Download rpm-file from the [Java SE Development Kit 8 Downloads] site
2. Navigate to the folder where you downloaded the rpm-file
3. Install: `rpm -ivh jdk-8u101-linux-x64.rpm`
4. Upgrade: `rpm -Uvh jdk-8u101-linux-x64.rpm`
5. Set alternatives: `alternatives --config java` (choose Oracle version)

Recent JabRef builds are available at <https://build.opensuse.org/package/show/home:cornell_vrdc/jabref3>.

#### Fedora and OpenJDK

1. Install OpenJDK: `sudo dnf install java-1.8.0-openjdk`
2. Install JavaFX (actually OpenJFX): `sudo dnf install openjfx java-1.8.0-openjdk-openjfx`
3. Download the JabRef-[version].jar from the [JabRef Website](http://www.jabref.org/).
4. In the folder of the jar-file run `java -jar JabRef-[version].jar`

*Warning*: To install JavaFX, it is not sufficient to just install the `openjfx` package.
*Warning*: There is a [bug](https://bugzilla.redhat.com/show_bug.cgi?id=1547378) in `openjfx` in Fedora 29.
JabRef versions newer than 4.3.1 will not work with OpenJDK and Fedora 29 until this is fixed. See also [issue 4473](https://github.com/JabRef/jabref/issues/4473).

#### CentOS 6 or 7 and Oracle Java

1. Download rpm-file from the [Java SE Development Kit 8 Downloads] site
2. Install with `sudo yum localinstall jre-[Version]-linux-[BIT].rpm` include the most recent Java version for `[Version]` and `i586` or `x64` for `[BIT]` depending on your OS version

#### openSUSE

The necessary Java packages can be installed via "1-click installs":

1. [OpenJDK](https://software.opensuse.org/package/java-1_8_0-openjdk)
2. [java-openjfx](https://software.opensuse.org/package/java-1_8_0-openjfx)

#### Arch and Manjaro

Two packages are available in the [Arch User Repository (AUR)](https://aur.archlinux.org/):

1. [jabref](https://aur.archlinux.org/packages/jabref): The current release
2. [jabref-latest](https://aur.archlinux.org/packages/jabref-latest/): The latest version from the [GitHub](https://github.com/JabRef/jabref) _master_ branch

Both packages install precompiled jar files and add a command and a .desktop file to the OS.

#### Windows and Oracle Java

The "modern" way:

1. Install chocolatey by following the steps described at https://chocolatey.org/install
2. Execute `choco install jre8`

At any time, you can update to the latest Java runtime environment by executing `choco upgrade all`.

The "old" way:

1. Download exe file from the [Java SE Development Kit 8 Downloads] site
2. Run installation wizzard

#### Mac OS and Oracle Java

1. Download dmg-file from the [Java SE Development Kit 8 Downloads] site
2. Run installation wizzard

## Freezes when running JabRef

Some users with macOS Sierra have reported freezes when using JabRef. Apparently, [adding a host mapping for 127.0.0.1](https://dzone.com/articles/macos-sierra-problems-with-javanetinetaddress-getl) seems to solve these issues.

Random freezes have also been reported on several Linux distributions. It seems that the `GTKLookAndFeel` is causing these problems and selecting a different look and feel class under `Options -> Appearance -> Look and Feel` solves the problem.

## JabRef and OpenOffice/LibreOffice integration

The connection from JabRef to Libre Office requires some office related `jar`-archives to be present.
The Windows installer for OpenOffice/LibreOffice automatically installs the required libraries.
For Linux you have to install the package `libreoffice-java-common`.

 [Java SE Development Kit 8 Downloads]: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
 [JavaFX]: https://en.wikipedia.org/wiki/JavaFX
