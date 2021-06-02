# JabRef User Documentation

This repository serves the content of <https://docs.jabref.org/>.
The page itself is rendered using the power of [GitBook](https://www.gitbook.com/).

Feel free to improve the page using the [issue tracker](https://github.com/JabRef/user-documentation/issues) or by following [our guide rendered by GitBook](https://docs.jabref.org/faq/faqcontributing#i-would-like-to-improve-the-help-page-what-are-the-steps).
In case you plan larger contributions, please contact us to gain access to the WYSIWG editor on GitBook itself.

## How to regenerate `SUMMARY.md` from scratch

Use <https://github.com/koppor/gitbook-summary-generator>.

## How to find broken links

1. Install [markdown-link-check](https://github.com/tcort/markdown-link-check): `npm install -g markdown-link check`
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
