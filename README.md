# JabRef User Documentation

This repository serves the content of <https://docs.jabref.org/>.
The page itself is rendered using the power of [GitBook](https://www.gitbook.com/).

Feel free to improve the page using the [issue tracker](https://github.com/JabRef/user-documentation/issues) or by following [our guide rendered by GitBook](https://docs.jabref.org/contributing#i-would-like-to-improve-the-help-page-what-are-the-steps).
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

## How to rename files

The gitbook integration changes some of the file names and appends "(1) (2) (1)" or something like this.
If one fixes that in the GitHub repository, then the next sync rewrites the names again.
The only solution we've found so far is manually replacing the images using the GitBook UI:
Left to the image you have a hamburger with a "replace" option.

In case GitBook was fixed, with some command line magic, this could be solved:

1. Create a script renaming all images: `fd -e png -x bash -c "echo '{}' | sed 's/\([^(]*\)\(.*\).png/mv \"\\1\\2.png\" \"\\1.png\"/' | sed 's/ \.png/.png/'" | sort > fix-filenames.sh`. Execute in `en/.gitbook`. Otherwise, `fd` does not find any file.
2. Create a script doing the renaming in all `.md` files: `fd -e md -x bash -c "echo sed -i '\"s/assets\/\([^%]*\)\(.*\).png/assets\/\\1.png/\"' {}" > fix-mds.sh`.
