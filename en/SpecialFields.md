---
title: Special Fields
outdated: true
helpCategories: ["Fields"]
---

# Special Fields

Special fields offer the functionality

-   rate read papers
-   mark papers as relevant for the work
-   mark BibTeX entries as quality assured, and
-   prioritize unread papers.

The main difference from the marked entry is that the rated entry is not floating by default and only highlight the number column. Thus, an entry may be both marked and rated.

Each special field may be turned on and off in the settings.

## Types of Fields

### Ranking

The aim is to add a functionality to set a range of “positive” ratings. JabRef offers a rank from one to five stars to rate papers.

### Relevance

An entry may be marked as relevant.

### Quality Assured

An entry may be marked as quality assured. The intention is to mark BibTeX entries, where a thorough checking of the field contents has been done.

### Priority

One may prioritize entries from prio3 (low) to prio1 (high). The main intention is to prioritize unread papers.

## Storage in the BibTeX Entry

Internally, each special field is stored in a separate BibTeX field. If “Write values of special fields as separate fields to BibTeX” is active, these fields are also written when the database is saved. JabRef also offers synchronizing the fields with keywords. This is enabled by the setting “Synchronize with keywords”. If this setting is active, then each change in a special field is reflected in the keyword field. Vice versa, each change in a keyword also leads to a change in the special field. Additionally, when loading a the database or pasting a new entry, the keywords are used to set the special field values.
