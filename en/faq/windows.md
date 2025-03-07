# Windows

## Q: I have issues with my high resolution display. What can I do?

You have to change the "compatibility settings" for JabRef to "Disable scaling for high DPI settings". Further information is available at [https://support.microsoft.com/en-us/topic/windows-scaling-issues-for-high-dpi-devices-508483cd-7c59-0d08-12b0-960b99aa347d](https://support.microsoft.com/en-us/topic/windows-scaling-issues-for-high-dpi-devices-508483cd-7c59-0d08-12b0-960b99aa347d)

Further reading: [https://github.com/JabRef/jabref/issues/415](https://github.com/JabRef/jabref/issues/415) and [http://discourse.jabref.org/t/jabref-3-6-on-hires-laptop-screen-messed-up/277](http://discourse.jabref.org/t/jabref-3-6-on-hires-laptop-screen-messed-up/277).

## Q: How can I use JabRef as backend for Microsoft Word?

You can directly use the references in Word's internal reference manager. Short explanation: Export your bibliography in XML format and replace the Sources.xml in `%APPDATA%\Roaming\Microsoft\Bibliography`. Long explanation: check out [Export to Microsoft Word](../cite/export-to-microsoft-word.md). Also, see <https://www.youtube.com/watch?v=2PpLZTol9_o> for a video explaining how to add and how to cite references in a Word document.

Another option is to use [Bibtex4Word](http://www.ee.ic.ac.uk/hp/staff/dmb/perl/index.html). See <https://www.youtube.com/watch?v=9j3g4wfdM00> for a video explaining the usage.

The last option is to use [Docear4Word](https://github.com/Docear/Docear4Word), which is planned to be ported to JabRef \(see [JabRef4Word](https://github.com/JabRef/JabRef4Word)\).

## Q: I get `WARNING: Could not open/create prefs root node Software\JavaSoft\Prefs at root 0x80000002. Windows RegCreateKeyEx(...) returned error code 5.`

Start regedit and create the following key: `HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\JavaSoft\Prefs`. \[[source](https://stackoverflow.com/a/20798112/873282)\]

## Q: Where can I find JabRef's log files?

A: On Windows, one finds the log files in `%APPDATA%\..\Local\org.jabref\jabref\Logs\{version}`. `{version}` indicates the currently used JabRef version.

## Q: I have issues with the Chinese display language in Windows 10 Enterprise. What can I do?

A: According to [source](https://discourse.jabref.org/t/chinese-character/4167), you may have to set the font manually by downloading the Base.css from Custom themes - JabRef. Then open the Base.css, and add the following text at the end of Base.css:

```css
.text {
-fx-font-family: “Microsoft YaHei”;
}
```
