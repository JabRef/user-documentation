# Autosave

{% hint style="info" %}
Since: 3.7
{% endhint %}

## Purpose

The autosave feature helps to save an opened database without manual intervention. Furthermore, it synchronizes your local files which are associated with appropriate [shared SQL databases](../collaborative-work/sqldatabase.md).

## Activation

![Screenshot of the autosave preferences](../../.gitbook/assets/autosave.png)

You can activate the autosave feature through **Options → Preferences**, and then by choosing **File** on the left panel. At the lower part of the window, a section is dedicated to **AutoSave**.

## Autosave for local databases

If you are working on `.bib` files which are located on your file system, this feature will detect your changes automatically and save them without further intervention.

## Autosave for shared databases

Generally, you are able to save a shared database after connecting to it. This feature enables a full synchronization of your local bib file with the [shared SQL database](../collaborative-work/sqldatabase.md) which could simultaneously be used by other collaborators.

## Remarks

By default this feature is disabled for local databases. It has to be kept apart from the [main backup functionality](backup.md) as the backup is running continuously without users influence.

By using the [gitignore.io](https://www.gitignore.io/) service, you can generate an appropriate `.gitignore` file by opening [https://www.gitignore.io/api/jabref](https://www.gitignore.io/api/jabref).
