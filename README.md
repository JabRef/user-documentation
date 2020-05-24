# JabRef User Documentation

This repository serves the content of <https://docs.jabref.org/> and <https://help.jabref.org/>.

Feel free to improve the page using the [issue tracker](https://github.com/JabRef/help.jabref.org/issues) or by following [our guide](en/faq/how-tos/how-to-improve-the-help-page.md).

## How to regenerate SUMMARY.md from scratch

Use <https://github.com/koppor/gitbook-summary-generator>.

## How to find broken links

1. Install https://github.com/tcort/markdown-link-check
2. `find . -name \*.md -exec markdown-link-check -qq {} \; > bad-links.txt`

## How to find Markdown errors

You can use the [markdown-lint docker image](https://github.com/marketplace/actions/markdown-linting-action):

```terminal
docker run --rm \
    -v "$(pwd):/tmp/check" \
    -e INPUT_CONFIG=/tmp/check/.markdownlint.yml \
    avtodev/markdown-lint:v1 \
    /tmp/check/en
```
