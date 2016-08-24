---
title: Shared SQL Database
---

# Shared SQL Database

JabRef is able to support collaborative work using a shared SQL database.
This feature is available since JabRef 3.6.
If you used to work with an older version of JabRef, please refer to [SQLDatabaseMigration](SQLDatabaseMigration) for information how to update your data.

To use this feature you have to connect to a remote database. To do so you have to open the "File -> Open shared database" dialog and fill it out. Under the field "Database type" you can choose between PostgreSQL, MySQL and Oracle depending on your remote database. Then, you have to fill out the rest of the fields with the according information.

![Screenshot of Open shared database dialog] (./images/open-shared-database-dialog.png)

You can test this feature using (https://www.freemysqlhosting.net) The best thing is JabRef will automatically detect your changes and push them to the shared side. After connecting to your shared database, your main window should look like this:

![Screenshot of JabRef with an open shared database] (./images/open-shared-databse-screenshot.png)

JabRef will constantly check if there is a newer version available. Also, you can pull changes from a shared database (Try to use this if you experience connection issues). If a newer version is available, JabRef will try to automatically merge the new version and your local copy. If this fails, the "Update refused" dialog will show up. You will then have to manually merge using the "Update refused" dialog. The dialog helps you by pointing out the differences, you then will have to choose if you want to keep your local version or update to the shared version. Confirm your merge by clicking on "Merge Entries".

![Screenshot of Update refused dialog] (./images/update.refused-merge dialog.png) 

The "Update refused" dialog can also take a different form, if the BibEntry you currently work on has been deleted on the shared side. You can choose to keep it by clicking "Keep", or update to the shared side and click "Close".

![Screenshot of Update refused dialog due to a deleted entry] (./images/update-refuse-deleted entry-dialog.png)

While working with this feature you might experience a connection loss. In this case, the "Connection lost" dialog will show up. You can choose to "Reconnect", "Work offline" or "Close database". If you choose to work offline, JabRef will convert the shared database to a normal local .bib database.

![Screenshot of Connection lost dialog] (./images/connection-lost-dialog.png) 

