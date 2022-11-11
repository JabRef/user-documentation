---
description: Create an entry based on an ID such as DOI or ISBN.
---

# Add entry using an ID

## From an ID to an entry

For other identifiers, choose **Library → New entry**, or click on the `New entry` button, or use the keyboard shortcut `CTRL + N`. In the lower part of the window, there are two boxes : "ID type" and "ID". In the field "ID type", you can select the desired identifier, e.g. "ISBN" (it works also for DOI). Then enter the identifier in the textbox below and press Enter. That will generate an entry based on the given ID (you can also click on "Generate"). The entry is added to your library and opened in the entry editor. In case an error occurs, a popup is shown.

![Window for selecting an entry type or the ID of an entry. Note: the actual content of the dialog depends on the database mode (BibTeX or biblatex).](<../.gitbook/assets/jabref-5.3-selectentrytype (1).png>)

{% hint style="info" %}
Sometimes the new entry contains a `url` field. This field usually points to the URL of the book at the respective online book store. In case you buy the book using this link, the service provider (e.g., [ebook.de](https://www.ebook.de)) receive a commission to fund the service.
{% endhint %}

{% hint style="info" %}
You can also add an entry by simply pasting its BibTex or its DOI from your clipboard to the maintable.
{% endhint %}

## Supported databases

### Arxiv

[ArXiv](https://arxiv.org) is a repository of scientific preprints in the fields of mathematics, physics, astronomy, computer science, quantitative biology, statistics, and quantitative finance ([Wikipedia](https://en.wikipedia.org/wiki/ArXiv)).

ID search is carried out using the [ArXiv identifier](https://arxiv.org/help/arxiv\_identifier).

### Crossref

(Crossref)\[[https://en.wikipedia.org/wiki/Crossref](https://en.wikipedia.org/wiki/Crossref)] is an official Digital Object Identifier (DOI) Registration Agency of the International DOI Foundation.

ID search is carried out using the DOI.

### ISBN

First, [eBook.de's](https://www.ebook.de/de/) API is used to fetch bibliographic information based on the ISBN. If no entry is found, the JabRef tries [OttoBib](https://www.ottobib.com) to get data.

ID search is carried out using the [International Standard Book Number](https://en.wikipedia.org/wiki/International\_Standard\_Book\_Number).

![Screenshot of new entry dialog](<../.gitbook/assets/newentrychoosetype-idgeneratorhighlighted-isbn (2) (4) (4) (3) (1) (4) (4) (4) (4) (6) (2) (1) (1).png>)

### DiVA

[DiVA (Digitala Vetenskapliga Arkivet)](https://info.diva-portal.org/about-diva/) is a database with publications from about [40](https://www.diva-portal.org/smash/aboutdiva.jsf) Swedish universities and research institutions.

ID search is carried out using the DiVA id (diva2).

![Screenshot of new entry dialog](<../.gitbook/assets/newentrychoosetype-idgeneratorhighlighted-diva (1).png>)

### DOI

JabRef uses [http://dx.doi.org/](http://dx.doi.org) (provided by [http://crossref.org/](http://crossref.org)) to convert the given DOI to a new entry.

ID search is carried out using the DOI.

![Screenshot of new entry dialog](<../.gitbook/assets/newentrychoosetype-idgeneratorhighlighted (1).png>)

{% hint style="warning" %}
If JabRef cannot find the reference of your DOI using this ID type, please, try the same DOI with the ID type "mEDRA". The ID type mEDRA looks for the reference corresponding to a DOI too, but using another registration agency.
{% endhint %}

### IACR eprints

The [International Association for Cryptologic Research](https://www.iacr.org) maintains an eprint archive to which anyone can submit papers and technical reports. These eprints are given IDs based on the year of submission, e.g. the 10th submission in 2018 gets the ID "2018/10". To get the ID, you may want to use their web search form at [https://eprint.iacr.org/search.html](https://eprint.iacr.org/search.html).

ID search is carried out using the Cryptology ePrint ID.

### Library of congress

The Library of Congress is the research library that officially serves the United States Congress and is the _de facto_ national library of the United States ([wikipedia](https://en.wikipedia.org/wiki/Library\_of\_Congress)).

ID search is carried out using the [Library of Congress Control Number](https://en.wikipedia.org/wiki/Library\_of\_Congress\_Control\_Number) (LCCN).

### MathSciNet

[MathSciNet](http://www.ams.org/mathscinet/) is a searchable online bibliographic database. It contains all of the contents of the journal Mathematical Reviews (MR) since 1940 along with an extensive author database, links to other MR entries, citations, full journal entries, and links to original articles. It contains almost 3 million items and over 1.7 million links to original articles ([Wikipedia](https://en.wikipedia.org/wiki/MathSciNet)).

ID search is carried out using the MR number.

### Medline/Pubmed

[Medline/Pubmed](https://www.nlm.nih.gov/bsd/medline.html) is a bibliographic database of life sciences and biomedical information. It includes bibliographic information for articles from academic journals covering medicine, nursing, pharmacy, dentistry, veterinary medicine, and health care. Medline also covers much of the literature in biology and biochemistry, as well as fields such as molecular evolution ([Wikipedia](https://en.wikipedia.org/wiki/MEDLINE)).

ID search is carried out using the [PubMed Unique Identifier](https://www.nlm.nih.gov/bsd/mms/medlineelements.html#pmid) (PMID).

[Screenshot of new entry dialog](https://github.com/JabRef/user-documentation/tree/4fe3bfdabd1204001f27cb7b138818d58c0ea1d0/en/.gitbook/assets/newentrychoosetype-idgeneratorhighlighted-medline.png)

### mEDRA

[mEDRA](https://www.medra.org) is the multilingual European Registration Agency of DOI, the standard persistent identifier for any form of intellectual property on a digital network.

ID search is carried out using the DOI.

### SAO/NASA ADS

[SAO/NASA Astrophysics Data System](http://www.adsabs.harvard.edu) is an online database of over eight million astronomy and physics papers from both peer reviewed and non-peer reviewed sources. Abstracts are available free online for almost all articles, and full scanned articles are available in Graphics Interchange Format (GIF) and Portable Document Format (PDF) for older articles ([Wikipedia](https://en.wikipedia.org/wiki/Astrophysics\_Data\_System)).

ID search is carried out using the [ADS Bibcode](http://adsabs.github.io/help/actions/bibcode).

![Screenshot of new entry dialog](<../.gitbook/assets/newentrychoosetype-idgeneratorhighlighted-ads (1).png>)

### Title

Based on the title of your publication, JabRef call Crossref, which return the corresponding DOI. Then JabRef fetches the reference based on this DOI.

To return a reference, the publication needs to have a DOI.

### RFC

IETF (Internet Engineering Task Force) Datatracker is a database that "contains data about the documents, working groups, meetings, agendas, minutes, presentations, and more, of the IETF." It used to be available at `https://datatracker.ietf.org/` (currently down).

ID search is carried out using the (Request for Comments number) (RFC) of the IETF database.

![Screenshot of new entry dialog](<../.gitbook/assets/newentrychoosetype-idgeneratorhighlighted-rfc (1).png>)

### zbMATH Open

[zbMATH Open](https://zbmath.org) is an abstracting and reviewing service in pure and applied mathematics. Its database contains about 4 million bibliographic entries with reviews or abstracts currently drawn from about 3,000 journals and book series, and 180,000 books. The coverage starts in the 18th century and is complete from 1868 to the present by the integration of the "Jahrbuch über die Fortschritte der Mathematik" database ([about](https://zbmath.org/about/)).

ID search is carried out using the Zbl number.
