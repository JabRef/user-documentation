---
title: Comparison of the Medline (txt), Medline (XML), and RIS format
helpCategories:
  - Import/Export
---
# Comparison of the Medline (txt), Medline (XML), and RIS format

The Medline (txt) format can be used by a simple text document. Here, you have to write the field names at the beginning of each line. The Medline (xml) format is a XML document. The field name has to be written between `<` and `>`. For futher information visit https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html. Medline (txt) and Medline (XML) always take the type "article". RIS works similar to Medline (txt) with the difference that different fields are supported and the file extension is "ris".

In other sources, you might encounter "MedlinePlain" as synonym for "Medline (txt)" and "Medline" as synonym for "Medline (xml)".

## Table with fields

| Field                                        | Medline (txt) | Medline (XML)               | RIS          |
| -------------------------------------------- | ------------- | --------------------------- | ------------ |
| Abstract                                     | **AB**        | **Abstract / AbstractText** | **AB**       |
| Affiliation                                  | **AD**        |                             |              |
| Article Date                                 |               | **ArticleDate**             |              |
| Article Identifier                           | **AID**       | **Article**                 |              |
| Article Title                                |               | **ArticleTitle**            |              |
| Author                                       | **AU**        | **AuthorList**              | **AU/A1**    |
| Author Identifier                            | **AUID**      |                             |              |
| Book Title                                   | **BTI**       |                             | **BT**       |
| Chemical List                                |               | **ChemicalList**            |              |
| Citation Subset                              |               | **CitationSubset**          |              |
| Collection Title                             | **CTI**       |                             |              |
| Collaborators                                |               |                             | **A3**       |
| Comments Corrections List                    |               | **CommentsCorrectionsList** |              |
| Corporate Author                             | **CN**        |                             |              |
| Copyright Information                        |               | **CopyrightInformation**    |              |
| Create Date                                  | **CRDT**      |                             |              |
| Country                                      |               | **Country**                 |              |
| Data Bank List                               |               | **DataBankList**            |              |
| Date Completed                               | **DCOM**      | **DateCompleted**           |              |
| Date Created                                 | **DA**        | **DateCreated**             |              |
| Date Last Revised                            | **LR**        | **DateRevised**             |              |
| Date of Electronic Publication               | **DEP**       |                             |              |
| Date of Publication                          | **DP**        |                             | **Y2**       |
| Delete Citation                              |               | **DeleteCitation**          |              |
| DOI                                          |               |                             | **DOI**      |
| Edition                                      | **EN**        |                             |              |
| Editor and Full Editor Name                  | **FED**       |                             | **ED**       |
| End                                          |               |                             | **ER**       |
| End Page                                     |               |                             | **EP**       |
| Entrez Date                                  | **EDAT**      |                             |              |
| Full Author                                  | **FAU**       |                             |              |
| Full Personal Name as Subject                | **FPS**       |                             |              |
| Gene Symbol                                  | **GS**        |                             |              |
| General Note                                 | **GN**        | **GeneralNote**             |              |
| Grant List                                   |               | **GrantList**               |              |
| Grant Number                                 | **GR**        |                             |              |
| Investigator Name and Full Investigator Name | **IR/FIR**    |                             |              |
| Investigator List                            |               | **InvestigatorList**        |              |
| ISO Abbreviation                             |               | **ISOAbbreviation**         |              |
| ISBN                                         | **ISBN**      |                             | **SN**       |
| ISSN                                         | **IS**        | **ISSN**                    |              |
| ISSN Linking                                 |               | **ISSNLinking**             |              |
| Issue                                        | **IP**        | **Issue**                   | **IS**       |
| Journal Issue                                |               | **JournalIssue**            |              |
| Journal Title                                | **JT**        | **Journal**                 | **JO/JF/JA** |
| Journal Title Abbreviation                   | **TA**        |                             |              |
| Keywords                                     |               | **KeywordList**             | **KW**       |
| Language                                     | **LA**        | **Language**                |              |
| Location Identifier                          | **LID**       |                             |              |
| Manuscript Identifier                        | **MID**       |                             |              |
| Medline Title Abbreviation                   |               | **MedlineTA**               |              |
| Medline Date                                 |               | **MedlineDate**             |              |
| MeSH Date                                    | **MHDA**      |                             |              |
| Mesh Heading List                            |               | **MeshHeadingList**         |              |
| MeSH Terms                                   | **MH**        |                             |              |
| Misc                                         |               |                             | **M1-M3**    |
| NLM Unique ID                                | **JID**       | **NlmUniqueID**             |              |
| Note                                         |               |                             | **N1**       |
| Number of References                         | **RF**        |                             |              |
| Other Abstract and other abstract language   | **OAB/OABL**  | **OtherAbstract**           |              |
| Other Copyright Information                  | **OCI**       |                             |              |
| Other ID                                     | **OID**       | **OtherID**                 |              |
| Other Term                                   | **OT**        |                             |              |
| Other Term Owner                             | **OTO**       |                             |              |
| Owner                                        | **OWN**       |                             |              |
| Pagination                                   | **PG**        | **Pagination**              |              |
| Personal Name as Subject                     | **PS**        |                             |              |
| Personal Name as Subject List                |               | **PersonalNameSubjectList** |              |
| Place of Publication                         | **PL**        |                             |              |
| Publication History Status                   | **PHST**      |                             |              |
| Publication Status                           | **PST**       |                             |              |
| Publication Type                             | **PT**        |                             |              |
| Publication Type List                        |               | **PublicationTypeList**     |              |
| Publisher                                    |               |                             | **PB**       |
| Publishing Date                              |               | **PubDate**                 |              |
| Publishing Model                             | **PUBM**      |                             |              |
| PubMed Central Identifier                    | **PMCR**      |                             |              |
| PubmMed Unique Identifier                    | **PMID**      | **PMID**                    |              |
| Registry Number                              | **RN**        |                             |              |
| Reprint                                      |               |                             | **RP**       |
| Start Page                                   |               |                             | **SP**       |
| Substance Name                               | **NM**        |                             |              |
| Supplemental Mesh List                       |               | **SupplMeshList**           |              |
| Secondary Source ID                          | **SI**        |                             |              |
| Source                                       | **SO**        |                             |              |
| Space Flight Mission                         | **SFM**       |                             |              |
| Status                                       | **STAT**      |                             |              |
| Subset                                       | **SB**        |                             |              |
| Title                                        | **TI**        | **Title**                   | **TI/T1**    |
| Transliterated Title                         | **TT**        |                             |              |
| Type                                         |               |                             | **TY**       |
| URL                                          |               |                             | **UR**       |
| User Text                                    |               |                             | **U1-U3**    |
| Volume                                       | **VI**        | **Volume**                  | **VL**       |
| Volume Title                                 | **VTI**       |                             |              |
| Vernacular Title                             |               | **VernacularTitle**         |              |
| Year                                         |               |                             | **PY/Y1**    |