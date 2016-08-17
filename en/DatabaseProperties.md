---
title: Database properties window
---

# Database properties window

Each database can have specific properties that can be modified through **File -&gt; Database Properties**).
These specific properties override the default properties (which are defined in **Options -&gt; Preferences**).

The database-specific properties are stored in the database itself.
This way, when moving the database to another computer, these properties are preserved. 
In most of cases, special fields starting with *@Comment{jabref-meta:* are used. 


## Database encoding

This setting determines which character encoding JabRef will use when writing this database to disk. Changing this setting will override the setting made in Preferences dialog for this database. JabRef specifies the encoding near the top of the bib file, in order to be able to use the correct encoding next time you open the file.

The dropdown menu allows to select one encoding. UTF-8 is highly recommended.


## Override default file directories

In your database, files (PDF, etc.) can be linked to an entry. The list of these files are stored in the *file* field of the entry. The location of these files have to be specified.

For your database, you can define a **general file directory** and a **user-specific file directory**.
These settings override the *main file directory* defined in the Preferences dialog.

Relative directories can be specified. This means that the location of the files will be interpreted relative to the location of the bib file. Simply setting a directory to "." (without quotes) means that the files should reside in the same directory as the bib file.

*Note: the legacy PDF/PS links (i.e. the *pdf* and *ps* fields, which were used in JabRef versions prior to 2.3), should in current versions be replaced by general file links.*


## Save sort order

When saving the database, the order of the entries will be preserved if **Save entries in their original order** is selected.
Alternatively, by selecting **Save entries ordered as specified**, you can choose to sort the entries using three criteria.
For each criteria, you can type-in the field to be used and select the order.


## Database protection

While you edit a shared database, another user could be editing it too.
By default, saving the database will overwrite changes done by others (although a warning message about the changes will be displayed). 

To avoid discarding changes involuntarily, and hence to allow a smooth collaborative work,
you can choose to *Refuse to save the database before external changes have been reviewed*.
This setting lets you enforce reviewing of external changes before the database can be saved: 
users will only be able to save the database after any external changes have been reviewed and merged (however, the user can disable individual changes in the course of reviewing them).

**Note:** this is not a security feature, merely a way to prevent users from overwriting other users' changes inadvertently. This feature does not protect your database against malicious users.


## Save actions

Field formatting can be tidy up upon saving the database. That ensures your entries have a consistent formatting.
If you check **Enable save actions**, the list of actions can be configured.
Each action is defined by:
- a database field (upon which the action will be applied).
- the type of action to be carried out (such as *HTML to LaTeX*, which converts HTML code to LaTeX code, as described in the window).
