## JabRef Web-based Help

[![Build Status](https://travis-ci.org/JabRef/help.jabref.org.svg?branch=master)](https://travis-ci.org/JabRef/help.jabref.org)

This repository is intended to replace the offline help within [JabRef](http://www.jabref.org/) and the [help on the sourceforge.net page](http://jabref.sourceforge.net/help/Contents.php) at http://help.jabref.org/.

Feel free to improve the page using the [issue tracker](https://github.com/JabRef/help.jabref.org/issues) or [pull requests](https://github.com/JabRef/help.jabref.org/pulls).  
The help content is licensed under [CC-BY-4.0](LICENSE.md)

See also our [guidelines and quick start guide on contributing](CONTRIBUTING.md).

### Installation of Jekyll to check the page locally

Execute `gem install bundler`, `bundle install`, and `bundle exec jekyll serve --incremental` to serve this page locally at http://localhost:4000/.
Source: https://help.github.com/articles/using-jekyll-with-pages/#installing-jekyll
At windows, this works with [RubyInstaller](http://rubyinstaller.org/downloads) and the [Development Kit](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit).
[JRuby](http://jruby.org/) doesn't work as the [C extensions were dropped](http://stackoverflow.com/a/32135381/873282).

### Hints for Windows

1. Install [chocolatey](https://chocolatey.org/)
2. `choco install ruby ruby2.devkit`
3. Edit `c:\`
4. Add `- C:/tools/ruby23` at the bottom and save
5. Execute the steps descsribed above (`gem install bundler`, ...)
