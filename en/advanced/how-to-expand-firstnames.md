# How to expand first names of an entry

Sometimes, one has a BibTeX/biblatex entry with abbreviated short names:

```
@Article{Eshuis_2015,
  author    = {R. Eshuis and A. Norta and O. Kopp and E. Pitkanen},
  journal   = {{IEEE} Transactions on Services Computing},
  title     = {Service Outsourcing with Process Views},
  year      = {2015},
  month     = {jan},
  number    = {1},
  pages     = {136--154},
  volume    = {8},
  publisher = {Institute of Electrical and Electronics Engineers ({IEEE})},
}
```

Now, one wants to have the full first names. In case, there is a DOI available, this is as simple as the following steps:

1.  Determine the DOI: Switch to the "General" tab and click on "Look up DOI"

    <img src="../.gitbook/assets/expand-firstnames-step-1 (1).png" alt="Screenshot of determine DOI" data-size="original">
2.  Fetch BibTeX data from the DOI: Click on "Get BibTeX data from DOI"

    <img src="../.gitbook/assets/expand-firstnames-step-2 (1).png" alt="Screenshot of get BibTeX data from DOI" data-size="original">
3.  A popup appears. Select which data you want to merge into the existing entry

    <img src="../.gitbook/assets/expand-firstnames-step-3 (1) (1).png" alt="Screenshot of Merge Entries Dialog" data-size="original">
4.  Now the first names are expanded:

    <img src="../.gitbook/assets/expand-firstnames-step-4 (1).png" alt="Screenshot of Result" data-size="original">
