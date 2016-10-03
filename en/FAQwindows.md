---
title: JabRef and Windows
helpCategories: ["FAQ"]
---

# JabRef and Windows

## Q: How can I use JabRef as backend for Microsoft Word?

A: You can directly use the references in Word's internal reference manager.
Short explanation: Export your bibliography in XML format and replace the Sources.xml in `%APPDATA%\Roaming\Microsoft\Bibliography`.
Long explanation: see [Using JabRef references in Word document](http://www.ademcan.net/?d=2012/01/30/15/23/05-using-jabref-references-in-word-documents).

Another option is to use [BibteX4Word](http://www.ee.ic.ac.uk/hp/staff/dmb/perl/index.html).

The last option is to use [Docear4Word](https://github.com/Docear/Docear4Word), which is planned to be ported to JabRef (see [JabRef4Word](https://github.com/JabRef/JabRef4Word)).

## Q: How can I start or focus JabRef with hotkey Windows+J?

A: Use [AutoHotkey](http://www.autohotkey.com/) and [JabRef.ahk](https://github.com/koppor/autohotkey-scripts/blob/master/JabRef.ahk) provided at [koppor's autohotkey scripts](https://github.com/koppor/autohotkey-scripts).
