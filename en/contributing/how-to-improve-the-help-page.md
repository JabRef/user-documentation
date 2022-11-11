# How to Improve the Help Page

Here is a quick start guide on how to improve help pages in the [Jabref User Documentation](https://docs.jabref.org).

## Prerequisite

The Jabref help pages are hosted at [GitBook](https://www.gitbook.com) with integration to GitHub, which provides version control based on [git](https://git-scm.com). In order to edit or create a JabRef help page, you need a GitHub account. You can sign up [here](https://github.com/join) for free. If you already have an account, please make sure that you are signed in.

## Editing Help Pages directly in the browser

The easiest way to fix small errors, or to add additional information, is to edit a help page directly in your browser, using the following steps.

### 1. Start editing

At the top of each help page, you can find the GitHub icon with "Edit on GitHub" link. Just click the link to show the source of the page.

This leads you to the GitHub page associated with the help page:

![](<../.gitbook/assets/screenshot-edit-pencil (1) (1) (1) (1) (1) (1) (2) (3) (3) (2) (1) (1).png>)

To actually edit the page, click on the pencil icon, as highlighted above.

### 2. Make your changes

The window to edit the page at GitHub looks like this:

![Edit view at GitHub](<../.gitbook/assets/screenshot-edit-page (1) (3) (3) (3) (1) (1).png>)

Most text can be simply added/edited in this field as plain text. However, you can style your contribution by using [markdown](https://daringfireball.net/projects/markdown/). Markdown is a rather easy way to format text without the need for complex markup, such as with HTML. You can find an introduction to markdown [here](https://daringfireball.net/projects/markdown/) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

In order to review your changes, click on the "Preview changes" tab:

![Edit view at GitHub](<../.gitbook/assets/screenshot-edit-preview (1) (1) (1) (1) (3) (3) (3) (2) (1) (1).png>)

### 3. Saving the changes

To save the changes, create a so-called "Commit" by scrolling down and pressing the "Propose File Change" button:

![Save changes](<../.gitbook/assets/screenshot-edit-commit (1) (2) (2) (2) (2) (1) (1) (1).png>)

_Please note: The message you provide here will be visible in the history of the help page, so please consider your change and provide a meaningful description of your changes._

As the last step, submit the changes you have made back to the JabRef team:

![Create Pull Request](<../.gitbook/assets/screenshot-edit-pullrequest (1) (3) (3) (3) (2) (1) (1).png>)

Just press the "Create Pull Request" button, and confirm the creation of the request on the next page.

That's it! The JabRef team will review your changes and publish them on [docs.jabref.org](https://docs.jabref.org).

## Advanced editing

To edit more than one file at a time, add screenshots, and for other more advanced changes, we recommend that you checkout this repository locally and create a Pull Request of your changes using the standard git and GitHub workflow.

### Tables

The best way to enter tables is to use this [Table Generator](http://www.tablesgenerator.com/markdown\_tables) for Markdown. It has the nice feature to generate markdown tables from different sources, e.g. you can directly copy the table from a spreadsheet or upload a csv file. Just copy and paste the generated markdown into the documentation.
