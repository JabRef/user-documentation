---
title: Entry time stamps
---

# Entry time stamps

JabRef can optionally set a field to contain the date an entry was added to the database. 

You can disable or enable this feature by entering **Preferences -&gt; General**, and selecting/deselecting the line *'mark new entries with addition date'*. You can also change the date format (see below). 
If an entry with a timestamp is pasted or imported, the field is updated with the current date if *'Overwrite'* is checked.
By default, the date is added in a field called *'timestamp'*, which is visible in the **General fields** tab in the [entry editor](EntryEditorHelp). You can alter the name of this field.
Finally, the value of the timestamp field will be updated upon changes in the entry if *'Update timestamp on modification'* is checked.

## Formatting

The formatting of the time stamp is determined by a string containing designator words that indicate the position of the various parts of the date.

These are some of the available designator letters (examples are given in parentheses for Wednesday 14th of September 2005 at 5.45 PM):

-   **yy**: year (05)
-   **yyyy**: year (2005)
-   **MM**: month (09)
-   **dd**: day in month (14)
-   **HH**: hour in day (17)
-   **mm**: minute in hour (45)

These designators can be combined along with punctuation and whitespace. A couple of examples:

-   **yyyy.MM.dd** gives **2005.09.14**
-   **yy.MM.dd** gives **05.09.14**
-   **yyyy.MM.dd HH:mm** gives **2005.09.14 17:45**

