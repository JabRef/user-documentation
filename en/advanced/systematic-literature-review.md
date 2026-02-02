# Systematic literature review

JabRef supports managing systematic literature reviews by structuring research questions, search queries, catalogs, and results within a dedicated study directory created by JabRef.  
This feature helps organize search configuration and collected references, but it does not replace methodological decisions made by the researcher.

---

## Starting a systematic literature review

A new study definition can be created via:

`Tools → Start new systematic literature review`

<figure>
<img src="../.gitbook/assets/slr_start-menu.png" alt="Start new systematic literature review dialog">
<figcaption>Starting a new systematic literature review</figcaption>
</figure>

This opens the **Define study parameters** dialog, where JabRef stores the configuration used for search and data collection.

---

## Study parameters

The study definition dialog contains several sections that determine how JabRef performs searches and stores results.

<figure>
<img src="../.gitbook/assets/slr-define-parameters.png" alt="Define study parameters window">
<figcaption>Study definition dialog</figcaption>
</figure>

### Authors and title

This section defines the study metadata:

* Study title  
* At least one author  

These elements identify the study and are required before the survey can begin.

---

### Research questions

Research questions define the scope of the study within JabRef.  
They help relate queries and later screening decisions to the study purpose.

Each question should be:

* Clear
* Focused
* Defined by the research goal rather than tool settings

<figure>
<img src="../.gitbook/assets/slr-questions.png" alt="Research questions tab">
<figcaption>Defining research questions</figcaption>
</figure>

---

### Queries

Queries define how JabRef retrieves literature from the selected catalogs.

<figure>
<img src="../.gitbook/assets/slr-queries.png" alt="Queries tab of SLR setup">
<figcaption>Defining search queries</figcaption>
</figure>

Queries typically combine keywords using Boolean operators:

* `AND`
* `OR`
* `NOT`

Queries can be adjusted later if search results need refinement.

---

### Catalogs

Catalogs define the external services that JabRef queries for literature.

<figure>
<img src="../.gitbook/assets/slr-catalogs.png" alt="Catalog selection in SLR">
<figcaption>Selecting catalogs</figcaption>
</figure>

Examples include:

* ACM Portal  
* arXiv  
* DBLP  
* Crossref  
* IEEE Xplore  

Using multiple catalogs increases coverage and reduces the risk of selection bias.

---

### Finalize

In this step, a directory for storing the study is selected.

⚠ **The selected study directory must be empty before starting the survey.**  
When the survey begins, JabRef initializes the directory by creating the internal study structure, configuration files, and result database.

The **Start survey** button becomes available only after the study definition is complete. The definition must include:

* Study title  
* At least one author  
* At least one research question  
* At least one query  

These requirements ensure that JabRef can execute searches and store results using the defined study structure.

---

## After starting the survey

Starting the survey triggers the search and data collection process using the defined study parameters.

During this process:

* Queries are executed on the selected catalogs  
* Retrieved records are written into the study database  
* The study directory structure is populated with configuration and result data  

References can then be:

* Screened  
* Filtered  
* Tagged  
* Exported  

<figure>
<img src="../.gitbook/assets/slr-study-folder.png" alt="SLR study folder structure">
<figcaption>Generated study directory structure after starting the survey</figcaption>
</figure>

---

## Role of the SLR feature

The SLR feature provides structural and organizational support inside JabRef. It does **not**:

* Perform methodological quality assessment  
* Replace screening decisions  
* Replace inclusion or exclusion criteria  
* Define research methodology  

It supports managing search processes and organizing review data within JabRef.

---

## Best practices

* Define research questions before constructing queries
* Start with broader queries and refine if needed
* Use multiple catalogs to retrieve records from different sources
* Document queries used in the study definition
* Use tags and groups to organize screening decisions

This supports consistent and reproducible handling of search results in JabRef.
