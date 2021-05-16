# Installation

JabRef itself can be either installed using the installer or just running the portable version. You get these files from [http://downloads.jabref.org/](http://downloads.jabref.org/).

On Windows, the installer automatically downloads the OracleJDK \(i.e. Java\). You can also install it manually as described here.

* [Installation Commands](installation.md#installation-commands)
  * [JabRef 5.x](installation.md#jabref-5x-1)
  * [JabRef 4.x](installation.md#jabref-4x-1)
* [Troubleshooting](installation.md#troubleshooting)
  * [Freezes when running JabRef](installation.md#freezes-when-running-jabref)
  * [JabRef and OpenOffice/LibreOffice integration](installation.md#jabref-and-openofficelibreoffice-integration)

## Places do download JabRef

### Official Download Mirrors

* [http://downloads.jabref.org/](http://downloads.jabref.org/) - redirects to the preferred place to download JabRef
* [http://www.fosshub.com/JabRef.html](http://www.fosshub.com/JabRef.html)
* [https://github.com/JabRef/jabref/releases](https://github.com/JabRef/jabref/releases)
  * Download statistics: [http://www.somsubhra.com/github-release-stats/?username=JabRef&repository=jabref](http://www.somsubhra.com/github-release-stats/?username=JabRef&repository=jabref)
* [http://www.macupdate.com/app/mac/19869/jabref](http://www.macupdate.com/app/mac/19869/jabref)
* [http://www.heise.de/download/jabref.html](http://www.heise.de/download/jabref.html)
* Development snapshots: [https://builds.jabref.org/master/](https://builds.jabref.org/master/)

### Other mirrors NOT updated/maintained by JabRef team

* [http://www.computerbild.de/download/JabRef-11693358.html](http://www.computerbild.de/download/JabRef-11693358.html)
* [http://filehippo.com/de/download\_jabref/](http://filehippo.com/de/download_jabref/)
* [http://www.netzwelt.de/download/12279-jabref.html](http://www.netzwelt.de/download/12279-jabref.html)
* [http://filehippo.com/de/download\_jabref/](http://filehippo.com/de/download_jabref/)
* [https://sourceforge.net/projects/jabref/files/](https://sourceforge.net/projects/jabref/files/) - contains historical releases only

## Installation Commands

### JabRef 5.x

JabRef 5.x is shipped with a lightweight Java runtime environment that includes only the Java dependencies JabRef uses. There are two major ways of obtaining JabRef for your platform.

#### Using Prebuilt Binaries

For stable versions, head to [https://downloads.jabref.org](https://downloads.jabref.org), choose the installer and run it. On **Windows**, you can use the [chocolatey package manager](https://chocolatey.org/) and execute `choco install jabref` to get the latest version. On **Ubuntu**, you can use `snap install jabref` to get the latest stable version [from snapcraft](https://snapcraft.io/jabref).

In case, you want to take advantage of the [latest features](https://github.com/JabRef/jabref/blob/master/CHANGELOG.md#unreleased), you can use pre-built binaries crafted from the latest development branch.

To use the prebuilt binaries, visit [http://builds.jabref.org/master/](http://builds.jabref.org/master/) and download the packaged binaries \(e.g., `dmg` files for MacOS and `exe` files for Windows\), run them and follow the instructions. We also provide generic archive files \(e.g., `tar.gz` files for Linux and MacOS, and `zip` files for Windows\) which can be downloaded and extracted. Inside the archive files you will find a `bin` subdirectory which contains the binary needed to run JabRef \(i.e., `JabRefMain` for Linux and MacOS, and `JabRefMain.bat` for Windows\).

#### Building From Source

This method is mainly for package maintainers and users who would like to build the latest snapshots of JabRef directly from the source. If you want to setup JabRef for development, follow the instructions for [Setting up a workspace](https://devdocs.jabref.org/guidelines-for-setting-up-a-local-workspace)

To build JabRef from source, you first need to have a working Java Development Kit 13 \(JDK 13\) and Git installed on your system. After installing the two requirements, you open a terminal window \(i.e., a command prompt\) and type the following:

```text
git clone --depth=10 https://github.com/JabRef/jabref
cd jabref
./gradlew assemble
./gradlew jlink
```

In a nutshell, you clone the latest snapshot of JabRef into `jabref` directory, change directory to `jabref`, initialize and update all the submodules \(dependencies\) of JabRef, assemble them to be built via JDK 13, and finally build and link them together.

The output should be the `build/image` subdirectory that contains the JabRef binary with all of its Java dependencies. To start JabRef, you need to run `bin/JabRefMain` \(in Linux and MacOS\) or `bin/JabRefMain.bat` \(in Windows\) under `build/image` subdirectory.

### JabRef 4.x

> JabRef 4.x requires JRE 8 \(and does not run at JRE 9 onwoards\)

JavaFX is not included in every Java runtime environment or development kit. Therefore, we highly recommend to use [Oracle Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html). JavaFX is included since Java 1.8.0\_60. The other official support for JavaFX is [OpenJDK](http://openjdk.java.net/install/index.html) with the external library [OpenJFX](https://packages.ubuntu.com/xenial/java/openjfx-source). Unfortunately, the installation is not always straight forward. Therefore, we only recommend this if you know what you are doing. In case you want to use OpenJDK with OpenJFX in general you should follow this [instructions](https://wiki.openjdk.java.net/display/OpenJFX/Building+OpenJFX). For Ubuntu 16.04 LTS, 18.04 LTS and 20.04 LTS head to the section [Installation Commands](installation.md#installation-commands).

#### Verify Java Installation

In case you already have a Java version installed - or you closely followed the steps below, you can check your Java version by typing the following command into your command line interface:

`java -version`

It is possible having multiple Java versions at the same time. On debian based Linux distributions set your preferred Java version using the following command:

`sudo update-alternatives --config java`

and choose it by typing the number matching the Java version.

Your Java version should look like this, depending on your operating system and JDK/JRE:

**Oracle Java 32-Bit:**

```text
Java version "1.8.0_x"
Java(TM) SE Runtime Environment (build 1.8.x)
Java HotSpot(TM) Client  VM (build 25.x, mixed mode)
```

**Oracle Java 64-Bit:**

```text
Java version "1.8.0_x"
Java(TM) SE Runtime Environment (build 1.8.x)
Java HotSpot(TM) 64-Bit Server VM (build 25.x, mixed mode)
```

**OpenJDK 32-Bit:**

```text
OpenJDK version "1.8.0_x"
OpenJDK Runtime Environment (build 1.8.0_x)
OpenJDK Client VM (build 25.x, mixed mode)
```

**OpenJDK 64-Bit:**

```text
OpenJDK version "1.8.0_x"
OpenJDK Runtime Environment (build 1.8.0_x)
OpenJDK 64-Bit Server VM (build 25.x, mixed mode)
```

If this does not report to be a product from Oracle \(for instance tells you that it is a GCJ VM\) even if you have installed the Oracle JVM then you need to change your setup. In the following, the installation is documented for Ubuntu, Debian, Fedora, CentOS, Windows, and MacOSX.

#### Ubuntu and Oracle Java

This applies for both 32bit and 64bit and both Ubuntu 14.04 LTS, 16.04 LTS, 18.04 LTS and 20.04 LTS.

Install Oracle JDK:

1. Download the Linux files \(e.g. Linux\_X64\) from [https://java.com/en/download/linux\_manual.jsp](https://java.com/en/download/linux_manual.jsp)
2. Unpack the archive

   > Note: You can already start JabRef now. Just enter into terminal: "/home/USER/Downloads/jre-8u251-linux-x64/jre1.8.0\_251/bin/java -jar /home/USER/Downloads/JabRef-4.3.1.jar" \(The path has to match your folder structure\)

3. Register your JRE system-wide 
4. Move the java folder to your preferred location \(e.g. /usr/java\). The folder structure should look like "/usr/java/jre1.80\_251/bin"
5. Edit "bashrc" with: `sudo gedit ~/.bashrc`
6. Insert the following lines and save the file \(adjust JAVA\_HOME if neccessary\):

   `export JAVA_HOME=/usr/java/jre1.80_251` `export PATH=${PATH}:${JAVA_HOME}/bin`

7. Log out and in to your system
8. Verify your java version \(see above\): `java -version`
9. Start JabRef with: `java -jar Path/to/JabRef.jar`

Have a look for further [instructions](https://help.ubuntu.com/community/Java).

#### Ubuntu and OpenJDK

Just install JavaFX by executing `sudo apt-get install openjfx`.

For Ubuntu 18.04 and newer, `openjfx` [uses the Java version 11](https://github.com/JabRef/help.jabref.org/issues/204) which is currently not supported by JabRef. Hence, use an older version \(does not work with Ubuntu 20.04 anymore\):

1. If you accidently installed the new version, remove it with `sudo apt purge openjfx`.
2. Install an older version with `sudo apt install openjfx=8u161-b12-1ubuntu2 libopenjfx-jni=8u161-b12-1ubuntu2 libopenjfx-java=8u161-b12-1ubuntu2`.
3. To prevent the software updater from installing the newer not supported version, mark it to be not updated with `sudo apt-mark hold openjfx libopenjfx-jni libopenjfx-java`. 

This also works for Linux Mint 19.1 Tessa which is based on Ubuntu 18.04.

#### Debian Jessie 8 and Oracle Java

**Using the ppa**

1. Add repository: `sudo sh -c 'echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list'`
2. Add GPG key: `sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886`
3. Update package list: `sudo apt-get update`
4. Install: `sudo apt-get install oracle-java8-installer`

Based on: [http://tecadmin.net/install-java-8-on-debian/](http://tecadmin.net/install-java-8-on-debian/)

**Directly from Oracle**

1. Download tag.gz-file from the [Java SE Development Kit 8 Downloads](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) site
2. Navigate to the folder where you downloaded the tar.gz-file
3. Create package with `make-jpkg jdk-[Version]-linux-x64.tar.gz` including the most recent Java version instead of`[Version]`
4. Get root access with `su`
5. Install with `dpkg -i oracle-java8-jdk_[Version].deb`

#### Fedora 23 and Oracle Java

1. Download rpm-file from the [Java SE Development Kit 8 Downloads](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) site
2. Navigate to the folder where you downloaded the rpm-file
3. Install: `rpm -ivh jdk-8u101-linux-x64.rpm`
4. Upgrade: `rpm -Uvh jdk-8u101-linux-x64.rpm`
5. Set alternatives: `alternatives --config java` \(choose Oracle version\)

Recent JabRef builds are available at [https://build.opensuse.org/package/show/home:cornell\_vrdc/jabref3](https://build.opensuse.org/package/show/home:cornell_vrdc/jabref3).

#### Fedora and OpenJDK

1. Install OpenJDK: `sudo dnf install java-1.8.0-openjdk`
2. Install JavaFX \(actually OpenJFX\): `sudo dnf install openjfx java-1.8.0-openjdk-openjfx`
3. Download the JabRef-\[version\].jar from the [JabRef Website](http://www.jabref.org/).
4. In the folder of the jar-file run `java -jar JabRef-[version].jar`

_Warning_: To install JavaFX, it is not sufficient to just install the `openjfx` package. _Warning_: There is a [bug](https://bugzilla.redhat.com/show_bug.cgi?id=1547378) in `openjfx` in Fedora 29. JabRef versions newer than 4.3.1 will not work with OpenJDK and Fedora 29 until this is fixed. See also [issue 4473](https://github.com/JabRef/jabref/issues/4473).

#### CentOS 6 or 7 and Oracle Java

1. Download rpm-file from the [Java SE Development Kit 8 Downloads](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) site
2. Install with `sudo yum localinstall jre-[Version]-linux-[BIT].rpm` include the most recent Java version for `[Version]` and `i586` or `x64` for `[BIT]` depending on your OS version

#### openSUSE

The necessary Java packages can be installed via "1-click installs":

1. [OpenJDK](https://software.opensuse.org/package/java-1_8_0-openjdk)
2. [java-openjfx](https://software.opensuse.org/package/java-1_8_0-openjfx)

#### Arch and Manjaro

Two packages are available in the [Arch User Repository \(AUR\)](https://aur.archlinux.org/):

1. [jabref](https://aur.archlinux.org/packages/jabref): The current release
2. [jabref-latest](https://aur.archlinux.org/packages/jabref-latest/): The latest version from the [GitHub](https://github.com/JabRef/jabref) _master_ branch

Both packages install precompiled jar files and add a command and a .desktop file to the OS.

#### Windows and Oracle Java

The "modern" way:

1. Install chocolatey by following the steps described at [https://chocolatey.org/install](https://chocolatey.org/install)
2. Execute `choco install jre8`

At any time, you can update to the latest Java runtime environment by executing `choco upgrade all`.

The "old" way:

1. Download exe file from the [Java SE Development Kit 8 Downloads](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) site
2. Run installation wizzard

#### Mac OS and Oracle Java

1. Download dmg-file from the [Java SE Development Kit 8 Downloads](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) site
2. Run installation wizzard

## Troubleshooting

See the [FAQs](https://docs.jabref.org/faq/faqgeneral).

### Freezes when running JabRef

Some users with macOS Sierra have reported freezes when using JabRef. Apparently, [adding a host mapping for 127.0.0.1](https://dzone.com/articles/macos-sierra-problems-with-javanetinetaddress-getl) seems to solve these issues.

Random freezes have also been reported on several Linux distributions. It seems that the `GTKLookAndFeel` is causing these problems and selecting a different look and feel class under `Options -> Appearance -> Look and Feel` solves the problem.

### JabRef and OpenOffice/LibreOffice integration

The connection from JabRef to Libre Office requires some office related `jar`-archives to be present. The Windows installer for OpenOffice/LibreOffice automatically installs the required libraries. For Linux you have to install the package `libreoffice-java-common`.

