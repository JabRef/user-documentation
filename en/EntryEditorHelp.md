# The entry editor

*Opened from main window by double-clicking anywhere on the line of the entry, or selecting the entry and pressing ENTER or CTRL-D. The panel is closed by pressing ESC.*

In this panel you can specify all relevant information on a single entry. The entry editor checks the type of your entry, and lists all the fields that are required, and the ones that are optional, for referring the entry with *bibtex*. In addition, there are several fields termed *General fields*, that are common to all entry types.

You can fully customize which fields should be regarded as required and optional for each type of entry, and which fields appear in the General fields tabs. See [Customizing entry types](CustomEntriesHelp.html) for more information about this.

For information about how the fields should be filled out, see [Bibtex help](BibtexHelp.html).

## The entry editor's panels

The entry editor contains six panels: *Required fields*, *Optional fields*, *General*, *Abstract*, *Review* and *BibTeX source*, where *General*, *Abstract* and *Review* can be customized (see [Customizing general fields](GeneralFields.html) for details). Inside the three first panels, TAB and SHIFT-TAB are used to switch focus between the text fields.

Switch panels by clicking on the tabs, or navigate to the panel to the left or right using the following key combinations: CTRL-TAB or CTRL-PLUS switch to the tab to the right, and CTRL-SHIFT-TAB or CTRL-MINUS switch to the tab to the left. You can also switch to the next or previous entry by pressing CTRL-SHIFT-DOWN or CTRL-SHIFT-UP, respectively, or by clicking the appropriate toolbar button.

The *bibtex source* panel shows how the entry will appear when the database is saved in *bibtex* format. If you wish, you can edit the *bibtex* source directly in this panel. When you move to a different panel, press CTRL-S or close the entry editor, JabRef will try to parse the contents of the source panel. If there are problems, you will be notified, and given the option to edit your entry further, or to revert to the former contents. If **Show source by default** is checked in the **General options** tab of the **Preferences** dialog, the source panel will be the one shown each time you open the entry editor. If you prefer editing the source rather than using the other four panels, you should check this option.

**Tip:** If your database contains fields unknown to JabRef, these will be visible in the source panel.

**Tip:** the *pdf* and *url* fields support Drag and Drop operations. You can drop there an url from your browser. either a link to a pdf file (that JabRef can download for you) or you can keep the link.

## Field consistency checking

When the contents of a field is changed, JabRef checks if the new contents are acceptable. For field types that are used by *bibtex*, the contents are checked with respect to the use of the '\#' character. The hash symbol is *only* to be used in pairs (except in escaped form, '\\\#'), wrapping the name of a *bibtex* string that is referenced. Note that JabRef does not check if the referenced string actually exists (this is not trivial, since the *bibtex* style you use can define an arbitrary set of strings unknown to JabRef).

If the contents are not accepted, the field will turn red, indicating an error. In this case the change will not be stored.

## Word/name autocompletion

The entry editor offers autocompletion of words. In the Preferences dialog you can enable or disable autocompletion, and choose for which fields autocompletion is active.

With autocompletion, JabRef records all words that appear in each of the chosen fields throughout your database. Whenever you write the beginning of one of these words, it will be suggested visually. To ignore the suggestion, simply write on. To accept the suggestion, either press *ENTER* or use your arrow keys or other keys to remove the selection box around the suggested characters.

*Note:* the words considered for suggestion are only the ones appearing in the same field in entries of the same database as the one you are editing. There are many ways to realise this kind of feature, and if you feel it should have been implemented differently, we'd like to hear your suggestions!

## Copy *bibtex* key including citation command.

Pressing CTRL-K or the 'key' button causes the *bibtex* key for your entry including the surrounding to be copied to the clipboard.

## Copy *bibtex* key

Pressing CTRL-SHIFT-K causes the *bibtex* key for your entry to be copied to the clipboard.

## Autogenerate *bibtex* key

Press CTRL-G or the 'gen key' button (the magic wand) to autogenerate a *bibtex* key for your entry based on the contents of its required fields.

For more information on how JabRef generates *bibtex* keys, see [Customizing the BibTex key generator](LabelPatterns.html).
