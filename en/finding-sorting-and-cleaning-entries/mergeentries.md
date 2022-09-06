# Merge entries

JabRef can help you to merge entries of your library.

First, select the two entries to be merged. Then select the menu **Quality → Merge entries**. Alternatively, select the right-click menu **Merge entries**.

The **Merge entries** window will pop up:

![](<../.gitbook/assets/merge-entries-1.png>)

## Diff Highlighting

The differences between the two entries can be configured through the toolbox located at the top of the window. From the toolbox, you can choose to show or hide differences, choose how to display differences *(Unified or Split)* and you can also choose how to compare entries *(by words or characters)*.

**Show or Hide Differences**

- **Plain Text —** This option hides the differences.
- **Show Differences —** This option shows the differences.

**Choose Differences Display Mode**

- **Unified View —** In this mode, differences are shown on the right side.
- **Split View —** In this mode, differences are shown on both sides, with deletions on the left side and additions and updates on the right side.

**Choose Entries Comparison Method**

- **Highlight words —** This option compares entries values in terms of words.
- **Highlight characters —** This option compares entries values in terms of characters. It divides both entry values into characters before comparing each character individually. This is perfect for comparing values with small differences *(1 or 2 different characters)*.

From the toolbox's top-left corner, you also can choose to select all the left entry values by clicking `Left` or selecting all the right entry values by clicking `Right`. Be aware that selecting all entry values will select a value even when it is empty.

### Select Both Field Values (AKA Merge Fields)

When merging entries, sometimes you want to select both values for a certain field.
A common use case for this would be wanting the merged entry to have both the left and right entry groups.
Now, you can simply click the merge button next to the groups label and we’ll take care of the rest.
We’ll merge the left and right entry groups, keeping only one copy of any common group.
And this works for more than just groups - you can also merge keywords, comments and files.
So go ahead and give it a try - it’ll make your life a lot easier.

![](<../.gitbook/assets/three-way-merge-groups-keywords.png>)

### Open DOIs and URLs from The Merge Dialog

There are two buttons at the end of each field cell: one for copying the content of the field cell, and the other for opening links;
at the moment, only URLs and DOIs can be opened.

![](<../.gitbook/assets/three-way-merge-open-doi-copy.png>)

### Select or Edit Merged Entry Manually

For each field, you can select whether to choose the left entry value or the right one.
You can do that by clicking on the given field cell. Once you did that, the merged entry will update its content to reflect the new change.

You can also edit the merged entry values manually.
Doing so, will update the selected field cell if the left or right cell equals that value you typed.

Finally, after selecting which fields to keep, you can decide to **Merge entries**. Alternatively, you can press **Cancel**.

**See also:** [Find duplicates](findduplicates.md)
