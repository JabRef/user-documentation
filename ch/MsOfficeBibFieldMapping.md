---
title: 导出/导入 Microsoft Word -- MS Office 参考书目 XML 格式
---
# MS Office 和 JabRef

JabRef 支持导入和导出 MS Office 参考书目的 XML格式。

<!-- toc -->

- [如何导出为 Microsoft Word](#howto-export-to-microsoft-word)
- [如何从 Microsoft Word 导入](#howto-import-from-microsoft-word)
- [条目类型映射](#entry-type-mappings)
- [字段映射](#field-mappings)
  * [BibTeX/BibLaTeX 独有字段](#bibtexbiblatex-only-fields)
  * [MS-Bib 独有字段](#ms-bib-only-fields)
  * [特殊的导出处理](#special-export-treatment)
  * [特殊的导入处理](#special-import-treatment)

<!-- tocstop -->

## 如何导出为 Microsoft Word

当您正在使用 JabRef 时，您可以简单地使用 Office 2007 xml 格式的内置导出功能，这是Microsoft 存储其参考书目信息的格式。

 1. 在 JabRef 中导出（选定）条目，然后选择 Office 2007 xml 格式
 2. 打开 Word，单击 References 选项卡
 3. 点击 Manage sources -> Browse -> Open the exported XML File ( 或者更好地将其直接复制到浏览下的位置 ）
 4. 然后，所有条目都可以在MS参考书目数据库中找到

导出时你遇到的唯一问题可能是当你有一个 "company" 作为作者。那会被导出为作者而不是 company 字段。


更多讨论在 <https://tex.stackexchange.com/a/351452/9075>.


## 如何从 Microsoft Word 导入

见 <https://stackoverflow.com/a/4628718/873282>


## 条目类型映射

XML 格式的某些字段名称与 BibTeX / BibLaTeX 格式的字段名称不同，因此无法在格式之间直接映射。因此，此帮助文件提供了所有条目映射的列表。

| BibTeX/BibLaTeX entry type | XML entry type       |
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



## 字段映射

导入和导出的字段映射大致相同，但存在一些差异，因为并非所有字段都存在于两种格式中。
此外，在导入/导出时，某些字段必须以不同方式处理。


| BibTeX/BibLaTeX | XML field     |
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
| translator      | Translator    |
| bookauthor      | Bookauthor    |  
| volumes         | NumberVolumes |



### BibTeX/BibLaTeX 独有字段

以下字段为 BibTeX / BibLaTex 独有字段，它们在 Office XML 中没有任何表示。
在最终生成的 XML 文件中，它们用前缀 “BIBTEX_” 表示。


| BibTeX/BibLaTeX only fields | XML representation  |
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
| pubstate                    | BITEX_Pubstate      |

 
XML 字段 `SourceType` 包含来自第一个表的关联条目类型，而原始 BibTeX / BibLaTex 条目类型保存在字段 `BIBTEX_ENTRY` 中。

### MS-Bib 独有字段

以下字段是 XML 独有字段，它们没有 BibTeX / BibLaTex 表示：
在最终生成的 bib 数据库中，它们用前缀 “msbib-” 表示。

| BibTeX/BibLaTex represenation | XML field                                           |
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


### 特殊的导出处理

导出期间，以下字段处理如下：


| BibTeX/BibLaTeX representation | XML field      |
|-------------------------------|----------------|
| booktitle                     | ConferenceName |
| journal                       | JournalName    |
| journaltitle                  | JournalName    |
| month                         | Month          |
| date                          | year, month, day  (if date is in ISO 8601 form|
| issue                         | issue          |
| isbn                          | StandardNumber |
| issn                          | StandardNumber |
| lccn                          | StandardNumber |
| mrnumer                       | StandardNumber |
| address (if field contains at least one comma)                 | City|
| address (if field does not contain a comma)                  | City, StateProvince, CountryRegion|
| location (if field contains at least one comma)                 | City|
| location (if field does not contain a comma)                  | City, StateProvince, CountryRegion|
| &lt;EntryType is thesis&gt;         | ThesisType     |
| &lt;EntryType is patent&gt; number | PatentNumber   |
| number (entry is not patent) | Number
| Authors/Editors (single author/editor is enclosed in curly braces) | Corporate |


### 特殊的导入处理
导入期间，以下字段处理如下：


| BibTeX/BibLaTeX representation | XML field      |
|-------------------------------|----------------|
| organization                  | ConferenceName |
| journaltitle                  | Journal        |
| location                      | City, StateProvince, CountryRegion|
