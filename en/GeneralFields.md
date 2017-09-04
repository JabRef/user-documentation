---
title: Customizing general fields
helpCategories: ["Setup"]
---

# Customizing general fields

You can add an arbitrary number of tabs to the entry editor. These will be present for all entry types. To customize these tabs, go to **Options → Set up general fields**.

You specify one tab on each line. The line should start with the name of the tab, followed by a colon (:), and the fields it should contain, separated by semicolons (;).

For example:

    General:url;keywords;doi;pdf
    Abstract:abstract;annote

will give one tab named "General" containing the fields *url*, *keywords*, *doi* and *pdf*, and another tab named "Abstract" containing the fields *abstract* and *annote*.
