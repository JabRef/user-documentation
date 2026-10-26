---
description: JabKit is JabRef's CLI tool
---

# JabKit

## Installing and Running

### Native binary (recommended)

JabKit is available as a native binary for Linux (amd64/arm64) and macOS (Apple Silicon). It is a self-contained executable: no Java runtime is required, and it starts instantly. Download it from the [JabRef builds server](https://builds.jabref.org/main/) and unpack it:

```bash
# Linux (amd64)
curl -fL https://builds.jabref.org/main/linux-amd64/tools/jabkit-native_linux.tar.gz | tar xz
./jabkit/jabkit --help
```

```bash
# Linux (arm64)
curl -fL https://builds.jabref.org/main/linux-arm/tools/jabkit-native_linux_arm64.tar.gz | tar xz
./jabkit/jabkit --help
```

```bash
# macOS (Apple Silicon)
curl -fLO https://builds.jabref.org/main/macOS-silicon/tools/jabkit-native_macos-silicon.zip
unzip jabkit-native_macos-silicon.zip
./jabkit/jabkit --help
```

On other platforms (e.g. Windows, Intel macOS), use one of the options below.

### JBang and Docker

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
  -h, --help        Display this help message
  -p, --porcelain   Enable script-friendly output
  -v, --version     display version info
```

## Available Commands

```pre
Commands:
  check                  Check the integrity and consistency of a library.
  citationkeys           Manage citation keys.
  convert                Convert between bibliography formats.
  doi-to-bibtex          Converts a DOI to BibTeX
  fetch                  Fetch entries from a provider.
  generate-bib-from-aux  Generate small bib from aux file.
  get-cited-works        Outputs a list of works cited ("bibliography")
  get-citing-works       Outputs a list of works citing the work at hand
  git                    Git integration for .bib files.
  pdf                    Manage PDF metadata.
  preferences            Manage JabKit preferences.
  pseudonymize           Perform pseudonymization of the library
  search                 Search in a library.
```

Hint: Using `jabkit <COMMAND> --help` will show the supported options for each command.

## Updating PDF Metadata

`jabkit pdf update` writes XMP metadata and/or an embedded BibTeX attachment to linked PDFs (`--format=xmp,bibtex-attachment`).

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

## Input sources

Wherever a command takes an input file, you can also pass an `http(s)` or `ftp` URL, or the PostgreSQL connection URL of a [shared SQL library](collaborative-work/sqldatabase/README.md):

```bash
jabkit convert 'postgresql://user:secret@host:5432/library' --output refs.bib
```

The shared library is read once and not written back to; changes made by JabKit stay in the output file.
Quote the URL so that your shell does not interpret the special characters in it, and be aware that the password becomes part of your shell history.

## Updating JabKit

Make use of `--fresh` to update JabKit

`jbang --fresh jabkit@jabref`

Then, the `jabkit` command also uses the latest version.
