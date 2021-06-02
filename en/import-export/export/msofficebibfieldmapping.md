# Export to Microsoft Word -- MS Office Bibliography XML format

JabRef supports the MS Office Bibliography XML format for exporting and importing.

* [Howto: Export to Microsoft Word](msofficebibfieldmapping.md#howto-export-to-microsoft-word)
* [Howto: Import from Microsoft Word](msofficebibfieldmapping.md#howto-import-from-microsoft-word)
* [Entry Type Mappings](msofficebibfieldmapping.md#entry-type-mappings)
* [Field mappings](msofficebibfieldmapping.md#field-mappings)
  * [BibTeX/BibLaTeX only fields](msofficebibfieldmapping.md#bibtexbiblatex-only-fields)
  * [MS-Bib only fields](msofficebibfieldmapping.md#ms-bib-only-fields)
  * [Special Export treatment](msofficebibfieldmapping.md#special-export-treatment)
  * [Special Import treatment](msofficebibfieldmapping.md#special-import-treatment)

## Howto: Export to Microsoft Word

As you are using JabRef already, you can simply use the builtin export functionality for Office 2007 xml format, that is the format where Microsoft stores it bibliography information.

1. Export \(selected\) entries in JabRef and choose Office 2007 xml format
2. Open Word, click on the References Tab
3. Click on Manage sources -&gt; Browse -&gt; Open the exported XML File \(or better copy it directly to the location under browse\)
4. All entries are then available in the MS bibliography database

The only problem in the export could be when you have a "company" as author. That is simply exported as author and not in the company field.

More discussion at [https://tex.stackexchange.com/a/351452/9075](https://tex.stackexchange.com/a/351452/9075).

## Howto: Import from Microsoft Word

See [https://stackoverflow.com/a/4628718/873282](https://stackoverflow.com/a/4628718/873282)

## Entry Type Mappings

Some field names in the XML format differ from the field names in the BibTeX/BibLaTeX format and can therefore be not directly mapped between the formats. Therefore this help file provides a list of all field mappings.

| BibTeX/BibLaTeX entry type | XML entry type |
| :--- | :--- |
| book | Book |
| inbook | BookSection |
| booklet | BookSection |
| incollection | BookSection |
| article | JournalArticle |
| inproceedings | ConferenceProceedings |
| conference | ConferenceProceedings |
| proceedings | ConferenceProceedings |
| collection | ConferenceProceedings |
| techreport | Report |
| manual | Report |
| mastersthesis | Report |
| phdthesis | Report |
| unpublished | Report |
| patent | Patent |
| misc | Misc |
| electronic | ElectronicSource |
| online | InternetSite |
| periodical | ArticleInAPeriodical |

## Field mappings

The field mapping for import and export is mostly the same, but there are some differences, as not all field exists in both formats. Additionally, some fields have to be treated differently during import/export.

| BibTeX/BibLaTeX | XML field |
| :--- | :--- |
| bibtexkey | Tag |
| title | Title |
| year | Year |
| note | Comments |
| volume | Volume |
| language | LCID |
| edition | Edition |
| publisher | Publisher |
| booktitle | BookTitle |
| chapter | ChapterNumber |
| issue | Issue |
| school | Department |
| institution | Institution |
| doi | DOI |
| url | url |
| shorttitle | ShortTitle |
| pages | Pages |
| authors | Authors |
| editors | Editors |
| translator | Translator |
| bookauthor | Bookauthor |
| volumes | NumberVolumes |

### BibTeX/BibLaTeX only fields

The following fields are BibTeX/BibLaTex only fields, they have no representation in office XML. In the resulting XML file they are represented with the prefix `BIBTEX_`

| BibTeX/BibLaTeX only fields | XML representation |
| :--- | :--- |
| series | BIBTEX\_Series |
| abstract | BIBTEX\_Abstract |
| keywords | BIBTEX\_KeyWords |
| crossref | BIBTEX\_CrossRef |
| howpublished | BIBTEX\_HowPublished |
| affiliation | BIBTEX\_Affiliation |
| contents | BIBTEX\_Contents |
| copyright | BIBTEX\_Copyright |
| price | BIBTEX\_Price |
| size | BIBTEX\_Size |
| intype | BIBTEX\_InType |
| paper | BIBTEX\_Paper |
| &lt;BibTexEntryType&gt; | BIBTEX\_Entry |
| &lt;BibTexEntryType&gt; | SourceType |
| key \(not BibTeX-Key\) | BIBTEX\_KEY |
| pubstate | BITEX\_Pubstate |

The XML field `SourceType` contains the associated entry type from the first table, while the original BibTeX/BibLaTex entrytype is preserved in the field `BIBTEX_ENTRY`.

### MS-Bib only fields

The following fields are XML-only fields, they have no BibTeX/BibLaTex representation: In the resulting bib database they are represented with the prefix `msbib-`.

| BibTeX/BibLaTex represenation | XML field |
| :--- | :--- |
| msbib-numberofvolume | NumberVolumes |
| msbib-periodical | PeriodicalTitle |
| msbib-day | Day |
| msbib-accessed | Accessed \(YearAccessed, MonthAccessed, DayAccessed\) |
| msbib-medium | Medium |
| msbib-recordingnumber | RecordingNumber |
| msbib-theater | Theater |
| msbib-distributor | Distributor |
| msbib-broadcaster | Broadcaster |
| msbib-station | Station |
| msbib-type | Type |
| msbib-court | Court |
| msbib-reporter | Reporter |
| msbib-casenumber | CaseNumber |
| msbib-abbreviatedcasenumber | AbbreviatedCaseNumber |
| msbib-productioncompany | ProductionCompany |
| msbib-producername | producerNames |
| msbib-composer | composers |
| msbib-conductor | conductors |
| msbib-performer | performers |
| msbib-writer | writers |
| msbib-director | directors |
| msbib-compiler | compilers |
| msbib-interviewer | interviewers |
| msbib-interviewee | interviewees |
| msbib-inventor | inventors |
| msbib-counsel | counsels |

### Special Export treatment

The following fields are treated as follows during export:

| BibTeX/BibLaTeX representation | XML field |
| :--- | :--- |
| booktitle | ConferenceName |
| journal | JournalName |
| journaltitle | JournalName |
| month | Month |
| date | year, month, day  \(if date is in ISO 8601 form |
| issue | issue |
| isbn | StandardNumber |
| issn | StandardNumber |
| lccn | StandardNumber |
| mrnumer | StandardNumber |
| address \(if field contains at least one comma\) | City |
| address \(if field does not contain a comma\) | City, StateProvince, CountryRegion |
| location \(if field contains at least one comma\) | City |
| location \(if field does not contain a comma\) | City, StateProvince, CountryRegion |
| &lt;EntryType is thesis&gt; | ThesisType |
| &lt;EntryType is patent&gt; number | PatentNumber |
| number \(entry is not patent\) | Number |
| Authors/Editors \(single author/editor is enclosed in curly braces\) | Corporate |

### Special Import treatment

The following fields are treated as follows during import:

| BibTeX/BibLaTeX representation | XML field |
| :--- | :--- |
| organization | ConferenceName |
| journaltitle | Journal |
| location | City, StateProvince, CountryRegion |

