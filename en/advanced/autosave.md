# Automatic backup (.sav and .bak) and synchronization

{% hint style="info" %}
Changelog:\


JabRef 5.8\
Major rework and a change in what .bak and .sav denote. Henceforth,\
`.sav` is a temporarily written file.\
`.bak` is a backup file.

\
JabRef 5.1\
To reduce the amount of configuration options, the possibility to disable the  creation of `.bak` files was removed.\
\
JabRef 6.0\
Autosave became "Synchronize local libraries with their files": external changes to the file are merged in automatically.\
\
JabRef 3.7\
First introduction of the autosave and backup features.\
`.sav` is the automatic backup feature.\
`.bak` preserves the last state of the library after saving
{% endhint %}

## What are `.sav`, `.bak` and `.tmp` files?

JabRef generates `.sav`, `.bak` and `.tmp` files while working.

* `.bak` stands for the automatic backup feature: Each 20 seconds, after a change to the library, the current state of the library is saved to a .bak file. JabRef keeps 10 older versions of a .bak file in the [user data dir](https://github.com/harawata/appdirs#supported-directories).
* `.sav` preserves the last state of the library after saving. Thus, one can go back one save command in the history. Used when writing the .bib file. Used for copying the .bib away before overwriting on save.
* `.tmp` is a temporary file with changes that are supposed to be written to the `.bib` file.

**Rough outline of what's happening during a write to the `.bib` file:**\
\
A `.tmp` will be written --> `.bib` copies to `.sav` --> `.tmp` copies to `.bib` --> `.sav` gets deleted --> 20 seconds later, a copy of the `.bib` file will be stored as`.bak` file in the user data dir.

#### How to ignore JabRef's .sav and .bak files in Git

By using the [gitignore.io](https://www.gitignore.io) service, you can generate an appropriate `.gitignore` file by opening [https://www.gitignore.io/api/jabref](https://www.gitignore.io/api/jabref). A `gitignore` file specifies intentionally untracked files that Git should ignore. Files already tracked by Git are not affected; See [https://git-scm.com/docs/gitignore](https://git-scm.com/docs/gitignore) for further details.&#x20;

## Automatic backup of current library edits

This functionality runs in the background while you are working on a _bibliographic database_. It makes a _backup copy_ (the `.bak` file) and keeps that up-to-date on every user interaction. For instance, when you change a field the new value would get saved into the backup copy. Assuming that _JabRef_ crashes while you are working on a _BibTeX database_. When you try again to open the file _JabRef_ crashed with you will get the following dialog:

<div align="left">

<figure><img src="../.gitbook/assets/backup-not-found.png" alt=""><figcaption><p>Screenshot of the backup found dialog</p></figcaption></figure>

</div>

Now you have the possibility to restore and review your changes which would normally get lost.

For shared remote libraries and more advanced history, we recommend to use [git as version control system](https://git-scm.com/book).

#### Where can I find the backup files?

* **The backup files (`.bak`) can be found in the** [**user data dir**](https://github.com/harawata/appdirs#supported-directories)**.**
* **Unix/Linux:**\
  `/home/<username>/.local/share/org.jabref/jabref`
* **Windows:** \
  Windows 7/10:\
  `C:\Users\<Account>\AppData\org.jabref\jabref`\
  Alternatively, open the run dialogue by pressing `Windows+R`, then enter `%APPDATA%\..\Local\org.jabref\jabref` \
  Windows XP: \
  `C:\Documents and Settings\<Account>\Application Data\Local Settings\org.jabref\jabref>`
* **Mac OS X:** \
  `/Users/username/Library/Application Support/org.jabref/jabref`

## Automatic saving and synchronization of the current library

JabRef can keep a local library and its `.bib` file the same in both directions. Enable **Synchronize local libraries with their files** in Preferences → General → Saving:

* Changes you make in JabRef are saved to the `.bib` file automatically. No need to click on File → Save or to press Ctrl+S anymore.
* Changes another program makes to the `.bib` file (a text editor, a `git pull`, a cloud synchronization client) are merged into the open library automatically. A short notification reports how many changes were merged. If the same entry was also edited in JabRef, the fields changed on disk are still taken over.
* JabRef only asks you to review external changes when they collide with your own unsaved edits: the same field changed differently in JabRef and in the file, or an entry deleted on one side and changed on the other. The "External changes detected" notification then offers a review of only those items.

When the option is off, JabRef reports every external change with the "External changes detected" notification and leaves it to you to review or dismiss them.

<div align="center">

<figure><img src="../.gitbook/assets/preferences-autosave.png" alt=""><figcaption><p>Screenshot of the synchronization preference</p></figcaption></figure>

</div>
