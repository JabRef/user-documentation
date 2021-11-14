# Find duplicates

JabRef can look for duplicated entries inside a library.

This feature is accessible directly through **Quality → Find duplicates**. It is also used when [importing new entries](../collect/import/importinspectiondialog.md) from a supported reference format or directly from the Internet.

Detection of potential duplicates is done by an edit distance algorithm. Extra weighting is put on the fields _author_, _editor_, _title._ and _journal_.

![Screenshot of the parallel display](<../.gitbook/assets/findduplicateswindow-paralleldisplay (1).png>)

The differences between the two entries can be emphasized through the drop-down menu located at the upper right-hand corner of the window. Five ways of displaying the differences are offered:

* **plain text**: as-is, no emphasis
* **show diff** - word: differences are shown in the right entry. Full words are struck out in red if they are removed from the left entry or underlined in blue if they are added to the right entry.
* **show diff** - character: differences are shown in the right entry. Individual characters are struck out in red or underlined in blue as above.
* **show symmetric diff** - word: differences are shown on both sides. Words are underlined and displayed in color.
* **show symmetric diff** - character: differences are shown on both sides. Characters are underlined and displayed in color.

In the central column, a radio button allows you to select which side to keep for each field: the **left side**, the **right side**, or **none**. By default, the left entry is kept and any fields not present in the left entry are obtained from the right entry.

## Selecting which entry to keep

![Screenshot of the buttons to choose which entry to keep](<../.gitbook/assets/findduplicateswindow-selecting (1).png>)

You are offered to:

* **Automatically remove exact duplicates**. This button shows up if there are exact duplicates. Clicking that leads to all exact duplicates to be removed.
* **Keep left** entry. Removes the right entry.
* **Keep right** entry. Removes the left entry.
* **Keep both** entries, meaning that you consider the two entries are not duplicates.
* **Keep merged entry only**, meaning that the merged entry is the best. Both previous entries are removed.
* **Cancel**, which will end the duplicate finding.
