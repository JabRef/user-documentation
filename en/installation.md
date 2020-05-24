# Installation

JabRef can be either installed \(the preferred way\) or be used as a portable application.

## Installation instructions

To get the latest version, head to [downloads.jabref.org](https://downloads.jabref.org), download the installer for your system \(e.g., `dmg` files for MacOS and `msi` files for Windows\), run them and follow the on-screen instructions.

Alternatively, on **Windows**, you can use the [chocolatey package manager](https://chocolatey.org/) and execute `choco install jabref` to get the latest version. On **Ubuntu**, you can use `snap install jabref` to get the latest stable version [from snapcraft](https://snapcraft.io/jabref).

{% page-ref page="getting-started.md" %}

#### Portable version

The portable version of JabRef is designed to be run from a USB stick \(or similar\) with no installation.

Download it from [downloads.jabref.org](https://downloads.jabref.org). These are generic archive files \(e.g., `tar.gz` files for Linux and MacOS, and `zip` files for Windows\) which need to be extracted. Inside the archive files you will find a `bin` subdirectory which contains the binary needed to run JabRef \(i.e., `JabRefMain` for Linux and MacOS, and `JabRefMain.bat` for Windows\).

Be sure to activate "Load and Save preferences from/to jabref.xml on start-up \(memory stick mode\)" in Options → Preferences → General.

#### Development version

In case, you want to take advantage of the [latest features](https://github.com/JabRef/jabref/blob/master/CHANGELOG.md#unreleased), you can use pre-built binaries crafted from the latest development branch. To use the prebuilt binaries, visit[ builds.jabref.org/master](http://builds.jabref.org/master/) and download the packaged binaries \(e.g., `dmg` files for MacOS and `exe` files for Windows\), run them and follow the instructions.

If you want to try the development version in parallel with the stable version, we recommend to download the portable version \(e.g. `JabRef-X.Y.portable_windows.zip`, `JabRef-X.Y.portable_macos.tar.gz`, or `JabRef-X.Y.portable_linux.tar.gz`\) from [builds.jabref.org/master](https://builds.jabref.org/master/) to ensure that both versions do not conflict.

## Troubleshooting

{% tabs %}
{% tab title="Windows" %}

### Issues with high resolution displays

You have to change the "compatibility settings" for JabRef to "Disable scaling for high DPI settings". Further information is available at [https://www.microsoft.com/surface/en-us/support/apps-and-windows-store/app-display-issues?os=windows-10](https://www.microsoft.com/surface/en-us/support/apps-and-windows-store/app-display-issues?os=windows-10).

Further reading: [https://github.com/JabRef/jabref/issues/415](https://github.com/JabRef/jabref/issues/415) and [http://discourse.jabref.org/t/jabref-3-6-on-hires-laptop-screen-messed-up/277](http://discourse.jabref.org/t/jabref-3-6-on-hires-laptop-screen-messed-up/277).

### Warning about preferences

In case you get the following error message

`WARNING: Could not open/create prefs root node Software\JavaSoft\Prefs at root 0x80000002. Windows RegCreateKeyEx(...) returned error code 5.`

start regedit and create the following key: `HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\JavaSoft\Prefs`. \[[source](https://stackoverflow.com/a/20798112/873282)\]

### How can I start or focus JabRef with hotkey ⊞+J \(Win+J\)?

Use [AutoHotkey](http://www.autohotkey.com/) and [JabRef.ahk](https://github.com/koppor/autohotkey-scripts/blob/master/JabRef.ahk) provided at [koppor's autohotkey scripts](https://github.com/koppor/autohotkey-scripts).
{% endtab %}

{% tab title="Linux" %}

### OpenOffice/LibreOffice integration

The connection from JabRef to Libre Office requires some office related `jar`-archives to be present. For this, you have to install the package `libreoffice-java-common`.

### Include JabRef in the start menu of Ubuntu

See [http://askubuntu.com/a/721387/196423](http://askubuntu.com/a/721387/196423) for details.

### Cannot start JabRef from the command line

You have several Java Virtual Machines installed, and under the command line the wrong one is chosen. Have a look at the previous question that tells you how to change the virtual machine used. For Ubuntu you may also have a look at the [Ubuntu page on Java](https://help.ubuntu.com/community/Java).

### Everything looks too big or too small. How can I change it to to a more reasonable size?

In the background, JabRef uses [JavaFX](https://en.wikipedia.org/wiki/JavaFX). Applications using JavaFX can be scaled via `java -Dglass.gtk.uiScale=1.5 -jar <application>.jar`. If you have installed JabRef via a package manager, you probably don't have a `.jar` file but a binary file. In this case, you need to find your `JabRef.cfg` in your installation folder \(possibly located at `/opt/JabRef/lib/app/JabRef.cfg`\) and add in the section `[JavaOptions]` the line `-Dglass.gtk.uiScale=1.5`. Then, restart JabRef. Try finding a value that is suitable for you. On high resolution displays, values around `1.5` seem to be reasonable.
{% endtab %}

{% tab title="macOS" %}
### “JabRef Installer.app” can’t be opened because it is from an unidentified developer.

Currently, JabRef is not signed with Apple which triggers this warning. Nonetheless, JabRef is secure to use and will not install any malware. To override the warning, use Ctrl + Click on the JabRef icon instead, then choose "open". This gives the same warning but the possibility to override it so that you can install. See the [official Apple documentation](https://support.apple.com/guide/mac-help/open-a-mac-app-from-an-unidentified-developer-mh40616/mac) for more information.

### JabRef is slow/hangs sometimes

Some users with macOS Sierra have reported freezes when using JabRef. It seems this is a bug in the networking part of Java on macOS. [Adding a host mapping for 127.0.0.1](https://dzone.com/articles/macos-sierra-problems-with-javanetinetaddress-getl) seems to solve these issues.

### “The package was damaged and moved to trash”

On Mac OS X Lion, it is possible to resolve it by temporarily changing the Gate Keeper security settings under “Security&Privacy” in the system preferences to “Anywhere”. After that you can open the JabRef app. When you have opened it once, you can change the security settings back and you'll still be able to open the app.

### Some characters are not displayed in the main table \(math characters or some upper-cased letter\).

This might be a problem related to the font you are using. You can download some other font that supports mathematical alphanumeric symbols, for example, FreeSerif or Cambria Math. A list of fonts supporting Math Unicode blocks is available at [http://www.fileformat.info/info/unicode/block/mathematical\_alphanumeric\_symbols/fontsupport.htm](http://www.fileformat.info/info/unicode/block/mathematical_alphanumeric_symbols/fontsupport.htm).
{% endtab %}
{% endtabs %}

## Building From Source

This method is mainly for package maintainers and users who would like to build the latest snapshots of JabRef directly from the source. If you want to setup JabRef for development, follow the instructions for [setting up a workspace](https://devdocs.jabref.org/guidelines-for-setting-up-a-local-workspace).

To build JabRef from source, you first need to have a working Java Development Kit 13 \(JDK 13\) and Git installed on your system. After installing the two requirements, you open a terminal window \(i.e., a command prompt\) and type the following:

```text
git clone --depth=10 https://github.com/JabRef/jabref
cd jabref
./gradlew assemble
./gradlew jlink
```

In a nutshell, you clone the latest snapshot of JabRef into `jabref` directory, change directory to `jabref`, initialize and update all the submodules \(dependencies\) of JabRef, assemble them to be built via JDK 13, and finally build and link them together.

The output should be the `build/image` subdirectory that contains the JabRef binary with all of its Java dependencies. To start JabRef, you need to run `bin/JabRefMain` \(in Linux and MacOS\) or `bin/JabRefMain.bat` \(in Windows\) under `build/image` subdirectory.

