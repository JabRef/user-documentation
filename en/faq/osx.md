# Mac OS X

## Q: After downloading and unzipping, OS X shows “JabRef Installer.app” cannot be opened because it is from an unidentified developer

A: Currently this is necessary, since our code signing infrastructure is not operational. `Ctrl-click` to open the downloaded `.dmg` file in Finder to install JabRef.

## Q: After downloading and unzipping, OS X shows “the package was damaged and moved to trash”

A: On Mac OS X Lion, it is possible to resolve it by temporarily changing the Gate Keeper security settings under “Security&Privacy” in the system preferences to “Anywhere”. After that you can open the JabRef app. When you have opened it once, you can change the security settings back and you'll still be able to open the app.

## Q: There is no explicit Mac OS X application for JabRef 2.11

A: We were not able to generate a working version of JabRef 2.11 for Mac OS X. Please use the jar of version 2.11, or look at the newer 3.X versions \(which fully supports Mac OS X again\).

## Q: Is it possible to upgrade directly from JabRef 2.x to JabRef 3.x?

A: Due to the change of the installer for 3.x it is required to perform a clean install of any JabRef 3.x version. You are required to remove any previously installed JabRef 2.x application from the "Applications" folder. Then you can install the latest JabRef 3.x version with the installer. As soon you are running on any JabRef 3.x version, you can use the installer to upgrade JabRef.

## Q: I am trying to install JabRef, but I am blocked by "JabRef Installer cannot be opened because it is from an unidentified developer."

A: To override that, Ctrl + Click instead, and choose "open", which gives the same warning but the possibility to override it. then you can install.

## Q: I am trying to install JabRef, but I am blocked by  "JabRef Installer error: Error downloading the Java\(TM\) Runtime Environment. Please check your internet connection and start setup again."

A: The problem occurs because you do not have Java 8 installed, and the automatic download and installation is somehow failing... It can be downloaded here manually: [http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html).

## Q: Jabref slow/hangs on MacOS Sierra

A: This is a problem some users experience in JabRef 4.0 or later on MacOS Sierra. It seems this is a bug in the networking part of Java on MacOS. You can try to add localhost explicitly to `/etc/hosts` as described [here](https://dzone.com/articles/macos-sierra-problems-with-javanetinetaddress-getl).

## Q: Some characters are not displayed in the main table \(math characters or some upper-cased letter\)

A: This might be a problem related to the font you are using. You can download some other font that supports mathematical alphanumeric symbols, for example, FreeSerif or Cambria Math. A list of fonts supporting Math Unicode blocks is available at [http://www.fileformat.info/info/unicode/block/mathematical\_alphanumeric\_symbols/fontsupport.htm](http://www.fileformat.info/info/unicode/block/mathematical_alphanumeric_symbols/fontsupport.htm).

## Q: How to run JabRef 4.x on OS X?

Due to the large number of issues with OS X, here is a step by step tutorial how to ensure that you can build and run JabRef under OS X. Since we are at the moment not able to provide a correctly signed and working `dmg` that includes the Java Runtime Environment, this guide how you can ensure your Java environment under OS X is correctly set up.

With a correct Java set up, you can either simply run the `JabRef.jar` files we provide or you can build your own JabRef from source. For _running_ the JabRef `jar`, you only need a Java Runtime Environment \(JRE\), but since the Java Development Environment \(JDK\) will contain the correct JRE, we will only show you how to install the JDK. With the JDK, that contains the java compiler `javac`, you can build JabRef from sources.

We advise using **Oracle Java 1.8.0\_161** for JabRef 4.x on OS X. It is available at [http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html).

### Checking Java and installing the correct version

A quick Java check can be done in the terminal. Open _Applications_ -&gt; _Utilities_ -&gt; _Terminal.app_ and type `java -version`. Your output should look like this

![Version](https://i.imgur.com/nS63JPE.png)

If you see an error or if you have a different version, you need to install the correct one. This can be done by navigating to the [Oracle Download page](http://www.oracle.com/technetwork/java/javase/downloads/index.html) and scrolling down to the section where you see **Java SE 8u161/ 8u162**. Click on the button that is labelled "JDK Download". On the next page, make sure you have clicked on the checkbox **Accept License Agreement** and download the **macOS** dmg file. After downloading, open it and after it was verified double click again on the installer.

After the installation is finished, you should see the correct version in the Terminal. You probably have to close and re-open the Terminal to apply the changes. If you still see the wrong version, most likely a newer version than `1.8.0_161`, then your system uses the newer version per default, although the correct `1.8.0_161` version is installed.

Assuming you have a working Java installation, you can run JabRef directly from command line. Head over to the [JabRef development builds download](https://builds.jabref.org/main/) and download `JabRef--master--latest.jar`. The downloads are usually stored in your home directory under `Downloads`. In the terminal, you have to **c**hange **d**irectoy to this folder by typing

```text
cd ~/Downloads
```

The `~` stands for _your home directory_. Once done, you can use

```text
java -jar JabRef--master--latest.jar
```

The advantage of running it from a terminal is that you see log-messages directly in the terminal window. Additionally, you can directly specify which JRE you want to use. With several different Java versions, you need to ensure you are using the correct one. When _running_ JabRef from the terminal, you can always specify the full path of the `java` you want to use like it was shown above. The JDK's you have installed should be located under the path

```text
/Library/Java/JavaVirtualMachines/
```

Therefore, on my machine, I can use a specific Java version by running the command

```text
/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/bin/java -jar JabRef--master--latest.jar
```

Easier than looking up the full path of the JDK is using the command `/usr/libexec/java_home` which helps you to show installed Java versions and run a command on a particular one. You can see all your installed JDK's and the one that is currently selected as default by providing the option `-V` like this

![Versions](https://i.imgur.com/gs2oNz7.png)

You can use this tool to directly start JabRef with the desired version by using

```text
/usr/libexec/java_home -v 1.8.0_161 --exec java -jar JabRef--master--latest.jar
```

### Running `JabRef.jar` by clicking on `JabRef.jar`

Most users might want to start JabRef by placing the `JabRef.jar` on the desktop and double-clicking it. This is only possible if the system-wide Java version is correct.

To check which version of Java your system uses, you can open the System Preferences and click the `Java` button at the bottom. If you don't see the `Java` button, you can jump directly to "Installing correct Java version".

![Preferences](https://i.imgur.com/5QG1yw4.png)

When you pressed the Java button, a new window will pop up that has several tabs. Select the tab with the name `Java` and click the button `View`. This will open a window that shows your current Java version

![Version](https://i.imgur.com/gLovweQ.png)

If you see a different version than `1.8.0_161` then JabRef might crash when you simply double-click it.

