# Sharing a Library Using Git
JabRef allows you to use Git and GitHub to share entries with third parties. It can also be used for version control and for more effective collaboration. These features are fully integrated into JabRef, so you can use them even if you haven't used Git before.

### Setting up Git sharing
To set up this sharing with Git, you must follow these steps:
1. *Create a remote GitHub Repository*: To begin, create a GitHub repository to store your entries remotely. You will need a GitHub account for this step - see [Creating a GitHub Repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository).
2. *Create a Personal Access Token (PAT)*: See [Creating a GitHub PAT](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic) to create a Personal Access Token for your GitHub account. Make sure to copy the token or save it somewhere, as it will be needed for step 3. You can select Remember Git settings after step 3 if you want JabRef to remember your GitHub credentials.
3. *Share the repository to GitHub*: Choose **File → Git -> Share this library to GitHub**. Enter the GitHub repository URL from step 1, and your Personal Access Token from step 2. This will initialise a local Git repository, add the repository from part 1 as a remote, and push your entries to the remote repository.

### Creating a remote GitHub Repository
Now that the code is shared to GitHub, you will be able to use Git features from the **File → Git** menu. The basic operations are described below:
- *Commit*: Updates your local repository with the newest version of your .bib file.
- *Push*: Updates the remote repository with the newest version of your local commits. There must be no conflicts with what's on the remote repository, and the file must have been saved. If there are conflicts, consider **pulling** first.
- *Pull*: Pulls the latest changes from the remote repositories and performs a semantic merge. If there are conflicts (such as conflicting changes between you and a collaborator), it will open a conflict menu where you can merge your changes together.

For more information on how these commands work, consider reading the git documentation.

Note that this procedure automatically shares all files in the **libraries** directory of your project. Because of this it is recommended before sharing to check that folder does not contain unrelated files, or to explicitly exclude files you wish to with your .gitignore file first.
