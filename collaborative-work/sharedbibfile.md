# Sharing a Bib\(la\)TeX Library

When sharing a Bib\(la\)TeX library, JabRef automatically recognizes a change in the `bib` file on disk and notifies the user of it. This works well on network drives.

_Note:_ the use of a version control system \(SVN, git, etc.\) is recommended as this will allow for reverting changes.

To make the sharing of a Bib\(la\)TeX library easier, it is recommended to set specific library properties. In the menu **Library → Library properties**:

* Select `UTF-8` as encoding.
* Define a `General file directory`, which will be used to store shared PDF \(and other\) files.
* Check  `Refuse to save the library before external changes have been reviewed`.
* Define a sort order \(`year`, `author`, `title` is recommended\)..
* Check `Enable save formatters`, and defines these actions, to help enforcing a consistent format for the entries.

