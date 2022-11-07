# LaTeX Citations Tab

This tool allows you to search for citations in LaTeX files.

In the user interface, a tab was added to the entry editor, the aesthetics have been improved, and the tool was renamed to **Search for Citations in LaTeX files**.

![LaTeX Citations tab](<../../.gitbook/assets/latex-citations-window (1).png>)

## Overview

A new tab was added to the entry editor. It allows to search for citations to the active entry in the LaTeX file directory. It can be configured in the [_Library properties_ dialog](../../setup/databaseproperties.md).

See the image below to see how it works:

![LaTeX Citations tab animation](<../../.gitbook/assets/latex-citations (1).gif>)

## Key Features

### The new tab

* A _LaTeX Citations_ tab has been added to the entry editor.
* This tab can be disabled in the _Entry editor_ preferences.
* A progress indicator appears while parsing.
* Current search is cancelled if another entry is selected.
* Parsed files are stored when the tool is run for the first time (to achieve better performance).
* The current search path is shown at the bottom, next to a button to set the LaTeX file directory.
* A user-friendly error logging and handling has also been implemented.

### A custom user interface controller for listing citations

* The citations list view is the same for dialog tool and tab.
* The context of citations is shown instead of the whole line of text (which is shown as a tooltip).
* Absolute file path has been changed into a relative one, from the search path.
* New icons and styles for context, file path, and position (line and column) of a citation.
