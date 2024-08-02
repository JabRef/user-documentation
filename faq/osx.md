# Mac OS X

## Q: After downloading and unzipping, OS X shows “JabRef Installer.app” cannot be opened because it is from an unidentified developer

A: Currently this is necessary, since our code signing infrastructure is not operational. `Ctrl-click` to open the downloaded `.dmg` file in Finder to install JabRef.

## Q: After installing JabRef 5.9 on macOS ventura I get the error message: JabRef 5.9 is damaged and cannot be opened

A: Execute `xattr -d com.apple.quarantine /Applications/JabRef.app`

Because we could not get 5.9 notarized correctly from Apple this step is unfortuantely necessary.

## Q: I am trying to install JabRef, but I am blocked by "JabRef Installer cannot be opened because it is from an unidentified developer."

A: To override that, Ctrl + Click instead, and choose "open", which gives the same warning but the possibility to override it. then you can install.

## Q: Jabref slow/hangs on MacOS Sierra

A: This is a problem some users experience in JabRef 4.0 or later on MacOS Sierra. It seems this is a bug in the networking part of Java on MacOS. You can try to add localhost explicitly to `/etc/hosts` as described [here](https://dzone.com/articles/macos-sierra-problems-with-javanetinetaddress-getl).

## Q: Some characters are not displayed in the main table (math characters or some upper-cased letter)

A: This might be a problem related to the font you are using. You can download some other font that supports mathematical alphanumeric symbols, for example, FreeSerif or Cambria Math. A list of fonts supporting Math Unicode blocks is available at [http://www.fileformat.info/info/unicode/block/mathematical\_alphanumeric\_symbols/fontsupport.htm](http://www.fileformat.info/info/unicode/block/mathematical\_alphanumeric\_symbols/fontsupport.htm).

## Q: Where can I find JabRef's log files?

A: It's in `Users/.../Library/Logs/jabref/version`.
