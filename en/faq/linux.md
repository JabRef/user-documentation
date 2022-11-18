# Linux

## Is there any way to include JabRef in the start menu of Ubuntu?

Yes, there is. See [http://askubuntu.com/a/721387/196423](http://askubuntu.com/a/721387/196423) for details.

## JabRef does not start under Linux! What can I do?

### JabRef 5.x

JabRef comes with a bundled JRE.
There is no need to install Java separately.
Thus, there should be no issues at start up.

### JabRef 4.x

> JabRef requires Java 8

Please follow the steps provided on our [installation page](../installation.md). JabRef 4.x does not run under Java 9 or newer. See [https://github.com/JabRef/jabref/issues/2594](https://github.com/JabRef/jabref/issues/2594)

You might see the error message `Error: Could not find or load main class org.jabref.JabRefMain`. This means, you do not have [JavaFX](https://en.wikipedia.org/wiki/JavaFX) support activated in your Java runtime environment. This typically happens if you use [OpenJDK](http://openjdk.java.net/), where one needs to setup [OpenJFX](https://wiki.openjdk.java.net/display/OpenJFX/Main) separately.

## I am on Debian/Ubuntu and clicking on the JabRef icon works, but I cannot start JabRef from the command line. What is wrong?

You have several Java Virtual Machines installed, and under the command line the wrong one is chosen. Have a look at the previous question that tells you how to change the virtual machine used.

For Ubuntu you may also have a look at the [Ubuntu page on Java](https://help.ubuntu.com/community/Java).

## Everything looks too big or too small. How can I change it to to a more reasonable size?

In the background, JabRef uses [JavaFX](https://en.wikipedia.org/wiki/JavaFX). Applications using JavaFX can be scaled via `java -Dglass.gtk.uiScale=1.5 -jar <application>.jar`. If you have installed JabRef via a package manager, you probably don't have a `.jar` file but a binary file. In this case, you need to find your `JabRef.cfg` in your installation folder \(possibly located at `/opt/JabRef/lib/app/JabRef.cfg`\) and add in the section `[JavaOptions]` the line `-Dglass.gtk.uiScale=1.5`. Then, restart JabRef. Try finding a value that is suitable for you. On high resolution displays, values around `1.5` seem to be reasonable.

## Where can I find JabRef's log files?

A: On Linux, the path to the log files is `~/.cache/jabref/logs/version/`
