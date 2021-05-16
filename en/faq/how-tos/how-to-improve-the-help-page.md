# How to Improve the Help Page

Here is a quick start guide of how to improve the help page.

## Prerequisite

Our help pages are hosted at [GitBook](https://www.gitbook.com/) with an integration to GitHub., which provides version control based on [git](https://git-scm.com/). In order to edit or create a JabRef help page you need a GitHub account. You can sign up [here](https://github.com/join) for free.

If you already have an account, please make sure that you are signed in.

## Editing Help Pages directly in the browser

The easiest way to fix small errors or to add additional information is to edit a JabRef help page directly in your browser:

### Start editing

At the top of each help page you can find the GitHub icon. Just click here to show the source of the page.

This leads you to GitHub:

![Click on the pencil icon](../../.gitbook/assets/screenshot-edit-pencil%20%281%29%20%281%29%20%281%29%20%281%29%20%281%29%20%281%29%20%281%29.png)

To actually edit the page click on the pencil icon which is highlighted above.

### Make your changes

The window to edit the page at GitHub looks like this:

![Edit view at GitHub](../../.gitbook/assets/screenshot-edit-page%20%281%29.png)

Most text can be simply added in this field as plain text. However, you can style your contribution by using [markdown](https://daringfireball.net/projects/markdown/). Markdown is a rather easy way to format text without the need for complex markup as for example in HTML.

You can find an introduction to markdown [here](https://daringfireball.net/projects/markdown/) or [here](https://guides.github.com/features/mastering-markdown/).

In order to check your changes hit the "Preview Changes" tab:

![Edit view at GitHub](../../.gitbook/assets/screenshot-edit-preview%20%281%29%20%281%29%20%281%29%20%281%29.png)

### Saving the changes

To save the changes you have to create a so called "Commit" by scrolling down and hitting the button "Propose File Change":

![Save changes](../../.gitbook/assets/screenshot-edit-commit%20%281%29%20%281%29.png)

_Please note: The message you provide here will be visible in the history of the help page, so please think a second to provide a meaningful description of your changes._

As a last step you have to submit the changes you have made back to us:

![Create Pull Request](../../.gitbook/assets/screenshot-edit-pullrequest%20%281%29.png)

Just hit the button "Create Pull Request" and confirm the creation on the next page which is opened by hitting "Create Pull Request".

That's it! We'll review your changes and publish them at [docs.jabref.org](https://docs.jabref.org).

## Advanced editing

To edit more than one file at a time, to add screenshots, and for other more advanced changes we recommend to checkout this repository locally and to create a PR of your changes using the standard git and GitHub workflow.

### Tables

The best way to enter tables is to use this [Table generator](http://www.tablesgenerator.com/markdown_tables) for Markdown. It has the nice feature to generate markdown tables from different sources, e.g. you can directly copy the table from a spreadsheet or upload a csv files. Just copy and paste the generated markdown.

