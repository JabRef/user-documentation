# Check consistency

JabRef can check the consistency of a library.

This feature is available through **Quality → Check consistency**.

## Background

You’re finalizing your research paper for an upcoming conference, and the deadline is near. While reviewing your references, you notice inconsistencies - some citations are missing DOIs others are missing page numbers. Manually identifying these across dozens of entries is tedious and time-consuming.

JabRef now makes this process effortless with its Bibliography Consistency Check feature. It automatically scans your references, identifies missing or inconsistent fields, and presents a structured report, allowing you to fix issues with just a few clicks.

## How to use

1. Open JabRef and go to the Quality menu.
2. Click on "Check Consistency" (below "Check Integrity").
3. JabRef will run the check on your entire library and show the results in a new window.
4. The result window will display entries grouped by their entry type (e.g., articles, books).
5. Each entry will be shown in a table with columns indicating whether required fields are present (x), optional fields are present (o), or if a field is missing (-).
6. If any entry has missing fields, click on it to go directly to the entry in the entry editor.

## Checking a .bib File for Consistency

Let’s say we have a .bib file like this:

```bibtex
@Article{Corti_2009,
  author       = {Corti, Roberto and Flammer, Andreas J. and Hollenberg, Norman K. and Lüscher, Thomas F.},
  title        = {Cocoa and Cardiovascular Health},
  journaltitle = {Circulation}, 
  issn         = {1475-2662}, 
  volume       = {119}
}

@Article{Cooper_2007,
  author       = {Cooper, Karen A. and Donovan, Jennifer L. and Waterhouse, Andrew L. and Williamson, Gary},
  title        = {Cocoa and health: a decade of research},
  issn         = {1743-7075},
  volume       = {99}
}
```

Here, the second entry is missing the journal field, which is required for an article. Running the Check Consistency tool will highlight this issue as shown:

![Consistency check results](<../.gitbook/assets/consistencycheck_results.png>)

## Results Window

![Check consistency dialog](<../.gitbook/assets/checkconsistency.png>)

The result window is designed to present the consistency check results in an easily digestible format:

- **Entry Type Headings**: The first column lists the name of the selected entry type.
- **Choose Entry type**: Entry types (such as article, book, in-proceedings, etc.) will be listed in a dropdown menu.
- **Columns**:
  - **Column 2**: Citation key of the entry.
  - **Other columns**: Represent the fields and their status (`x`, `o`, `?`, or `-`).
- **Navigation**: Clicking on a line in the table will take you directly to the corresponding entry in the editor, making it easy to address inconsistencies.

## Symbols in the Results

The following symbols will be used to indicate the presence or absence of fields:

- `x`: Required field is present.
- `o`: Optional field is present.
- `?`: Unknown field is present.
- `-`: Field is absent.

This simple system helps you quickly identify entries that need attention.
