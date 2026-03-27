# Systematic Literature Review (SLR)

## What Is a Systematic Literature Review?

A Systematic Literature Review (SLR) is a structured method for finding, evaluating, and summarizing all relevant research papers on a specific topic. Unlike a casual literature search, an SLR follows a strict protocol so the process is reproducible and unbiased.

SLRs are common in software engineering research. The process typically has three phases:

1. **Planning** – Define your research questions and search protocol.
2. **Conducting** – Search databases, screen results, and extract data.
3. **Reporting** – Synthesize and document your findings.

JabRef supports the **Conducting** phase by automatically querying multiple academic databases and organizing all results in a structured, Git-tracked directory.

## Running Example

Throughout this guide, we use this paper as a running example:

> Wortmann, A., Barais, O., Combemale, B., & Wimmer, M. (2020). *Modeling languages in Industry 4.0: an extended systematic mapping study*. Software and Systems Modeling, 19(1), 67–94.

This study searched IEEE Xplore, ACM Digital Library, and Springer using the query `"modeling language" AND "Industry 4.0"`.

## Setting Up an SLR Study

### Step 1: Open the SLR Dialog

Go to **Tools → Start new systematic literature review**

This opens the **Define study parameters** dialog.

{% hint style="info" %}
To continue an existing SLR, use **Tools → Update study search results** instead.
{% endhint %}

### Step 2: Fill in the Study Parameters

| Field | Description | Example |
|---|---|---|
| **Study title** | A short identifier for your study | `industry40-modeling-languages` |
| **Research questions** | The questions your SLR will answer | `Which modeling languages are used in Industry 4.0?` |
| **Search queries** | Query strings sent to each database | `"modeling language" AND "Industry 4.0"` |
| **Databases** | The academic libraries to search | ACM, IEEE, Springer |
| **Directory** | A local folder to store all SLR files | `~/my-slr/` |

{% hint style="warning" %}
The directory must be **empty** when starting a new SLR. JabRef initializes a Git repository there to track all changes automatically.
{% endhint %}

{% hint style="info" %}
Before you can click **Start survey**, the following are required:
- Study title
- At least one author
- At least one research question
- At least one query
  {% endhint %}

### Step 3: Select Databases

JabRef can query the following databases:

- ACM Portal
- arXiv
- Bibliotheksverbund Bayern (Experimental)
- Biodiversity Heritage
- CiteSeerX
- Crossref
- DBLP
- DOAB
- DOAJ
- Europe/PMCID
- GVK
- IEEEXplore
- INSPIRE
- ISIDORE
- LOBID
- MathSciNet
- Medline/PubMed
- OpenAlex
- ResearchGate
- SAO/NASA ADS
- ScholarArchive
- Scopus
- SemanticScholar
- Springer
- Unpaywall
- zbMATH

For software engineering SLRs, ACM and IEEE are typically the most relevant.

## What JabRef Creates in Your Directory

After confirming your study parameters, JabRef creates this structure:
```
my-slr/
├── study.yml              ← Your study configuration
├── studyResult.bib        ← Merged, deduplicated results
└── <DatabaseName>/
    └── <QueryString>.bib  ← Raw results per database per query
```

### `study.yml`

Stores all your study parameters. You can add your own notes or fields — JabRef will ignore anything it does not recognize.

Example:
```yaml
study-name: "industry40-modeling-languages"
last-search-date: 2024-01-15
research-questions:
  - "Which modeling languages are used in Industry 4.0?"
queries:
  - query: '"modeling language" AND "Industry 4.0"'
databases:
  - name: ACM
  - name: IEEE
  - name: Springer
```

### Per-database `.bib` files

Each database gets its own subfolder with one `.bib` file per query:
```
my-slr/
├── ACM/
│   └── modeling language AND Industry 4.0.bib
└── IEEE/
    └── modeling language AND Industry 4.0.bib
```

### `studyResult.bib`

The merged and deduplicated result across all databases and queries. **Open this file in JabRef** to work with your full result set.

## Running the Search

After setup, run the search at any time via:

**Library → Update Systematic Literature Review**

JabRef will:

1. Send your queries to each selected database.
2. Save raw results into the per-database `.bib` files.
3. Merge and deduplicate everything into `studyResult.bib`.
4. Commit all changes to the local Git repository.

{% hint style="info" %}
You can re-run the search months later to pick up newly published papers. The Git history lets you compare results across runs and see exactly what changed.
{% endhint %}

## Screening Results

Open `studyResult.bib` in JabRef and begin reviewing entries.

Recommended workflow:

1. Create **Groups** such as `Included`, `Excluded`, and `Needs Review`.
2. Read each abstract in the **Entry Editor** and assign a group.
3. Use the **search bar** to filter by keyword, year, or author.
4. Use the `priority` and `readstatus` fields to track review progress.

## Running Example: Full Walkthrough

Using the Industry 4.0 modeling languages study:

**1. Start a new SLR**
- Study name: `industry40-modeling-slr`
- Research question: *Which modeling languages are used in Industry 4.0 systems?*

**2. Define the query**
- `"modeling language" AND ("Industry 4.0" OR "Industrie 4.0")`

**3. Select databases**
- IEEE Xplore, ACM Digital Library, Springer

**4. Choose a directory**
- `~/research/industry40-modeling-slr/`

**5. Run the search**
- JabRef queries all three databases and writes results to `studyResult.bib`.

**6. Screen results**
- Open `studyResult.bib`, create groups, and assign each paper.

**7. Re-run later**
- Run **Update Systematic Literature Review** to find new publications.
- Check the Git log to see exactly which papers are new.

## Best Practices

- **Keep queries reproducible.** Write exact query strings in `study.yml` so other researchers can replicate your search.
- **Use the Git history.** It is your audit trail — each re-run is a new commit you can compare.
- **Share `study.yml` with your paper.** Include it as supplementary material so readers can verify your search.
- **Screen in two passes.** First exclude obvious mismatches by title and abstract, then do full-text review of remaining candidates.

## Further Reading

- Kitchenham, B. (2004). *Procedures for Performing Systematic Reviews*. Keele University Technical Report TR/SE-0401.
- Kitchenham, B., & Charters, S. (2007). *Guidelines for Performing Systematic Literature Reviews in Software Engineering*. EBSE Technical Report.
