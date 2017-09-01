---
title: JabRef and Windows
helpCategories: ["FAQ"]
---

# JabRef and Windows

## Q: I have issues with my high resolution display.

You have to change the "compatibility settings" for JabRef to "Disable scaling for high DPI settings".
Further information is available at https://www.microsoft.com/surface/en-us/support/apps-and-windows-store/app-display-issues?os=windows-10

Further reading: https://github.com/JabRef/jabref/issues/415
and
http://discourse.jabref.org/t/jabref-3-6-on-hires-laptop-screen-messed-up/277.


## Q: How can I use JabRef as backend for Microsoft Word?

You can directly use the references in Word's internal reference manager.
Short explanation: Export your bibliography in XML format and replace the Sources.xml in `%APPDATA%\Roaming\Microsoft\Bibliography`.
Long explanation: see [Using JabRef references in Word document](http://www.ademcan.net/?d=2012/01/30/15/23/05-using-jabref-references-in-word-documents).

Another option is to use [Bibtex4Word](http://www.ee.ic.ac.uk/hp/staff/dmb/perl/index.html).

The last option is to use [Docear4Word](https://github.com/Docear/Docear4Word), which is planned to be ported to JabRef (see [JabRef4Word](https://github.com/JabRef/JabRef4Word)).


## Q: How can I start or focus JabRef with hotkey <kbd>⊞</kbd>+<kbd>J</kbd> (<kbd>Win</kbd>+<kbd>J</kbd>)?

Use [AutoHotkey](http://www.autohotkey.com/) and [JabRef.ahk](https://github.com/koppor/autohotkey-scripts/blob/master/JabRef.ahk) provided at [koppor's autohotkey scripts](https://github.com/koppor/autohotkey-scripts).


## Q: The JAR file does not start

Ensure that you executed `choco install jre8` (which is offered by [chocolatey](https://chocolatey.org/)).
If you still encounter issues, use [Jarfix](https://johann.loefflmann.net/en/software/jarfix/index.html) to restore the file association to the jar file.
