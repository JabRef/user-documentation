---
description: Create an entry based on an ID such as DOI or ISBN.
---

# Add entry using an ID

To use this feature, choose **Library → New entry.** In the lower part, there is the box "ID-based entry generator". In the field "ID type", you can select the desired identifier, e.g. "ISBN". Then enter the identifier in the textbox below and press Enter to generate an entry based on the given ID \(you can also click on "Generate"\). The entry is added to your library and opened in the entry editor. In case an error occurs, a popup is shown.

![Screenshot of new entry dialog](../.gitbook/assets/newentrychoosetype-idgeneratorhighlighted-isbn.png)

The following databases are supported:

* ISBN. First, [eBook.de's](https://www.ebook.de/de/) API is used to fetch bibliographic information based on the ISBN. If no entry is found, the JabRef tries [OttoBib](https://www.ottobib.com/) to get data.
* DOI. JabRef uses [http://dx.doi.org/](http://dx.doi.org/) \(provided by [http://crossref.org/](http://crossref.org/)\) to convert the given DOI to a new entry.
* [Medline](https://www.nlm.nih.gov/bsd/medline.html) is a bibliographic database of life sciences and biomedical information. It includes bibliographic information for articles from academic journals covering medicine, nursing, pharmacy, dentistry, veterinary medicine, and health care. Medline also covers much of the literature in biology and biochemistry, as well as fields such as molecular evolution \([Wikipedia](https://en.wikipedia.org/wiki/MEDLINE)\).
* [SAO/NASA Astrophysics Data System](http://www.adsabs.harvard.edu/) is an online database of over eight million astronomy and physics papers from both peer reviewed and non-peer reviewed sources. Abstracts are available free online for almost all articles, and full scanned articles are available in Graphics Interchange Format \(GIF\) and Portable Document Format \(PDF\) for older articles \([Wikipedia](https://en.wikipedia.org/wiki/Astrophysics_Data_System)\).
* [DiVA \(Digitala Vetenskapliga Arkivet\)](https://info.diva-portal.org/about-diva/) is a database with publications from about [40](https://www.diva-portal.org/smash/aboutdiva.jsf) Swedish universities and research institutions.
* The [International Association for Cryptologic Research](https://www.iacr.org/) maintains an eprint archive to which anyone can submit papers and technical reports. These eprints are given IDs based on the year of submission, e.g. the 10th submission in 2018 gets the ID "2018/10". To get the ID, you may want to use their web search form at [https://eprint.iacr.org/search.html](https://eprint.iacr.org/search.html).
* [IETF \(Internet Engineering Task Force\)](https://datatracker.ietf.org/) Datatracker is a database that "contains data about the documents, working groups, meetings, agendas, minutes, presentations, and more, of the IETF."

{% hint style="info" %}
Sometimes the new entry contains a `url` field. This field usually points to the URL of the book at the respective online book store. In case you buy the book using the link, the service provider \(e.g. ebook.de\) receive a commission to fund the service.
{% endhint %}

