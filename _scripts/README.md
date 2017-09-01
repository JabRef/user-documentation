## Script overview

The script has following commands available (each can be shown when called with the help parameter `-h` on any of the positional parameters):

- `$ python _scripts/automate.py status [-e|--extended] [-m --markdown]` 
  - prints the current status to the console
  - `[-e|--extended]` prints the relevant pages (also applies to the markdown mode)
  - `[-m --markdown]` write the status int the markdown syntax and opens the file
  

- `$ python _scripts/automate.py update [-e|--extended]`
  - updates all the redirecting pages and the index file of each language as well as the inlcude pages
  - `[-e|--extended]` prints the relevant pages
    
  
- `$ python _scripts/automate.py clean [-e|--extended]`
  - removes all the generated pages, the help site may not work afterwards
  - `[-e|--extended]` prints the deleted pages
  
  
- `$ python _scripts/automate.py removeHelpSuffix [-e|--extended]`
  - removes from all help pages the `Help` suffix and creates redirects for them, this gets also called on each `update`
  - `[-e|--extended]` prints the renamed pages


## Installatation notes

### Windows

1. Open cmd.exe with administrative privilidges
2. [Install Chocolatey](https://chocolatey.org/install)
3. `choco install python2`
4. Switch back to normal command prompt
5. `c:\tools\python2\Scripts\pip install python-frontmatter`
