---
title: Creating entries using an ISBN number
helpCategories: ["Fetching entries from the web", "... using publication identifiers"]
since: 3.8
---

# Creating entries using an ISBN number

To use this feature, choose **BibTeX -&gt; New entry...**.
In the lower part, there is the box "ID-based entry generator".
In the field "ID type", you can select "ISBN".
The field "ID" is focused.
Enter the ISBN here and press <kbd>Enter</kbd> to generate an entry based on the Id.
You can also click on "Generate".
Then, [eBook.de's](http://www.ebook.de/) API is used to convert an ISBN to a BibTeX entry.
If no entry is found, the fetcher offered at <https://bibtex.chimbori.com/> is used.
The found entry is opened in an entry editor.
In case an error occurs, a popup is shown.

All fetched entries contain a `url` field.
This field points to the URL of the book at the respective online book store.
In case you buy the book using the link, the service providers (ebook.de or chimbori.com) receive a commission to fund the service.

![Screenshot of new entry dialog](./images/NewEntryChooseType-IDGeneratorHighlighted-ISBN.png)
