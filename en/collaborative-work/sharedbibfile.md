---
title: Sharing a Bib(La)TeX Database
---

# Sharing a Bib\(La\)TeX Database

JabRef allows to share both Bib\(La\)TeX database and [SQL database](sqldatabase.md).

When sharing a Bib\(La\)TeX database, JabRef automatically recognizes a change in the `bib` file on disk and notifies the user of it. This works well on network drives.

_Note:_ the use of a version control system \(SVN, git, etc.\) is recommended as this will allow for reverting changes.

To make the sharing of a Bib\(La\)TeX database easier, it is recommended to set specific database properties. In the menu **File -&gt; database properties**:

* Select `UTF-8` as encoding.
* Define a `General file directory`, which will be used to store shared PDF \(and other\) files.
* Define a sort order \(`year`, `author`, `title` is recommended\).
* Check `Refuse to save the database before external changes have been reviewed`.
* Check `Enable save actions`, and defines these actions, to help enforcing a consistent format for the entries.

