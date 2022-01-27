# Windows

## Q: I have issues with my high resolution display. What can I do?

You have to change the "compatibility settings" for JabRef to "Disable scaling for high DPI settings". Further information is available at [https://www.microsoft.com/surface/en-us/support/apps-and-windows-store/app-display-issues?os=windows-10](https://www.microsoft.com/surface/en-us/support/apps-and-windows-store/app-display-issues?os=windows-10)

Further reading: [https://github.com/JabRef/jabref/issues/415](https://github.com/JabRef/jabref/issues/415) and [http://discourse.jabref.org/t/jabref-3-6-on-hires-laptop-screen-messed-up/277](http://discourse.jabref.org/t/jabref-3-6-on-hires-laptop-screen-messed-up/277).

## Q: How can I use JabRef as backend for Microsoft Word?

You can directly use the references in Word's internal reference manager. Short explanation: Export your bibliography in XML format and replace the Sources.xml in `%APPDATA%\Roaming\Microsoft\Bibliography`. Long explanation: check out [Export to Microsoft Word](https://github.com/JabRef/user-documentation/blob/main/en/cite/export-to-microsoft-word.md). Also, see [https://www.youtube.com/watch?v=2PpLZTol9\_o](https://www.youtube.com/watch?v=2PpLZTol9_o) for a video explaining how to add and how to cite references in a Word document.

Another option is to use [Bibtex4Word](http://www.ee.ic.ac.uk/hp/staff/dmb/perl/index.html). See [https://www.youtube.com/watch?v=9j3g4wfdM00](https://www.youtube.com/watch?v=9j3g4wfdM00) for a video explaining the usage.

The last option is to use [Docear4Word](https://github.com/Docear/Docear4Word), which is planned to be ported to JabRef \(see [JabRef4Word](https://github.com/JabRef/JabRef4Word)\).

## Q: How can I start or focus JabRef with hotkey ⊞+J \(Win+J\)?

Use [AutoHotkey](http://www.autohotkey.com/) and [JabRef.ahk](https://github.com/koppor/autohotkey-scripts/blob/main/JabRef.ahk) provided at [koppor's autohotkey scripts](https://github.com/koppor/autohotkey-scripts).

## Q: I get `WARNING: Could not open/create prefs root node Software\JavaSoft\Prefs at root 0x80000002. Windows RegCreateKeyEx(...) returned error code 5.`

Start regedit and create the following key: `HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\JavaSoft\Prefs`. \[[source](https://stackoverflow.com/a/20798112/873282)\]

