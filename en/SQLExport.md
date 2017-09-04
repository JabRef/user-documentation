---
title: Export to an External SQL Database
helpCategories: ["Import/Export"]
---

# Export to an External SQL Database

**This help applies for older versions of JabRef.
From JabRef 3.6 onwards, [collaborative working on a SQL database](SQLDatabase) is supported**


JabRef is capable of exporting the contents of the BibTeX database, along with groups information, to an external MySQL or PostgreSQL database.

You just need to be sure you have an user/password with full privileges on a MySQL or PostgreSQL server.

## Export

1.  Choose **File → Export to external SQL database**, or click the corresponding button on the toolbar.
2.  Select the database type from the drop down menu for *Server Type*.
3.  Enter the database connection information, and click **Connect**.

JabRef will then connect to the specified database, create new tables, and populate those tables with entries and groups information. You will be able to export as many JabRef bib databases as you want without losing the previously explored data. The system recognize a database uniquely by its full path (directory structure + filename). In case you export the same JabRef database more than once, the data of that database will be update in the SQL database. Note that you will not be prompted for the connection information on subsequent exports. If you would like to export to a different database, you can change the connection information by choosing **File → Connect to external SQL database** (or by clicking the associated toolbar button), and then performing an export. Since version 2.8 tables are not dropped, and user is able to store more than one JabRef database into a single SQL database.

When importing a database from an SQL database (**File → Import from external SQL database**), JabRef will place each database found in a different tab.
