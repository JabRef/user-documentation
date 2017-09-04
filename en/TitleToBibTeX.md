---
title: Creating entries using the title
helpCategories: ["Fetching entries from the web", "... using publication identifiers"]
since: 3.8.1
---

# Creating entries using the title of an entry

To use this feature, choose **BibTeX → New entry...**.
In the lower part, there is the box "ID-based entry generator".
In the field "ID type", you can select "Title".
The field "ID" is focused.
Enter the title here and press <kbd>Enter</kbd> to generate an entry based on the title.
You can also click on "Generate".
Then, <http://dx.doi.org/> (provided by <http://crossref.org/>) is used to determine the DOI and convert the determined DOI to a BibTeX entry.
The found entry is opened in an entry editor.
In case an error occurs, a popup is shown.
In case no DOI could be determined, no entry is created.
