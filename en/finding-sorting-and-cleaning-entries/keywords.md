---
description: Keywords help you in organizing, sorting and searching your entries.
---

# Keywords

## The field "keywords"

Keywords can be added to your entries in a specific field. In the entry editor, the keywords field is displayed in the General tab. There, you can add new keywords to an entry by typing it in. If auto-completion is activated for the field keywords (**Options → Preferences → Entry editor**), suggestions are given based on existing keywords.

By default, the keyword separator is a comma. It can be redefined in the preferences (**Options → Preferences → Groups**).

{% hint style="info" %}
If some entries have a keyword separator differing from the prescribed one, you can use menu **Edit → Find and replace**. For example, you may want to replace semi-columns (;) by commas (,). Select the radio button "Limit to Fields" and type in "keywords" as the relevant field.​​
{% endhint %}

Additionally, the [special field](specialfields.md) values (relevance, priority, etc.) can be added to the keywords field automatically. This will allow you to group, sort, and search your library based on the special field values. See in **Options → Preferences → Entry table** the item "Special fields" and select "Synchronize with keywords".

## Management of keywords

### Managing the keywords of specified entries

Select at least one entry and go to **Edit → Manage keywords**.

![](<../.gitbook/assets/keywords-managekeywords-jabref5.2 (1).png>)

The keyword list is displayed in two modes:

* the keywords shared by ALL of the selected entries.
* the keywords appearing in ANY of the selected entries.

You can edit a keyword by double-clicking on it, or by clicking on the pencil icon. A keyword can be deleted by clicking on the minus icon.

### List of often-used keywords

To fasten the addition of often-used keywords, JabRef can store the list of your preferred keywords.

Go to **Options → Manage content selectors**.

![](<../.gitbook/assets/managecontentselectors-jabref5.2 (1).png>)

First, click on the field name "Keywords". Then, enter the list of your preferred keywords. Now, when you start to type one of your preferred keywords, JabRef will display a list of the matching ones (independently of the auto-completion). For more details, see the help section about [Managing content selectors](../advanced/contentselector.md).

## Searching for entries based on keywords

You can search for entries having specific keywords. For this, use a regular expression search, such as `anykeyword matches apple` or `keywords = modell?ing`. For more details, see the help section about [Searching within the library](search.md).

## Grouping entries based on keywords

Different types of groups can be created based on the values of the field keywords. See the help section about [Groups](groups.md).
