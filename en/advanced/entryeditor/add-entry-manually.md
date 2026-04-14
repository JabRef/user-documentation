# The Bibtex / biblatex source tab

## What function fulfills the biblatex source tab?

The biblatex source tab allows you to add and edit biblatex entries by simply typing the desired content using correct biblatex syntax. Advanced users may at times find this to be the speedier option. The required syntax is extensively described in ["About BibTeX and its fields"](../fields.md).

Additionally, here the data is shown "as is", which means special symbols that are usually supposed to be hidden or translated into readable form, may show regardless.

As an example, let's inspect the file field of this example entry:

```
@Article{BennLazar2021www,
author = {Benn, Claire and Lazar, Seth},
date = {2021-09},
journaltitle = {Canadian Journal of Philosophy},
title = {What’s Wrong with Automated Influence},
doi = {10.1017/can.2021.23},
issn = {1911-0820},
number = {1},
pages = {125--148},
volume = {52},
abstract = {Abstract Automated Influence is the use of Artificial Intelligence (AI) to collect, integrate, and analyse people’s data in order to deliver targeted interventions that shape their behaviour. We consider three central objections against Automated Influence, focusing on privacy, exploitation, and manipulation, showing in each case how a structural version of that objection has more purchase than its interactional counterpart. By rejecting the interactional focus of “AI Ethics” in favour of a more structural, political philosophy of AI, we show that the real problem with Automated Influence is the crisis of legitimacy that it precipitates.},
creationdate = {2025-07-26T13:27:25},
file = {:JabRefBibLinkedFiles/BennLazar2021www Benn & Lazar (2021-09) What’s Wrong Automated 125--148.pdf:pdf},
modificationdate = {2026-04-12T16:50:28},
publisher = {Cambridge University Press (CUP)},
}
```

If we compare the field contents of the _{} biblatex source_ tab (a representation of the raw biblatex data) with the fields contents in the _General_ tab (a simplified user oriented representation of the field contents), we can see a difference. The characters `:` and `:pdf` exist in the _{} biblatex source_ tab, but are not depicted in the _General_ tab.

<figure><picture><source srcset="../../.gitbook/assets/file field in {} biblatex source tab (1).png" media="(prefers-color-scheme: dark)"><img src="../../.gitbook/assets/grafik (7).png" alt="Picture showing the {} bilatex source tab that includes the file field with its raw data."></picture><figcaption><p>In this "{} biblatex source" tab, the file field contains `:JabRefBibLinkedFiles/BennLazar2021www Benn &#x26; Lazar (2021-09) What’s Wrong Automated 125--148.pdf:pdf`</p></figcaption></figure>

<figure><picture><source srcset="../../.gitbook/assets/file field in General Tab.png" media="(prefers-color-scheme: dark)"><img src="../../.gitbook/assets/grafik (8).png" alt="Picture showing the entry editor with the file field in the General tab."></picture><figcaption><p>In the "General" Tab, the file field depicts: `JabRefBibLinkedFiles\BennLazar2021www Benn &#x26; Lazar (2021-09) What’s Wrong Automated 125--148.pdf`</p></figcaption></figure>
