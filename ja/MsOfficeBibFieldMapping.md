---
title: MS Office文献XML形式
---

# MS-OfficeとJabRefの間のフィールド・マッピング

## はじめに
JabRefは，読み込みと書き出し用にMS Office文献XML形式をサポートしています．
XML形式のフィールド名の一部は，BibTeX/BibLaTeX形式のフィールド名と異なるので，両形式の間で直接マップすることができません．
そこで，このヘルプファイルでは，フィールドマッピングの全覧を提供することにします．


## 項目型のマッピング


|   BibTeX/BibLaTeX項目型    |        XML項目型       |
|---------------------------|-----------------------|
| book                      | Book                  |
| inbook                    | BookSection           |
| booklet                   | BookSection           |
| incollection              | BookSection           |
| article                   | JournalArticle        |
| inproceedings             | ConferenceProceedings |
| conference                | ConferenceProceedings |
| proceedings               | ConferenceProceedings |
| collection                | ConferenceProceedings |
| techreport                | Report                |
| manual                    | Report                |
| mastersthesis             | Report                |
| phdthesis                 | Report                |
| unpublished               | Report                |
| patent                    | Patent                |
| misc                      | Misc                  |
| electronic                | ElectronicSource      |
| online                    | InternetSite          |
| periodical                | ArticleInAPeriodical  |



## フィールド・マッピング
読み込み用と書き出し用のフィールドマッピングは，ほぼ同じですが，両形式に全てのフィールドが存在するわけではないので，若干の違いがあります．
加えて，読み込みないし書き出し中に，一部のフィールドは異なった取り扱いを必要とします．

| BibTeX/BibLaTex | XMLフィールド   |
|-----------------|---------------|
| bibtexkey       | Tag           |
| title           | Title         |
| year            | Year          |
| note            | Comments      |
| volume          | Volume        |
| language        | LCID          |
| edition         | Edition       |
| publisher       | Publisher     |
| booktitle       | BookTitle     |
| chapter         | ChapterNumber |
| issue           | Issue         |
| school          | Department    |
| institution     | Institution   |
| doi             | DOI           |
| url             | url           |
| shorttitle      | ShortTitle    |
| pages           | Pages         |
| authors         | Authors       |
| editors         | Editors       |



### BibTeX/BibLaTeX固有のフィールド
下記のフィールドは，BibTeX/BibLaTeX固有のフィールドであり，公式XMLには，対応する表現がありません．
生成されるXMLファイルでは，これらには，前置句`BIBTEX_`をつけて表現されます．


| BibTeX/BibLaTeX固有フィールド |       XML表現        |
|-----------------------------|---------------------|
| series                      | BIBTEX_Series       |
| abstract                    | BIBTEX_Abstract     |
| keywords                    | BIBTEX_KeyWords     |
| crossref                    | BIBTEX_CrossRef     |
| howpublished                | BIBTEX_HowPublished |
| affiliation                 | BIBTEX_Affiliation  |
| contents                    | BIBTEX_Contents     |
| copyright                   | BIBTEX_Copyright    |
| price                       | BIBTEX_Price        |
| size                        | BIBTEX_Size         |
| intype                      | BIBTEX_InType       |
| paper                       | BIBTEX_Paper        |
| &lt;BibTexEntryType&gt;     | BIBTEX_Entry        |
| &lt;BibTexEntryType&gt;     | SourceType          |
| key (not BibTeX-Key)        | BIBTEX_KEY          |

XMLフィールド`SourceType`には，最初のテーブルの型に対応する項目型が収められ，元のBibTeX/BibLaTeXのentrytypeには，フィールド`BIBTEX_ENTRY`が収録されます．

### MS-Bib固有のフィールド
下記のフィールドは，XML固有のフィールドであり，BibTeX/BibLaTeXでの表現はありません．
生成されるbibデータベースでは，これらは，前置句`msbib-`を付されて表現されます．

|      BibTeX/BibLaTeX表現      | XMLフィールド                                         |
|-------------------------------|-----------------------------------------------------|
| msbib-numberofvolume          | NumberVolumes                                       |
| msbib-periodical              | PeriodicalTitle                                     |
| msbib-day                     | Day                                                 |
| msbib-accessed                | Accessed (YearAccessed, MonthAccessed, DayAccessed) |
| msbib-medium                  | Medium                                              |
| msbib-recordingnumber         | RecordingNumber                                     |
| msbib-theater                 | Theater                                             |
| msbib-distributor             | Distributor                                         |
| msbib-broadcaster             | Broadcaster                                         |
| msbib-station                 | Station                                             |
| msbib-type                    | Type                                                |
| msbib-court                   | Court                                               |
| msbib-reporter                | Reporter                                            |
| msbib-casenumber              | CaseNumber                                          |
| msbib-abbreviatedcasenumber   | AbbreviatedCaseNumber                               |
| msbib-productioncompany       | ProductionCompany                                   |
| msbib-translator              | translators                                         |
| msbib-producername            | producerNames                                       |
| msbib-composer                | composers                                           |
| msbib-conductor               | conductors                                          |
| msbib-performer               | performers                                          |
| msbib-writer                  | writers                                             |
| msbib-director                | directors                                           |
| msbib-compiler                | compilers                                           |
| msbib-interviewer             | interviewers                                        |
| msbib-interviewee             | interviewees                                        |
| msbib-inventor                | inventors                                           |
| msbib-counsel                 | counsels                                            |


### 書き出し時の特殊な取扱い
下記のフィールドは，書き出し時に下記のように取り扱われます．


|      BibTeX/BibLaTeX表現      | XMLフィールド    |
|-------------------------------|----------------|
| booktitle                     | ConferenceName |
| journal                       | JournalName    |
| journaltitle                  | JournalName    |
| month                         | Month          |
| date                          | year           |
| issue                         | number         |
| isbn                          | StandardNumber |
| issn                          | StandardNumber |
| lccn                          | StandardNumber |
| mrnumer                       | StandardNumber |
| address                       | City, StateProvince, CountryRegion|
| location                      | City, StateProvince, CountryRegion|
| &lt;EntryTypeがthesis&gt;         | ThesisType     |
| &lt;EntryTypeがpatent&gt; number | PatentNumber   |
| number (項目がpatentではなくissueが存在しない) | Number |


### 読み込み時の特殊な取扱い
下記のフィールドは，読み込み時に下記のように取り扱われます．


|      BibTeX/BibLaTeX表現      | XMLフィールド    |
|-------------------------------|----------------|
| organization                  | ConferenceName |
| journaltitle                  | Journal        |
| location                      | City, StateProvince, CountryRegion|
