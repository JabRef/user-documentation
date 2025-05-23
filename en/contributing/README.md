# Contribute to JabRef [![Join the chat at https://gitter.im/JabRef/jabref](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/JabRef/jabref)

We are really happy that you are interested in contributing to JabRef. Please take your time to look around here. We especially invite you to look into our [community members page](https://discourse.jabref.org/t/community-members/1868?u=koppor) where members introduce themselves.

**I would like to try out a feature introduced at pull request. What are the steps?**

In JabRef, there are dozens of bug fixes and new features introduced using GitHub's pull request mechansim.
You can browse all at <https://github.com/JabRef/jabref/pulls>.
The JabRef team really welcomes users to try out these additions and to comment on them.
Getting in improvements at this stage is much easier than fixing afterwards.

If you are familiar with the command line on your OS, then it is very easy to try out pull requests and give feedback.
In the following, we try to give a minimal set of installation instructions to be able to run a contribution from a fork.

Prerequisites:

- [`git`](https://git-scm.com/) - The version control system
- [GitHubCLI](https://cli.github.com/) - A command-line client to GitHub install it using the installer linked from their [homepage]((https://cli.github.com/)) or [the commands given at the installation hints](https://github.com/cli/cli#installation).
- A JabRef project checkout. On Windows, we recommend:
  - `mkdir c:\git-repositories`
  - `cd c:\git-repositories`
  - `git clone --recurse-submodules https://github.com/JabRef/jabref.git JabRef`
  - `cd JabRef`
- [`gg.cmd`](https://github.com/eirikb/gg) - A cross-platform and cross-architecture version manager. Download [`gg.cmd`](https://github.com/eirikb/gg/releases/latest/download/gg.cmd) and store it in the `JabRef` directory

Try a branch:

1. `cd` into the `JabRef` directory: `cd c:\git-repositories\JabRef`
2. Checkout out the pull request: `gh pr checkout 13111` - where `13111` is the PR number, in this case [pr#13111](https://github.com/JabRef/jabref/pull/13111)
3. Compile and run JabRef `gg.cmd gradle run :jabgui:run` (on Linux and macOS, you need to prefix it with `sh`: `gg.cmd gradle run :jabgui:run`). This will also download the necessary JDK and gradle distribution. In the first run, please give the system about 4 minutes until the GUI is shown.

Alternatives:

1. You "just" need a JDK installed to run `./gradlew`: Gradle automatically downloads the JDK
2. You can use the "usual" `git clone`, `git remote add ...`, `git fetch ...`, and `git checkout ...` commands to checkout a pull request from a fork.

**I would like to improve the help page.**

Please see [How to Improve the Help Page](how-to-improve-the-help-page.md)

**I would like to help translating JabRef to another language.**

We encourage you to read about [translating the JabRef user interface](how-to-translate-the-ui.md).

**I would like to keep Wikipedia pages up-to-date**

JabRef improves -- and Wikipedia pages should keep up!

For changes affecting all languages, update the [wikidata entry of JabRef](https://www.wikidata.org/wiki/Q1676802).

For changes in a specific language, go to the related page, and simply click on "Edit" (top right-hand tab). Currently, existing pages are:

* Deutsch: [https://de.wikipedia.org/wiki/JabRef](https://de.wikipedia.org/wiki/JabRef)
* English: [https://en.wikipedia.org/wiki/JabRef](https://en.wikipedia.org/wiki/JabRef)
* Español: [https://es.wikipedia.org/wiki/JabRef](https://es.wikipedia.org/wiki/JabRef)
* Français: [https://fr.wikipedia.org/wiki/JabRef](https://fr.wikipedia.org/wiki/JabRef)
* Italiano: [https://it.wikipedia.org/wiki/JabRef](https://it.wikipedia.org/wiki/JabRef)
* Русский: [https://ru.wikipedia.org/wiki/JabRef](https://ru.wikipedia.org/wiki/JabRef)
* Portuguese: [https://pt.wikipedia.org/wiki/JabRef](https://pt.wikipedia.org/wiki/JabRef)
* Svenska: [https://sv.wikipedia.org/wiki/JabRef](https://sv.wikipedia.org/wiki/JabRef)
* Українська: [https://uk.wikipedia.org/wiki/JabRef](https://uk.wikipedia.org/wiki/JabRef)
* 中文: [https://zh.wikipedia.org/wiki/JabRef](https://zh.wikipedia.org/wiki/JabRef)

If there is no page for your own language, you can easily create one.

**I have some cool feature requests**

[Come discuss it!](http://discourse.jabref.org)

**Can I make a donation? How?**

Donations keep us going! You can use PayPal or bank transfers. Your institution/company can contribute too, through bank transfer for example. All details are provided at [https://donations.jabref.org](https://donations.jabref.org).

Our team consists of volunteers. To provide better support, we are currently trying to get a funded developer on board. Please consider donating money!

**I would like to contribute code. How to?**

Please head to our [Contributing Guide](https://github.com/JabRef/jabref/blob/main/CONTRIBUTING.md#contributing).

