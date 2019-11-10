---
title: BibTeX entry editor
outdated: true
helpCategories:
  - General
---

# BibTeX entry editor

_Opened from main window by double-clicking anywhere on the line of the entry, or selecting the entry and pressing Enter or Ctrl + D. The panel is closed by pressing Esc._

In this panel you can specify all relevant information on a single entry. The entry editor checks the type of your entry, and lists all the fields that are required, and the ones that are optional, for referring the entry with _BibTeX_. In addition, there are several fields termed _General fields_, that are common to all entry types.

You can fully customize which fields should be regarded as required and optional for each type of entry, and which fields appear in the General fields tabs. See [Customizing entry types](https://github.com/JabRef/help.jabref.org/tree/1f58696d9081b60bf60823090c7594d67d7f5295/en/CustomEntries/README.md) for more information about this.

For information about how the fields should be filled out, see [BibTeX help](https://github.com/JabRef/help.jabref.org/tree/1f58696d9081b60bf60823090c7594d67d7f5295/en/Bibtex/README.md).

## The entry editor's panels

The entry editor contains six panels: _Required fields_, _Optional fields_, _General_, _Abstract_, _Comments_ and _BibTeX source_, where _General_, _Abstract_ and _Comments_ can be customized \(see [Customizing general fields](https://github.com/JabRef/help.jabref.org/tree/1f58696d9081b60bf60823090c7594d67d7f5295/en/GeneralFields/README.md) for details\). Inside the three first panels, Tab and Shift + Tab are used to switch focus between the text fields.

Up to JabRef 4.1, the field was called "Review". The field name was changed to "Comments" as "Review" indicated some external reviews or some fundamental comments.

Switch panels by clicking on the tabs, or navigate to the panel to the left or right using the following key combinations: Ctrl + Tab or Ctrl +  + switch to the tab to the right, and Ctrl + Shift + Tab or Ctrl + - switch to the tab to the left. You can also switch to the next or previous entry by pressing Ctrl + Shift + Down or Ctrl + Shift + Up, respectively, or by clicking the appropriate toolbar button.

The _BibTeX source_ panel shows how the entry will appear when the database is saved in _BibTeX_ format. If you wish, you can edit the _BibTeX_ source directly in this panel. When you move to a different panel, press Ctrl + S or close the entry editor, JabRef will try to parse the contents of the source panel. If there are problems, you will be notified, and given the option to edit your entry further, or to revert to the former contents. If **Show source by default** is checked in the **General options** tab of the **Preferences** dialog, the source panel will be the one shown each time you open the entry editor. If you prefer editing the source rather than using the other four panels, you should check this option.

**Tip:** If your database contains fields unknown to JabRef, these will be visible in the source panel.

**Tip:** the _pdf_ and _url_ fields support Drag and Drop operations. You can drop there an url from your browser. either a link to a pdf file \(that JabRef can download for you\) or you can keep the link.

## Field consistency checking

When the contents of a field is changed, JabRef checks if the new contents are acceptable. For field types that are used by _BibTeX_, the contents are checked with respect to the use of the '\#' character. The hash symbol is _only_ to be used in pairs \(except in escaped form, '\\#'\), wrapping the name of a _BibTeX_ string that is referenced. Note that JabRef does not check if the referenced string actually exists \(this is not trivial, since the _BibTeX_ style you use can define an arbitrary set of strings unknown to JabRef\).

If the contents are not accepted, the field will turn red, indicating an error. In this case the change will not be stored.

## Word/name autocompletion

The entry editor offers autocompletion of words. In the Preferences dialog you can enable or disable autocompletion, and choose for which fields autocompletion is active.

With autocompletion, JabRef records all words that appear in each of the chosen fields throughout your database. Whenever you write the beginning of one of these words, it will be suggested visually. To ignore the suggestion, simply write on. To accept the suggestion, either press Enter or use your arrow keys or other keys to remove the selection box around the suggested characters.

_Note:_ the words considered for suggestion are only the ones appearing in the same field in entries of the same database as the one you are editing. There are many ways to realise this kind of feature, and if you feel it should have been implemented differently, we'd like to hear your suggestions!

## Copy _BibTeX_ key including citation command.

Pressing Ctrl + K or the 'key' button causes the _BibTeX_ key for your entry including the surrounding to be copied to the clipboard.

## Copy _BibTeX_ key

Pressing Ctrl + Shift + K causes the _BibTeX_ key for your entry to be copied to the clipboard.

## Autogenerate _BibTeX_ key

Press Ctrl + G or the 'gen key' button \(the magic wand\) to autogenerate a _BibTeX_ key for your entry based on the contents of its required fields.

For more information on how JabRef generates _BibTeX_ keys, see [Customizing the BibTex key generator](https://github.com/JabRef/help.jabref.org/tree/1f58696d9081b60bf60823090c7594d67d7f5295/en/LabelPatterns/README.md).

## Related Articles Tab

By selecting this Tab, we are sending the title of the selected paper to Mr. DLib.

Mr. DLib is a service that calculates recommendations for you based on this title. After a short loading time the recommendations are listed in the Related Articles Tab. For detailed information see [Mr. DLibs help page](http://mr-dlib.org/information-for-users/information-about-mr-dlib-for-jabref-users/#). The following image shows the Related Articles Tab with recommendations to the selected item.

![Screenshot of the Related Articles Tab](../../.gitbook/assets/sceenshot_related_articles_en.PNG)

