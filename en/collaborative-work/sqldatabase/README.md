---
description: JabRef is able to support collaborative work using a shared SQL database.
---

# Shared SQL Database

JabRef uses [PostgreSQL](https://www.postgresql.org/) as the database system for shared databases. Support for MySQL/MariaDB and Oracle was removed due to high maintenance effort.

## Usage

To use this feature you have to connect to a remote database. To do so you have to open **File** in the menu bar and then click **Shared database** and **Connect to shared database**. The **Connect to shared database** dialog will open. The quickest way to fill it in is to paste the connection URL of your database (as shown by your hosting provider, e.g. `postgres://user:password@host:5432/database?sslmode=require`, a JDBC URL, the keyword form `host=… port=… dbname=… user=… password=…`, or even the whole `psql 'postgres://…'` command line) into the **Connection URL** field: JabRef fills in host, port, database, user, and password automatically. You can also enter these details by hand. If you like you can save your password by ticking the **Remember password** checkbox; JabRef then keeps it in your operating system's credential store (keychain). The checkbox is unavailable if JabRef cannot reach a credential store. A remembered password is also what lets JabRef reconnect the database automatically on the next start (see below).

Settings that are rarely needed (SSL and a custom JDBC URL for the *expert mode*) are found in the collapsible **Advanced** section. When a pasted URL contains parameters JabRef has no dedicated field for (such as `sslmode=require`), expert mode is switched on and the parameters are kept in the custom JDBC URL, so the connection is made exactly as the URL says.

If the database was already used by an older version of JabRef, its content is migrated to the new table structure automatically when the first client connects. The old tables are kept untouched, so older JabRef versions can still be used with them.

Every database you connect to is remembered. The **Saved connections** list at the top of the dialog lets you pick a previous connection to fill in the fields again, and **Remove** deletes the selected one together with its stored password. Connecting to a database that is already in the list updates its entry, so the list holds each database once; connecting with changed server, database or user details adds a new entry.

### SSL configuration

Tick **Use SSL** in the **Advanced** section to require an encrypted connection. Like `psql`, this does not verify the server's certificate, so managed PostgreSQL providers with their own certificate authorities work out of the box; a pasted URL with `sslmode=require` ticks the box for you. If you want the server certificate verified, use the expert mode with a JDBC URL such as `jdbc:postgresql://host:5432/database?sslmode=verify-full&sslrootcert=/path/to/ca.pem`; a pasted URL with `sslmode=verify-full` sets this up automatically.

![Screenshot of Connect to shared database dialog](../../.gitbook/assets/open-shared-database-dialog.png)

After connecting to your shared database, your main window should look like this:

![Screenshot of JabRef with an open shared database](../../.gitbook/assets/open-shared-databse-screenshot.png)

If shared databases are still connected when you quit JabRef, JabRef reconnects them automatically on the next start, just like local libraries (if you enabled **Open last edited libraries on startup** in the preferences). This only works if the password is available, i.e. you ticked **Remember password** and JabRef can reach the credential store. Otherwise the connection fails on startup and JabRef shows an error; connect again via **File → Shared database → Connect to shared database**.

JabRef will automatically detect your changes and push them to the shared side. Changes made by other users arrive automatically as well: JabRef listens for change notifications from the database, so edits, new groups, and changed library settings show up in all connected JabRef instances without any manual action. If a newer version is available, JabRef will try to automatically merge the new version and your local copy. If this fails, the **Update refused** dialog will show up. You will then have to manually merge using the **Update refused** dialog. The dialog helps you by pointing out the differences, you then will have to choose if you want to keep your local version or update to the shared version. Confirm your merge by clicking on **Merge entries**.

![Screenshot of Update refused dialog](../../.gitbook/assets/update-refused-merge-dialog.png)

If somebody else deletes entries, they disappear from your library as well and a notification tells you how many were deleted on the shared side. If you were still working on one of them, use **Undo** to get it back: it is inserted into the shared database again.

If the connection to the shared database is lost, JabRef tells you so in a notification and keeps working: every change you make is kept locally and JabRef reconnects by itself, trying again in increasing intervals. Once the connection is back, a notification tells you so, your changes are synchronized, and everything that happened on the shared side meanwhile is pulled in. If somebody else changed an entry you edited during that time, the **Update refused** dialog described above opens for that entry.

The changes you made without connection also survive closing JabRef: they are synchronized the next time you connect to the same shared database.

## Try it out

Choose one online provider and start a PostgreSQL database there.\
One list of providers is available at [https://www.postgresql.org/support/professional\_hosting/](https://www.postgresql.org/support/professional_hosting/).
