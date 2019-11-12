{% hint style="info" %}
Since: 3.7
{% endhint %}

# Backup

## Purpose

This module is always running in the background while you are working on a _BibTeX database_. It makes a _backup copy_ and keeps that up-to-date on every user interaction. For instance, when you change a field the new value would get saved into the backup copy.

Assumed that _JabRef_ crashes while you are working on a _BibTeX database_. When you try again to open the file _JabRef_ crashed with you will get the following dialog:

![Screenshot of the backup dialog](../../.gitbook/assets/backup_found.png)

Now you have the possibility to restore your changes which would normally get lost.

## Remarks

By default this feature is enabled and it is running continuously without users influence. By using the [gitignore.io](https://www.gitignore.io/) service, you can generate an appropriate `.gitignore` file by opening [https://www.gitignore.io/api/jabref](https://www.gitignore.io/api/jabref).

## Offstage

While opening a `.bib` file, _JabRef_ simultaneously creates a `.sav` file which is used as a current buffer. If _JabRef_ gets closed normally the `.sav` file will be removed. Otherwise, this file is going to be used for database restoration next time.

