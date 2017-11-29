---
title: Remote operation
helpCategories:
  - General
---
# Remote operation

This feature can be toggled and configured under **Preferences → Advanced**.

*Note that activating this feature under Windows XP SP2 (and possibly other configurations) may prompt a message box stating that certain features of the program have been blocked by the Windows firewall. You can safely tell the firewall to keep blocking - the firewall will not interfere with remote operation of JabRef.*

If listening for remote operation is enabled, JabRef will at startup attempt to start listening to a specific port. This means that other applications can send information to JabRef through this port. JabRef will only accept local connections, to avoid the risk of interference from outside.

Binding to this port makes it possible for a second JabRef instance to discover that the first one is running. In this case, unless specifically instructed to run in stand-alone mode, the second JabRef instance will pass its command line options through the port to the first JabRef instance, and then immediately quit.

The first JabRef instance will read the command line options, and perform the indicated actions, such as reading or importing a file, or importing a file to the currently shown database. If a file is imported using the command-line option `--importToOpen`, the imported entries will be added to the currently shown database. If no database is open, a new one will be created.