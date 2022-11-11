# Entry Editor

{% hint style="warning" %}
This information is outdated. Please help to improve it ([how to edit a help page](../../contributing/how-to-improve-the-help-page.md#editing-help-pages-directly-in-the-browser)).
{% endhint %}

The entry editor opens from [main window](../main-window.md) (table of entries). To open it for a specific entry, you can either:

* double-click on the entry in the table of entries
* select the entry and press `Enter`
* select the entry and go to the menu **View → Open entry editor**
* select the entry and press `CTRL + E`

Then you can modify the content of the entry (see below). When done, click on the top left-hand corner of the entry editor or press **ESC** to close the entry editor and go back to the table of entries.

In this panel you can specify all relevant information on a single entry. The entry editor checks the type of your entry, and lists all the fields that are required, and the ones that are optional, for referring the entry with _BibTeX_. In addition, there are several fields termed _General fields_, that are common to all entry types.

You can fully customize which fields should be regarded as required and optional for each type of entry, and which fields appear in the General fields tabs. See [Customizing entry types](../../setup/customentrytypes.md) for more information about this.

For information about how the fields should be filled out, see [BibTeX help](../fields.md).

## The entry editor's panels

The entry editor contains six panels: _Required fields_, _Optional fields_, _General_, _Abstract_, _Comments_ and _Bib(la)TeX source_, where _General_, _Abstract_ and _Comments_ can be customized (see [Customizing general fields](../../setup/generalfields.md) for details). Inside the three first panels, Tab and Shift + Tab are used to switch focus between the text fields.

Up to JabRef 4.1, the field was called "Review". The field name was changed to "Comments" as "Review" indicated some external reviews or some fundamental comments.

Switch panels by clicking on the tabs, or navigate to the panel to the left or right using the following key combinations: Ctrl + Tab or Ctrl + + switch to the tab to the right, and Ctrl + Shift + Tab or Ctrl + - switch to the tab to the left. You can also switch to the next or previous entry by pressing Ctrl + Shift + Down or Ctrl + Shift + Up, respectively, or by clicking the appropriate toolbar button.

_BibTeX source_ (termed _biblatex_ _source_ in case of a biblatex library) shows how th entry will appear when the database is saved in _BibTeX_ (or _biblatex_) format. If you wish, you can edit the source directly in this panel. When you move to a different panel, press Ctrl + S or close the entry editor, JabRef will try to parse the contents of the source panel. If there are problems, you will be notified, and given the option to edit your entry further, or to revert to the former contents.

**Tip:** If your database contains fields unknown to JabRef, these will be visible in the source panel.

**Tip:** the _pdf_ and _url_ fields support Drag and Drop operations. You can drop there an url from your browser. either a link to a pdf file (that JabRef can download for you) or you can keep the link.

## Field consistency checking

When the contents of a field is changed, JabRef checks if the new contents are acceptable. For field types that are used by _BibTeX_, the contents are checked with respect to the use of the '#' character. The hash symbol is _only_ to be used in pairs (except in escaped form, '\\#'), wrapping the name of a _BibTeX_ string that is referenced. Note that JabRef does not check if the referenced string actually exists (this is not trivial, since the _BibTeX_ style you use can define an arbitrary set of strings unknown to JabRef).

If the contents are not accepted, the field will turn red, indicating an error. In this case the change will not be stored.

## Handling of string constants

BibTeX supports string constants. One can define in the bibliography. JabRef offers editing of these strings via the [String Editor](../../setup/stringeditor.md).

For instance, if you see `#jan#` in the `month` field, the "real" BibTeX entry looks like `month = jan`. For more details, see [Strings](../strings.md).

## Word/name autocompletion

The entry editor offers autocompletion of words. In the **Options → Preferences → Entry editor**, you can enable or disable autocompletion, and choose for which fields autocompletion is active.

With autocompletion, JabRef records all words that appear in each of the chosen fields throughout your database. Whenever you write the beginning of one of these words, it will be suggested visually. To ignore the suggestion, simply write on. To accept the suggestion, either press Enter or use your arrow keys or other keys to remove the selection box around the suggested characters.

_Note:_ the words considered for suggestion are only the ones appearing in the same field in entries of the same database as the one you are editing. There are many ways to realise this kind of feature, and if you feel it should have been implemented differently, we'd like to hear your suggestions!

## Drag and drop behavior settings

The entry editor allows for file(s) to be dragged and dropped directly into the entry editor window. JabRef follows the default behavior of your operating system and uses [Modifier keys](https://www.computerhope.com/jargon/m/modifkey.htm) to distinguish the drag and drop options. **Copy** means the entry editor will create a copy of the file in the current directory. The keyboard shortcuts needed to move, copy or link files are the following: **Move** means, the entry will move the file to the defined file directory, and rename the file according to the filename and file directory patterns. **Link** means the entry editor will create a link to the file. This creates a shortcut to the file and will not copy the file to the current directory.

* Move: Ctrl + Drag (Windows) or Option + Drag (MacOS/Linux)
* Copy: Shift + Drag (Windows) or Command + Drag (MacOS/Linux) or no key + Drag
* Link: Alt + Drag (Windows) or Command + Option + Drag (MacOS/Linux)

## Copy citation key including citation command

Pressing Ctrl + K or the 'key' button causes the citation key for your entry including the surrounding to be copied to the clipboard.

## Copy citation key

Pressing Ctrl + Shift + K causes the citation key for your entry to be copied to the clipboard.

## Autogenerate citation key

Press Ctrl + G or the 'gen key' button (the magic wand) to autogenerate a citation key for your entry based on the contents of its required fields.

For more information on how JabRef generates citation keys, see [Customizing the citation key generator](../../setup/citationkeypatterns.md).

## Related Articles Tab

By selecting this Tab, we are sending the title of the selected paper to Mr. DLib.

Mr. DLib is a service that calculates recommendations for you based on this title. After a short loading time the recommendations are listed in the Related Articles Tab. For detailed information see [Mr. DLibs help page](http://mr-dlib.org/information-for-users/information-about-mr-dlib-for-jabref-users/). The following image shows the Related Articles Tab with recommendations to the selected item.

![Screenshot of the Related Articles Tab](<../../.gitbook/assets/sceenshot\_related\_articles\_en (2) (1) (1) (5) (5) (5) (5) (5) (5) (3) (1) (1) (1) (1).PNG>)

## File Annotations Tab

Link a new PDF file to JabRef.

Mark or comment something in the PDF.

In the entry editor, you can now select the tab "File annotations" and you will see the content you have highlighted or commented on in the PDF.

If you have multiple PDFs linked to the entry, you can select the document as well in the File Annotation tab.
