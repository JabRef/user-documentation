# Installation

JabRef itself can be either installed using the installer or just running the portable version. You get these files from [http://downloads.jabref.org/](http://downloads.jabref.org/).

* [Installation Commands](installation.md#installation-commands)
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

JabRef is shipped with a lightweight Java runtime environment that includes only the Java dependencies JabRef uses. There are two major ways of obtaining JabRef for your platform.

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

## Troubleshooting

See the [FAQs](https://docs.jabref.org/faq/faqgeneral).

### Freezes when running JabRef

Some users with macOS Sierra have reported freezes when using JabRef. Apparently, [adding a host mapping for 127.0.0.1](https://dzone.com/articles/macos-sierra-problems-with-javanetinetaddress-getl) seems to solve these issues.

Random freezes have also been reported on several Linux distributions. It seems that the `GTKLookAndFeel` is causing these problems and selecting a different look and feel class under `Options -> Appearance -> Look and Feel` solves the problem.

### JabRef and OpenOffice/LibreOffice integration

The connection from JabRef to Libre Office requires some office related `jar`-archives to be present. The Windows installer for OpenOffice/LibreOffice automatically installs the required libraries. For Linux you have to install the package `libreoffice-java-common`.

