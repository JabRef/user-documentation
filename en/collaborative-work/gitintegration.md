# Sharing a Library Using GitHub

Note: These Git features are currently only available in the **v6.0 beta** and not in the current standard download at the [JabRef home page](https://www.jabref.org). To access them, download
the [v6.0 beta](https://github.com/JabRef/jabref/releases/tag/v6.0-beta.1) version of JabRef or build from source.

JabRef allows you to use Git and GitHub to share entries with others. You can also use these features for version control and collaboration.

### Setting up GitHub sharing

To set up this sharing with Git, you must follow these steps:

1. *Create a remote GitHub Repository*: To begin, create a GitHub repository to store your entries remotely. You will need a GitHub account for this step - see [Creating a GitHub Repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository).
2. *Create a Personal Access Token (PAT)*: To create a Personal Access Token for your GitHub account, follow the steps at: [Creating a GitHub PAT](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic). When prompted on what accesses the token should have, ensure the 'repo' permission is checked. Make sure to copy the token or save it somewhere, as it will be needed for step 3.
3. *Add your Git credentials*: Add your GitHub credentials into JabRef by visiting **File -> Preferences** and searching for 'Git'. You should see boxes to place both your username and the PAT you made in step 2. Come back here to change your credentials at any time.
4. *Share the repository to GitHub*: Choose **File → Git -> Share this library to GitHub**. Enter the GitHub repository URL from step 1. This will initialise a local Git repository, add the repository from step 1 as a remote, and push your entries to the remote repository.

### Using Git Features

Once your library is shared to GitHub, you will be able to use Git features from the **File → Git** menu. The basic
operations are described below:

- *Commit*: Records the latest version of your bibliography file in your local repository.
- *Push*: Updates the remote repository with the newest version of your local commits. There must be no conflicts with what's on the remote repository, and the file must have been saved. If there are conflicts, consider **pulling**first.
- *Pull*: Pulls the latest changes from the remote repositories and performs a semantic merge. If there are conflicts (such as conflicting changes between you and a collaborator), it will open a conflict menu where you can merge your changes together.

For more information on how these commands work, see the [Git documentation](https://git-scm.com/doc).

Note that this procedure automatically shares all files in the **libraries** directory of your project. Because of this it is recommended before sharing to check that folder does not contain unrelated files, or to exclude any files you don’t want shared by listing them in a .gitignore file.
