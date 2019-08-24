---
title: Medline (txt)、Medline (XML)和 RIS 格式的比较t
---

# Medline (txt)、Medline (XML)和 RIS 格式的比较

Medline（txt）格式可以由简单的文本文档使用。
在这里，您必须在每行的开头写入字段名称。
Medline (xml) 格式是XML文档。
字段名字必须写在 `<` 和 `>` 之间.

更多信息可访问 [https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html](https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html) 

Medline（txt）和 Medline（XML）始终采用 “article” 类型。
RIS 的工作方式类似于Medline（txt），区别在于支持不同的字段，文件扩展名为“ris”。

在其他地方，您可能会遇到“MedlinePlain”作为“Medline（txt）”的同义词，“Medline”作为“Medline（xml）”的同义词。

## 字段表

|Field             |Medline (txt)|Medline (XML) |RIS|
|---------------|------|------|-----|
|Abstract         |**AB**  |**Abstract / AbstractText** |**AB** |
|Affiliation      |**AD**  |        |       |
|Article Date||**ArticleDate**||
|Article Identifier| **AID**|**Article**|   |
|Article Title|   |**ArticleTitle**| |
|Author           |   **AU**     | **AuthorList** |  **AU/A1**     |
|Author Identifier|**AUID**|        |       |
|Book Title       |**BTI** ||**BT** |
|Chemical List|  |**ChemicalList**|  |
|Citation Subset|  |**CitationSubset**|  |
|Collection Title |**CTI** |        |       |
|Collaborators    |        |        |**A3** |
|Comments Corrections List|  |**CommentsCorrectionsList**|  |
|Corporate Author |**CN**  |        |       |
|Copyright Information| |**CopyrightInformation**|   |
|Create Date      |**CRDT**|        |       |
|Country |  |**Country**|  |
|Data Bank List | |**DataBankList**| |
|Date Completed   |**DCOM**|**DateCompleted**|       |
|Date Created     | **DA** |**DateCreated**|       |
|Date Last Revised|**LR**  |**DateRevised**|       |
|Date of Electronic Publication|**DEP**|  | |
|Date of Publication|**DP**| | **Y2**  |
|Delete Citation|  |**DeleteCitation**|  |
|DOI              |        |        |**DOI**|
|Edition          |**EN**  |        |       |
|Editor and Full Editor Name|**FED**||**ED**|
|End              |        |        |**ER** |
|End   Page       |        |        |**EP** |
|Entrez Date      |**EDAT**|        |       |
|Full Author |**FAU**| |    |
|Full Personal Name as Subject|**FPS**|    |    |
|Gene Symbol      |**GS**  |        |       |
|General Note     |**GN**  |**GeneralNote**|       |
|Grant List|   |**GrantList**|  |
|Grant Number     |**GR**  |        |       |
|Investigator Name and Full Investigator Name|**IR/FIR**||    |
|Investigator List|   |**InvestigatorList**|  |
|ISO Abbreviation|   |**ISOAbbreviation**|  |
|ISBN             |**ISBN**|        |**SN** |
|ISSN             |**IS**  |**ISSN**|       |
|ISSN Linking     |       |**ISSNLinking**|       |
|Issue            |**IP**  |**Issue**| **IS** |
|Journal Issue    |  |**JournalIssue**|    |
|Journal Title    | **JT**  |**Journal**|**JO/JF/JA** |
|Journal Title Abbreviation| **TA**| | |
|Keywords         |        | **KeywordList** | **KW** |
|Language         |**LA**  |**Language**|    |
|Location Identifier| **LID**|    |    |
|Manuscript Identifier| **MID**|    |    |
|Medline Title Abbreviation| |**MedlineTA**| |
|Medline Date|   |**MedlineDate**|   |
|MeSH Date        |**MHDA**|    |    |
|Mesh Heading List|  |**MeshHeadingList**|  |
|MeSH Terms       |**MH**| |    |
|Misc             |        |   | **M1-M3**|
|NLM Unique ID    |**JID** |**NlmUniqueID**|    |
|Note             |        |    | **N1**  |
|Number of References| **RF**|    |    |
|Other Abstract and other abstract language|**OAB/OABL**|**OtherAbstract**|    |
|Other Copyright Information| **OCI**|    |    |
|Other ID         |**OID** |**OtherID**|    |
|Other Term       |**OT**  |    |    |
|Other Term Owner |**OTO** |    |    |
|Owner            |**OWN** |    |    |
|Pagination       |**PG**  |**Pagination**|    |
|Personal Name as Subject|**PS**|    |    |
|Personal Name as Subject List| |**PersonalNameSubjectList**|    |
|Place of Publication| **PL**||    |
|Publication History Status| **PHST**|    |    |
|Publication Status| **PST**|    |    |
|Publication Type |**PT**|    |    |
|Publication Type List | |**PublicationTypeList**|    |
|Publisher        |   | |**PB**|
|Publishing Date |   |**PubDate**|  |
|Publishing Model |**PUBM**|    |    |
|PubMed Central Identifier| **PMCR**||    |
|PubmMed Unique Identifier| **PMID**|**PMID**|    |
|Registry Number  |**RN** |    |    |
|Reprint          |       |    | **RP** |
|Start Page       |       |    |   **SP** |
|Substance Name   |**NM** |    |    |
|Supplemental Mesh List|  |**SupplMeshList**|  |
|Secondary Source ID| **SI**|  |    |
|Source           |**SO** |    |    |
|Space Flight Mission|**SFM**| |    |
|Status           |**STAT**|   |    |
|Subset           |**SB** |    |    |
|Title            |**TI** |**Title**|**TI/T1**|
|Transliterated Title|**TT**|    |    |
|Type             |       |   | **TY** |
|URL              |       |    |  **UR** |
|User Text        |       |    | **U1-U3**|
|Volume           |**VI** |**Volume**|**VL**|
|Volume Title     |**VTI**|    |    |
|Vernacular Title|  |**VernacularTitle**|  |
|Year             |       |   |**PY/Y1**|
