# Migration of pre-3.6 SQL databases into a shared SQL database

## Context

This situation occurs when you try to open an SQL database which was created with JabRef version older than 3.6.

With release of [JabRef 3.6](https://github.com/JabRef/jabref/releases/tag/v3.6) the SQL database structure has changed. So all SQL databases with an pre-3.6 structure are no longer supported.

![Screenshot of migration popup](<../../.gitbook/assets/migrate-pre-3.6-db (1).png>)

## Migration

To migrate your pre-3.6 SQL database into new shared SQL database you have to follow these steps:

* Download and install [JabRef 3.5](https://github.com/JabRef/jabref/releases/tag/v3.5)
* Open JabRef and goto **File** -> **Import from external SQL database**
* Enter required data and click on **Connect**
* Choose the database which should be imported and press **Import**
* Save the database locally (**File** -> **Save database**)
* Turn back at least to [JabRef 3.6](https://github.com/JabRef/jabref/releases/tag/v3.6)
* Goto: **File** -> **Open shared database**
* Enter required data and click on **Connect**
* Now goto **File** -> **Import into current database**
* Choose the file you saved locally and import it

After that the content is available as a shared SQL database and you can work live on it. [More information about the live editing](./).
