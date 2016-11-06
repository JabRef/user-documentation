## Script overview

The Script has following commands available (each can be shown when called with the help parameter `-h` on any of the positional parameters):

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


## Note when translating pages
 
 - Categories must no be translated (they are only needed in the english pages and are ignored in all other languages).
 - If the title in the yaml frontmatter (this is at the beginning at each page surrounded by `---`) starts with a special character (eg. `*`) the whole title must be surrounded by quotation marks (`"`).
 - You cannot enclose text with `{{ ... }}` as this will get interpreted as Liquid syntax and not displayed as is. Use `{ { ... } }` instead (with spaces between the braces).


## Add a new language

Example: Italian (it)

1. Create `it` folder
2. Create `it/localization_it.json` (copy `en/localization_en.json` and delete/translate the values)
3. Run `python _scripts/automate.py update`
4. Add the Italian index to the main index if some of the pages are translated into Italian

## Installatation Notes

### Windows

1. [Install Chocolatey](https://chocolatey.org/install)
2. `choco install python2`
3. Switch back to normal command prompt
4. `c:\tools\python2\Scripts\pip install python-frontmatter`
