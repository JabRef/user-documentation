---
description: JabKit is JabRef's CLI tool
---

# JabKit

## Installing and Running

The easiest way to run JabKit is using [npx](https://docs.npmjs.com/cli/v8/commands/npx) and [jbang](https://www.jbang.dev/):

```bash
npx @jbangdev/jbang jabkit@jabref
```

You can also run it using [docker](https://www.docker.com/):

```bash
docker run ghcr.io/jabref/jabkit:edge --help
```

### Making JabKit available on the CLI as `jabkit`

In case JabKit should be available on the command line, execute following steps

1. Install JBang by following one option at the [download page of JBang](https://www.jbang.dev/download/).
2. Execute `jbang app install jabkit@jabref`

Then, JabKit can be run as follows:

```bash
jabkit --help
```

## General Usage

```bash
Usage: jabkit [-dhpv] [COMMAND]
  -d, --debug       Enable debug output
  -h, --help        display this help message
  -p, --porcelain   Enable script-friendly output
  -v, --version     display version info
```

## Available Commands

```pre
Commands:
  generate-citation-keys  Generate citation keys for entries in a .bib file.
  check-consistency       Check consistency of the library.
  check-integrity         Check integrity of the database.
  fetch                   Fetch entries from a provider.
  search                  Search in a library.
  convert                 Convert between bibliography formats.
  generate-bib-from-aux   Generate small bib from aux file.
  preferences             Manage JabKit preferences.
  pdf                     Manage PDF metadata.
  get-cited-works         Get the cited works (bibliography).
  get-citing-works        Get the works citing the work at hand.
```

Hint: Using `jabkit <COMMAND> --help` will show the supported options for each command.

## Extracting References from a PDF

`jabkit pdf extract-references` parses the "References" section at the end of one or more PDFs and outputs the found entries as BibTeX — the same extraction the JabRef GUI offers via the "Extract references" right-click action on a linked PDF.

```bash
# single PDF, BibTeX printed to stdout
jabkit pdf extract-references paper.pdf

# multiple PDFs, one .bib file written next to each source PDF
jabkit pdf extract-references paper1.pdf paper2.pdf

# write into a specific directory instead
jabkit pdf extract-references --output-dir out/ paper1.pdf paper2.pdf
```

Use `--mode` to choose the extraction strategy: `RULE_BASED` (offline, no external service), `GROBID` (sends the PDF to a [Grobid](https://grobid.readthedocs.io/) server; `--grobid-url` overrides the configured server for a single call), or `LLM` (experimental, uses the configured AI provider). Without `--mode`, the command mirrors the GUI's behavior and picks `GROBID` if it is enabled in your preferences, otherwise `RULE_BASED`.

See `jabkit pdf extract-references --help` for all options.

## Updating JabKit

Make use of `--fresh` to update JabKit

`jbang --fresh jabkit@jabref`

Then, the `jabkit` command also uses the latest version.
