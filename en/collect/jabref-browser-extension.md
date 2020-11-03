---
description: >-
  The official browser extension automatically identifies and extracts
  bibliographic information on websites and sends them to JabRef with one click.
---

# Browser Extension

> [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github) - [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh) - [Edge](https://microsoftedge.microsoft.com/addons/detail/pgkajmkfgbehiomipedjhoddkejohfna) - [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)

JabRef has an official browser extension. It automatically identifies and extracts bibliographic information on websites and sends them to JabRef with one click.

When you find an interesting article through Google Scholar, the arXiv or journal websites, this browser extension allows you to add those references to JabRef. Even links to accompanying PDFs are sent to JabRef, where those documents can easily be downloaded, renamed and placed in the correct folder. [A wide range of publisher sites, library catalogs and databases are supported](https://www.zotero.org/support/translators).

## Installation and Configuration

Normally, you simply install the extension from the browser store and are ready to go.

> [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github) - [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh) - [Edge](https://microsoftedge.microsoft.com/addons/detail/pgkajmkfgbehiomipedjhoddkejohfna) - [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)

Most JabRef installations include the necessary files, so test the extension before proceeding with the following instructions. However, sometimes, a manual installation is necessary \(e.g. if you use the portable version of JabRef\). In this case, please take the following steps:

### Windows

1. Make sure you have at least [JabRef 5.0](https://www.jabref.org/#downloads) installed.
2. Install the JabRef browser extension: [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github), [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh), [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)
3. On Windows 7, please [upgrade Powershell](https://www.microsoft.com/en-us/download/details.aspx?id=54616).
4. Download the following files and copy them to the same directory as `JabRef.exe`
   * [jabref-firefox.json](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/windows/jabref-firefox.json)
   * [jabref-chrome.json](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/windows/jabref-chrome.json)
   * [JabRef.bat](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/windows/JabRefHost.bat)
   * [JabRef.ps1](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/windows/JabRefHost.ps1)
5. Make sure that the correct file name of the `JabRef.bat` file is specified in `JabRefHost.ps1` under `$jabRefExe`.
6. Run the following command from the console \(with the correct path to the `jabref.json` file\):

   For Firefox support:

   ```text
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Mozilla\NativeMessagingHosts\org.jabref.jabref" /ve /d "C:\path\to\jabref-firefox.json" /f
   ```

   For Chrome/Opera/Brave/Vivaldi and other chromium based browser support:

   ```text
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Google\Chrome\NativeMessagingHosts\org.jabref.jabref" /ve /d "C:\path\to\jabref-chrome.json" /f
   ```

   For Edge support:

   ```text
   REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Edge\NativeMessagingHosts\org.jabref.jabref" /ve /t REG_SZ /d "C:\path\to\jabref.json" /f
   ```

   You may need to change the root `HKEY_LOCAL_MACHINE` to `HKEY_CURRENT_USER` if you don't have admin rights.

### Linux

#### Deb, RPM or Portable

1. Download and install the Debian package of [JabRef 5.0](https://www.jabref.org/#downloads)
2. Install the JabRef browser extension: [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github), [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh), [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)

   3.a Firefox: Download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/linux/native-messaging-host/firefox/org.jabref.jabref.json) and put it into

   * `/usr/lib/mozilla/native-messaging-hosts/org.jabref.jabref.json` to install with admin rights for all users
   * `~/.mozilla/native-messaging-hosts/org.jabref.jabref.json` to install without admin rights for the current user

     3.b Chrome: Download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/linux/native-messaging-host/chromium/org.jabref.jabref.json) and put it into

   * `/etc/opt/chrome/native-messaging-hosts/org.jabref.jabref.json` to install with admin rights for all users
   * `~/.config/google-chrome/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

     3.c Chromium: Download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/linux/native-messaging-host/chromium/org.jabref.jabref.json) and put it into

   * `/etc/chromium/native-messaging-hosts/org.jabref.jabref.json` to install with admin rights for all users
   * `~/.config/chromium/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

     3.d Edge: Download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/linux/native-messaging-host/chromium/org.jabref.jabref.json) and put it into
   * `/etc/opt/edge/native-messaging-hosts/org.jabref.jabref.json` to install with admin rights for all users
   * `~/.config/microsoft-edge/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

#### Snap

1. Install the snap package of [JabRef 5.0](https://snapcraft.io/jabref)
2. Install the JabRef browser extension: [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github), [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh), [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)
3. Connect the appropriate plug for the selected browser:
   * Firefox: `snap connect jabref:hostfs-mozilla-native-messaging-jabref`
   * Chrome: `snap connect jabref:etc-opt-chrome-native-messaging-jabref`
   * Chromium: `snap connect jabref:etc-chromium-native-messaging-jabref`
   * Edge: `snap connect jabref:etc-opt-edge-native-messaging-jabref`

### Mac OS

1. Download and install the DMG package of [JabRef 5.0](https://www.jabref.org/#downloads).
2. Install the JabRef browser extension: [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github), [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh), [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)

   3.a Firefox: If it's not auto-installed for you, download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/mac/native-messaging-host/firefox/org.jabref.jabref.json) and put it into

   * `/Library/Application Support/Mozilla/NativeMessagingHosts/org.jabref.jabref.json` to install with admin rights for all users
   * `~/Library/Application Support/Mozilla/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

     3.b Chrome based: If it's not auto-installed for you, download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/mac/native-messaging-host/chromium/org.jabref.jabref.json) and put it into

   * `/Library/Application Support/Google/Chrome/NativeMessagingHosts/org.jabref.jabref.json` to install with admin rights for all users
   * `~/Library/Application Support/Google/Chrome/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

    3.c Edge: If it's not auto-installed for you, download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/master/buildres/mac/native-messaging-host/chromium/org.jabref.jabref.json) and put it into

   * `/Library/Microsoft/Edge/NativeMessagingHosts/org.jabref.jabref.json` to install with admin rights for all users
   * `~/Library/Application Support/Microsoft Edge {Channel_Name}/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

        The {Channel_Name} in Microsoft Edge {Channel_Name} must be one of the following values: Canary, Dev, Beta.

        When using the Stable release/channel, {Channel_Name} is not required.

## Usage

After the installation, you should be able to import bibliographic references into JabRef directly from your browser. Just visit a publisher site or some other website containing bibliographic information \(for example, [the arXiv](http://arxiv.org/list/gr-qc/pastweek?skip=0&show=5)\) and click the JabRef symbol in the Firefox search bar \(or press Alt+Shift+J\). Once the JabRef browser extension has extracted the references and downloaded the associated PDF's, the import window of JabRef opens.

You might want to configure JabRef so that new entries are always imported in an already opened instance of JabRef. For this, activate "Listen to remote operation on port" under the "Network" tab of the JabRef Preferences.

