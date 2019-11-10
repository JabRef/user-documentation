---
title: JabRef and Mac OS X
helpCategories:
  - FAQ
---

# JabRef and Mac OS X

## Q: After downloading and unzipping, OS X shows “JabRef Installer.app” can’t be opened because it is from an unidentified developer.

A: Currently this is necessary, since our code signing infrastructure is not operational. `Ctrl-click` to open the downloaded `.dmg` file in Finder to install JabRef.

## Q: After downloading and unzipping, OS X shows “the package was damaged and moved to trash”

A: On Mac OS X Lion, it is possible to resolve it by temporarily changing the Gate Keeper security settings under “Security&Privacy” in the system preferences to “Anywhere”. After that you can open the JabRef app. When you have opened it once, you can change the security settings back and you'll still be able to open the app.

## Q: There is no explicit Mac OS X application for JabRef 2.11

A: We were not able to generate a working version of JabRef 2.11 for Mac OS X. Please use the jar of version 2.11, or look at the newer 3.X versions \(which fully supports Mac OS X again\).

## Q: Is it possible to upgrade directly from JabRef 2.x to JabRef 3.x?

A: Due to the change of the installer for 3.x it is required to perform a clean install of any JabRef 3.x version. You are required to remove any previously installed JabRef 2.x application from the "Applications" folder. Then you can install the latest JabRef 3.x version with the installer. As soon you are running on any JabRef 3.x version, you can use the installer to upgrade JabRef.

## Q: I am trying to install JabRef, but I am blocked by "JabRef Installer can’t be opened because it is from an unidentified developer."

A: To override that, Ctrl + Click instead, and choose "open", which gives the same warning but the possibility to override it. then you can install.

## Q: I am trying to install JabRef, but I am blocked by  "JabRef Installer error: Error downloading the Java\(TM\) Runtime Environment. Please check your internet connection and start setup again."

A: The problem occurs because you do not have Java 8 installed, and the automatic download and installation is somehow failing... It can be downloaded here manually: [http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html).

## Q: Jabref slow/hangs on MacOS Sierra

A: This is a problem some users experience in JabRef 4.0 or later on MacOS Sierra. It seems this is a bug in the networking part of Java on MacOS. You can try to add localhost explicitly to `/etc/hosts` as described [here](https://dzone.com/articles/macos-sierra-problems-with-javanetinetaddress-getl).

## Q: Some characters are not displayed in the main table \(math characters or some upper-cased letter\).

A: This might be a problem related to the font you are using. You can download some other font that supports mathematical alphanumeric symbols, for example, FreeSerif or Cambria Math. A list of fonts supporting Math Unicode blocks is available at [http://www.fileformat.info/info/unicode/block/mathematical\_alphanumeric\_symbols/fontsupport.htm](http://www.fileformat.info/info/unicode/block/mathematical_alphanumeric_symbols/fontsupport.htm).

