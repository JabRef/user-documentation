# Conducting automated cross-library search

## Providing a study file for automated search

To provide automated search JabRef needs the set of targeted digital libraries and the used queries.
To provide these a `study.bib` file, also called study definition, has to be created.
This file contains different entries with different information.
This file have to be provided within an otherwise empty fully setup git repository.

Example study definition file

```bibtex
% Encoding: UTF-8

@Study{v10,
  author            = {Jab Ref},
  lastsearchdate    = {2020-11-18},
  name              = {TestStudyName},
  researchquestions = {Question1; Question2; Question3},
}

@SearchQuery{query1,
  query={Quantum},
}

@SearchQuery{query2,
  query={title:"Cloud Computing"},
}

@Library{library1,
  name = {Springer},
  enabled = {true},
  comment = {},
}

@Library{library2,
  name = {IEEEXplore},
  enabled = {false},
  comment = {},
}
```

## Executing the automated search

To execute the automated search navigate in the toolbar to **Tools\|Start systematic literature review** and click it.

![Start an automated search](../../.gitbook/assets/start-SLR.png)

Then select the `study.bib` file in the file explorer dialogue that is located in the git repository.

![Select the study definition file](../../.gitbook/assets/select-study-definition.png)

After that the automated search is executed and any new studies are commited and pushed to the configured git repository.
The local repository now contains the retrieved studies sorted by the respective query and digital library that retrieved it.

![Repository structure](../../.gitbook/assets/repository-structure.png)

The `result.bib` located in the query folder contains the merged results from all fetcher for the respective query.
The `studyResult.bib` contains the merged results for all queries.
