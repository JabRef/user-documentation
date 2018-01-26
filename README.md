# JabRef Web-based Help [![Build Status](https://travis-ci.org/JabRef/help.jabref.org.svg?branch=master)](https://travis-ci.org/JabRef/help.jabref.org)

This repository is serves the content of <https://help.jabref.org/>.

Feel free to improve the page using the [issue tracker](https://github.com/JabRef/help.jabref.org/issues) or [pull requests](https://github.com/JabRef/help.jabref.org/pulls).  
The help content is licensed under [CC-BY-4.0](LICENSE.md)

See also our [guidelines and quick start guide on contributing](CONTRIBUTING.md).

## Installation of Jekyll to check the page locally

Execute `gem install bundler`, `bundle install`, and `bundle exec jekyll serve --incremental` to serve this page locally at http://localhost:4000/.
Source: https://help.github.com/articles/using-jekyll-with-pages/#installing-jekyll
At windows, this works with [RubyInstaller](http://rubyinstaller.org/downloads) and the [Development Kit](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit).
[JRuby](http://jruby.org/) doesn't work as the [C extensions were dropped](http://stackoverflow.com/a/32135381/873282).

## Script overview

The script `automate.py` has following commands available (each can be shown when called with the help parameter `-h` on any of the positional parameters):

- `$ python _scripts/automate.py status [-e|--extended] [-m --markdown]`
  - prints the current status to the console
  - `[-e|--extended]` prints the relevant pages (also applies to the markdown mode)
  - `[-m --markdown]` write the status int the markdown syntax and opens the file

- `$ python _scripts/automate.py update [-e|--extended]`
  - updates all the redirecting pages and the index file of each language as well as the include pages
  - `[-e|--extended]` prints the relevant pages

- `$ python _scripts/automate.py clean [-e|--extended]`
  - removes all the generated pages, the help site may not work afterwards
  - `[-e|--extended]` prints the deleted pages

- `$ python _scripts/automate.py removeHelpSuffix [-e|--extended]`
  - removes from all help pages the `Help` suffix and creates redirects for them, this gets also called on each `update`
  - `[-e|--extended]` prints the renamed pages

## Installation notes

### Windows

1. Open cmd.exe with administrative privileges
2. [Install Chocolatey](https://chocolatey.org/install)

For using `automate.py`:

1. `choco install python2`
2. Switch back to normal command prompt
3. `c:\tools\python2\Scripts\pip install python-frontmatter`
