---
title: Autosave
helpCategories: ["General"]
---

# Autosave

## Purpose

The autosave feature helps prevent loss of data if your computer or JabRef crashes. 

## Configuration

![Screenshot of the autosave preferences](./images/AutoSave.png)

You can activate and configure the autosave feature through **Options -&gt; Preferences**, and then by choosing **File** on the left panel. At the lower part of a window, a section is dedicated to **AutoSave**.

First, you can choose to activate autosave (recommended) or not. You can then choose the delay between two autosaves. Finally, you can choose to be prompted if JabRef is using an autosaved file (hence you know something went wrong).

## Functioning

When autosave is enabled, JabRef will check regularly (with the configurable time interval) whether any of your databases have been modified since your last save. For each one that has, JabRef will save a copy of the database in the file named `.$[file]$`, where `[file]` is the file name of the database in question. The autosave file lies in the same directory as the bib file.

The autosave file will be deleted whenever you actively save the database, and if you quit JabRef normally. However, if JabRef is shut down due to a crash, the autosave file will remain on disk. In this case, JabRef will detect it the next time you attempt to open the database. JabRef will use the autosaved file to recover the database.

Autosave is enabled by default, with a save interval of 5 minutes. If you prefer, you can disable the option to prompt before using an autosave. In this case, JabRef will quietly recover the database without providing any notifications.
