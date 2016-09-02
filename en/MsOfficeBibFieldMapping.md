---
title: MS Office Bibliography xml format 
---

# Field Mapping between Office and JabRef 

## Introduction
JabRef supports the MS Office Bibliography xml format for exporting and importing.
Some field names in the xml format differ from the field names in the BibTeX/BibLaTex format and can therefore be not directly mapped between the formats.
Therefore this help file provides a list of all field mappings


##Entry Type Mappings


| BibTeX/BibLaTex EntryType | XML entry type        |
|---------------------------|-----------------------|
|                           |                       |
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
