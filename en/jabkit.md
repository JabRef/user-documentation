---
description: JabKit is JabRef's CLI tool
---

# JabKit

## Installing and Running

The easiest way to run JabKit is using [npx](https://docs.npmjs.com/cli/v8/commands/npx) and [jbang](https://www.jbang.dev/):

```
npx @jbangdev/jbang jabkit@jabref
```

In case JabKit should be available on the command line, execute following steps

1. Install JBang by following one option at the [download page of JBang](https://www.jbang.dev/download/).
2. Execute `jbang app install jabkit@jabref`

Then, `jabkit` can be run as follows:

```
jabkit --help
```

## General Usage

```
Usage: jabkit [-dhpv] [COMMAND]
  -d, --debug       Enable debug output
  -h, --help        display this help message
  -p, --porcelain   Enable script-friendly output
  -v, --version     display version info
```

## Available Commands

```
Commands:
  generate-citation-keys  Generate citation keys for entries in a .bib file.
  check-consistency       Check consistency of the library.
  fetch                   Fetch entries from a provider.
  search                  Search in a library.
  convert                 Convert between bibliography formats.
  generate-bib-from-aux   Generate small bib from aux file.
  preferences             Manage JabKit preferences.
  pdf                     Manage PDF metadata.
```

## Updating JabKit

Make use of --fresh to update JabKit

`jbang --fresh jabkit@jabref`

Then, the `jabkit` command also uses the latest version.
