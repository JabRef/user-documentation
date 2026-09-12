# Sharing a Bib\(la\)TeX Library

When sharing a Bib\(la\)TeX library, JabRef automatically recognizes a change in the `bib` file on disk and notifies the user of it. This works well on network drives.

_Note:_ the use of a version control system \(SVN, git, etc.\) is recommended as this will allow for reverting changes.

To make the sharing of a Bib\(la\)TeX library easier, it is recommended to set specific library properties. In the menu **Library → Library properties**:

* Select `UTF-8` as encoding.
* Define a `Library-specific file directory`, which will be used to store shared PDF \(and other\) files.
* Check  `Refuse to save the library before external changes have been reviewed`.
* Define a sort order \(`year`, `author`, `title` is recommended\)..
* Check `Enable save formatters`, and defines these actions, to help enforcing a consistent format for the entries.


## Reviewing external changes

When the `bib` file changes on disk while it is open, JabRef shows a notification "External changes detected" with two actions:

* **Dismiss changes** closes the notification. The next save overwrites the file with the in-memory library.
* **Review changes** opens the External Changes Resolver, listing every difference between the file on disk and the library in memory. Select a change and choose **Accept** (take the version from disk), **Deny** (keep the in-memory version), or **Merge...** (for modified entries: combine both versions field by field).

The dialog closes automatically once every change is resolved, and the decisions are applied to the library. If all changes were accepted, the library matches the file on disk and is not marked as changed; otherwise it is marked as changed and needs to be saved.

Closing the dialog before all changes are resolved applies nothing: the library stays as it was, and the notification remains so the review can be resumed later.
