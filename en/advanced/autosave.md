# Automatic Backup (.sav and .bak) and Autosave

{% hint style="info" %}
The autosave and backup features is available since JabRef 3.7.

To reduce the amount of configuration options, the possibility to disable the creation of `.bak` files was removed in JabRef 5.1.
{% endhint %}

JabRef generates `.sav` and `.bak` files while working. `.sav` is the automatic backup feature: Each 15 seconds, the current state of the library is saved. `.bak` preserves the last state of the library after saving. Thus, one can go back one save command in the history.

By using the [gitignore.io](https://www.gitignore.io) service, you can generate an appropriate `.gitignore` file by opening [https://www.gitignore.io/api/jabref](https://www.gitignore.io/api/jabref).

In addition to `.bak` and to `.sav`, JabRef offers **automatic saving of the library**. No need to click on File --> Save or pressing Ctrl+S anymore: The opened database are saved automatically without manual intervention.

## Automatic saving of the current library

In case the `.bib` file should automatically be saved on each change, you can direct JabRef to do so. This feature needs to be activated in the preferences:

![Screenshot of the autosave preferences](<../.gitbook/assets/autosave (2) (2) (2) (2) (2) (2) (2) (2) (4) (4) (4) (2) (1) (1).png>)

## Automatic backup of current library edits

This functionality runs in the background while you are working on a _bibliographic database_. It makes a _backup copy_ (in a `.bib.sav` file) and keeps that up-to-date on every user interaction. For instance, when you change a field the new value would get saved into the backup copy. Assuming that _JabRef_ crashes while you are working on a _BibTeX database_. When you try again to open the file _JabRef_ crashed with you will get the following dialog:

![Screenshot of the backup dialog](<../.gitbook/assets/backup\_found (2) (2) (2) (2) (2) (2) (2) (2) (4) (4) (3) (1) (1) (1) (1) (4).png>)

Now you have the possibility to restore your changes which would normally get lost.

When _JabRef_ gets closed normally the `.sav` file will be removed. Otherwise, this file is going to be used for database restoration next time.

## Backup of last library version

The `.bak` file preserves the last state of the library before saving. Thus, one can go back one save command in the history. For more advanced history, we recommend to use [git as version control system](https://git-scm.com/book).
