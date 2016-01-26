The JabRef main window
======================

*Note:* most menu actions referred in the following have keyboard shortcuts, and many are available from the toolbar. The keyboard shortcuts are found in the pull-down menus.

This is the main window from where you work with your databases. Below the menubar and the toolbar is a tabbed pane containing a panel for each of your currently open databases. When you select one of these panels, a table appears, listing all the database's entries, as well as a configurable selection of their fields.

-   You decide which fields are shown in the table by checking the fields you want to see in the **Preferences** dialog.
-   Double-click a line of the table to edit the entry content. You can navigate the table with the arrow keys.
-   The table is sorted according to a set of fields of your choosing. The default sort order can be set up in **Preferences -&gt; Entry table**, but to more quickly change the order, click the header of a column to set it as the primary sort criterion, or reverse the sorting if it is already set. Another click will deselect the column as sorting criterion. Hold down **CONTROL** and click a column to add, reverse or remove it as a sub-criterion after the primary column. You can add an arbitrary number of sub-criteria, but only three levels will be stored for the next time you start JabRef.
-   Adjust the width of each column by dragging the borders between their headers.
-   Color codes can be toggled in the **Preferences** dialog, and they help you visualize the completeness of your database by coloring cells as follows:
    -   A <span style="color: red">red</span> cell in the leftmost column denotes an incomplete entry.
    -   A <span style="color: #909000">yellow</span> cell in the leftmost column denotes an entry that doesn't define all required fields by itself, but that contains a cross-reference.
    -   A <span style="color: blue">blue</span> cell denotes a required field.
    -   A <span style="color: green">green</span> cell denotes an optional field.
    -   An uncolored cell denotes a field which is not used by the *bibtex* program for this type of entry. The field can still be edited in JabRef.

Adding a new entry
------------------

There are several ways to add a new entry. The **New entry** menu action shows a dialog where you can choose the type of the entry from a list. To bypass this dialog, there are also separate menu actions for each entry type, and keyboard shortcuts for the most common types.

When a new entry is added, by default an [entry editor](EntryEditorHelp.md) for the entry will be opened. This behaviour can be toggled in the **Preferences** dialog.

*Note:* We strongly recommend learning the shortcuts for the entry types you use most often, e.g. CTRL-SHIFT-A for adding an *article* entry.

Editing an entry
----------------

To open an [entry editor](entry_editor_help.md) for an existing entry, simply double-click anywhere on the appropriate line will open the [entry editor](entry_editor_help.md) (or select the entry and press ENTER).

Referencing a *bibtex* string in a field
----------------------------------------

In JabRef you write the contents of all fields the same way as you would in a text editor, with one exception: to reference a string, enclose the name of the string in a set of \# characters, e.g.:
  '\#jan\# 1997',
which will be interpreted as the string named 'jan' followed by ' 1997'.

See also: [string editor](string_editor_help.md).
