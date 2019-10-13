# Introduction

This repository serves the content of [https://help.jabref.org/](https://help.jabref.org/).

Feel free to improve the page using the [issue tracker](https://github.com/JabRef/help.jabref.org/issues) or [pull requests](https://github.com/JabRef/help.jabref.org/pulls).  
The help content is licensed under [CC-BY-4.0](https://github.com/JabRef/help.jabref.org/tree/87ac9034764238ca1d6afc963606fd23a85d5293/LICENSE.md)

Also check our [guidelines and quick start contributing guide](https://github.com/JabRef/help.jabref.org/tree/87ac9034764238ca1d6afc963606fd23a85d5293/CONTRIBUTING.md).

## Installation of Jekyll to check the page locally

Execute following steps:

1. `gem install bundler`
2. `bundle install`
3. `bundle exec jekyll serve --incremental`

Now, the page is served locally at [http://localhost:4000/](http://localhost:4000/).

Source: [https://help.github.com/articles/using-jekyll-with-pages/\#installing-jekyll](https://help.github.com/articles/using-jekyll-with-pages/#installing-jekyll).

## Script overview

The script `automate.py` has following commands available \(each can be shown when called with the help parameter `-h` on any of the positional parameters\):

* `$ python _scripts/automate.py status [-e|--extended] [-m --markdown]`
  * prints the current status to the console
  * `[-e|--extended]` prints the relevant pages \(also applies to the markdown mode\)
  * `[-m --markdown]` write the status int the markdown syntax and opens the file
* `$ python _scripts/automate.py update [-e|--extended]`
  * updates all the redirecting pages and the index file of each language as well as the include pages
  * `[-e|--extended]` prints the relevant pages
* `$ python _scripts/automate.py clean [-e|--extended]`
  * removes all the generated pages, the help site may not work afterwards
  * `[-e|--extended]` prints the deleted pages
* `$ python _scripts/automate.py removeHelpSuffix [-e|--extended]`
  * removes from all help pages the `Help` suffix and creates redirects for them, this gets also called on each `update`
  * `[-e|--extended]` prints the renamed pages

## Installation notes

### Windows

1. Open cmd.exe with administrative privileges
2. [Install Chocolatey](https://chocolatey.org/install)

For using `automate.py`:

1. `choco install python2`
2. Switch back to normal command prompt
3. `c:\tools\python2\Scripts\pip install python-frontmatter`

For using Jekyll:

1. `choco install ruby --version 2.4.3.1`. `choco pin add -n ruby`. - install Ruby 2.4 as version 2.5 is currently not supported by Jekyll's gem bundle
2. `refreshenv` - to have ridk in the path
3. `ridk install` - to start installing Ruby Development Kit
4. Choose option 3
5. Now, `bundle install` should succeed.

In case Jekyll plugins are required, do these steps \[[source](http://blog.cloud-mes.com/2014/08/19/how-to-install-gem-curb-in-windows/), linked from [https://github.com/benbalter/jekyll-remote-theme/issues/17\#issuecomment-350818119](https://github.com/benbalter/jekyll-remote-theme/issues/17#issuecomment-350818119)\]:

1. Download [curl-7.40.0-devel-mingw64.zip](https://curl.haxx.se/gknw.net/7.40.0/dist-w64/curl-7.40.0-devel-mingw64.zip)
2. Extract `curl-7.40.0-devel-mingw64.zip` to `c:\temp\curl-7.40.0-devel-mingw64`
3. Run `gem install curb --platform=ruby -- --with-curl-lib=C:/temp/curl-7.40.0-devel-mingw64/bin --with-curl-include=C:/temp/curl-7.40.0-devel-mingw64/include`
4. Alternative to step 4: Copy `libcurl.dll` to `c:\tools\ruby24\bin` \[[source](https://stackoverflow.com/a/47754520/873282)\]

Note: On windows, this works with [RubyInstaller](http://rubyinstaller.org/downloads), version 2.4. This installer is used when using chocolatey. The separate [Development Kit](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit) installer is not required anymore. [JRuby](http://jruby.org/) doesn't work as the [C extensions were dropped](http://stackoverflow.com/a/32135381/873282).

