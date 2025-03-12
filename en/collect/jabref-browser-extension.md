---
description: >-
  The official browser extension automatically identifies and extracts
  bibliographic information on websites and sends them to JabRef with one click.
---

# Browser Extension

> [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github) - [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh) - [Edge](https://microsoftedge.microsoft.com/addons/detail/pgkajmkfgbehiomipedjhoddkejohfna) - [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)

JabRef offers an official browser extension. It automatically identifies and extracts bibliographic information on websites and sends them to JabRef with one click.

When you find an interesting article through Google Scholar, the arXiv or journal websites, this browser extension allows you to add those references to JabRef. Even links to accompanying PDFs are sent to JabRef, where those documents can easily be downloaded, renamed, and placed in the correct folder. [A wide range of publisher sites, library catalogs, and databases are supported](https://www.zotero.org/support/translators).

## Installation and Configuration

Normally, you simply install the extension from the browser store and are ready to go.

> [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github) - [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh) - [Edge](https://microsoftedge.microsoft.com/addons/detail/pgkajmkfgbehiomipedjhoddkejohfna) - [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)

While Chrome extensions can work in Edge \(and will install\), JabRef is configured to work with the Edge extension in the Edge Browser, and the Chrome extension in the Chrome Browser. It will not work if they are mixed.

## Usage

After the installation, you should be able to import bibliographic references into JabRef directly from your browser. Just visit a publisher site or some other website containing bibliographic information \(for example, [the arXiv](https://arxiv.org/list/gr-qc/pastweek?skip=0&show=25)\) and click the JabRef symbol in the Firefox search bar \(or press Alt+Shift+J\). Once the JabRef browser extension has extracted the references and downloaded the associated PDF's, the import window of JabRef opens.

You might want to configure JabRef so that new entries are always imported in an already opened instance of JabRef. For this, activate "Listen to remote operation on port" under the "Network" tab of the JabRef Preferences.

## Troubleshooting

### In case you have Adblock Plus extension and JabRef extension doesn't work

1\) Go to [zotero.org](https://zotero.org). 2\) Deactivate AdBlock plus extension for the whole domain \(zotero.org\) by clicking on the Adblock plus extension button and sliding the corresponding slider to allow adds on the whole domain. 3\) Close and reopen the browser in order to reload all the extension and their settings. 4\) Verify the functioning of the JabRef extension by visiting a page you know is working to extract its bibliographic data \(for example, [the arXiv](https://arxiv.org/list/gr-qc/pastweek?skip=0&show=5)\) by pressing the extension button or <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>J</kbd>.

In case you encounter problems in this procedure refer to issue \#241 on GitHub for further help.

### In case script jabrefHost.py doesn't work

Error message `bad interpreter: /usr/bin/python3: no such file or directory` means that python3 is not installed at the expected location. Run `which python3` to see if python3 is installed elsewhere. Then copy that path at the first line of jabrefHost.py maintaining `#!` prefix.

### In case PowerShell script JabRefHost.ps1 cannot be executed due to ExecutionPolicy

Check your ExecutionPolicy by using `Get-ExecutionPolicy -List` in PowerShell. If you get something else than `Undefined` for your `MachinePolicy`, changes are high that this policy is set by Microsoft Group Policy. In this case the option `-ExecutionPolicy Bypass` in JabRefHost.bat won't work. If your `MachinePolicy` says `AllSigned` you can self-sign your JabRefHost.ps1 script, by following tutorials like [windows-10-signing-a-powershell-script-with-a-self-signed-certificate](https://community.spiceworks.com/how_to/153255-windows-10-signing-a-powershell-script-with-a-self-signed-certificate).

## Manual Installation

Most JabRef installations include the necessary files, so test the extension before proceeding with the following instructions. However, sometimes, a manual installation is necessary \(e.g. if you use the portable version of JabRef\). In this case, please take the following steps:

### Windows

1. Make sure you have at least [JabRef 5.0](https://www.jabref.org/#download) installed.
2. Install the JabRef browser extension: [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github), [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh), [Edge](https://microsoftedge.microsoft.com/addons/detail/pgkajmkfgbehiomipedjhoddkejohfna), [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)
3. Download the following files and copy them to the same directory as `JabRef.exe`
   * [jabref-firefox.json](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/windows/jabref-firefox.json)
   * [jabref-chrome.json](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/windows/jabref-chrome.json)
   * [JabRef.bat](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/windows/JabRefHost.bat)
   * [JabRef.ps1](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/windows/JabRefHost.ps1)
4. Make sure that the correct file name of the `JabRef.bat` file is specified in `JabRefHost.ps1` under `$jabRefExe`.
5. Run the following command from the console \(with the correct path to the `jabref.json` file\):

   a. For Firefox support:

   ```text
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Mozilla\NativeMessagingHosts\org.jabref.jabref" /ve /d "C:\path\to\jabref-firefox.json" /f
   ```

   b. For Chrome/Opera/Brave/Vivaldi and other chromium-based browser support:

   ```text
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Google\Chrome\NativeMessagingHosts\org.jabref.jabref" /ve /d "C:\path\to\jabref-chrome.json" /f
   ```

   c. For Edge support:

   ```text
   REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Edge\NativeMessagingHosts\org.jabref.jabref" /ve /t REG_SZ /d "C:\path\to\jabref.json" /f
   ```

   You may need to change the root `HKEY_LOCAL_MACHINE` to `HKEY_CURRENT_USER` if you don't have admin rights.

### Linux

#### Deb, RPM or Portable

1. Download and install the Debian package of [JabRef](https://www.jabref.org/#download) (>= 5.0).
2. Install the JabRef browser extension: [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github), [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh), [Edge](https://microsoftedge.microsoft.com/addons/detail/pgkajmkfgbehiomipedjhoddkejohfna), [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)

   - Firefox: Download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/linux/native-messaging-host/firefox/org.jabref.jabref.json) and put it into

      * `/usr/lib64/mozilla/native-messaging-hosts/org.jabref.jabref.json` (and `/usr/lib/mozilla/native-messaging-hosts/org.jabref.jabref.json`) to install with admin rights for all users
      * `~/.mozilla/native-messaging-hosts/org.jabref.jabref.json` to install without admin rights for the current user

   - Chrome and Brave: Download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/linux/native-messaging-host/chromium/org.jabref.jabref.json) and put it into

      * `/etc/opt/chrome/native-messaging-hosts/org.jabref.jabref.json` to install with admin rights for all users
      * `~/.config/google-chrome/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

      Note: Brave is using the Google file structure for `NativeMessagingHosts`, see [Github Issue](https://github.com/brave/brave-browser/issues/5074).

   - Chromium: Download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/linux/native-messaging-host/chromium/org.jabref.jabref.json) and put it into

      * `/etc/chromium/native-messaging-hosts/org.jabref.jabref.json` to install with admin rights for all users
      * `~/.config/chromium/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

   - Edge: Download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/linux/native-messaging-host/chromium/org.jabref.jabref.json) and put it into

      * `/etc/opt/edge/native-messaging-hosts/org.jabref.jabref.json` to install with admin rights for all users
      * `~/.config/microsoft-edge/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user
3. Open the file `org.jabref.jabref.json` with a text editor, and alter it so that its `path` variable matches the location of your `jabrefHost.py` file.

#### Snap

1. Install the snap package of [JabRef](https://snapcraft.io/jabref) (>= 5.0).
2. Install the JabRef browser extension: [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github), [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh), [Edge](https://microsoftedge.microsoft.com/addons/detail/pgkajmkfgbehiomipedjhoddkejohfna), [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)
3. Connect the appropriate plug for the selected browser:
   * Firefox: `snap connect jabref:hostfs-mozilla-native-messaging-jabref`
   * Chrome: `snap connect jabref:etc-opt-chrome-native-messaging-jabref`
   * Chromium: `snap connect jabref:etc-chromium-native-messaging-jabref`
   * Edge: `snap connect jabref:etc-opt-edge-native-messaging-jabref`

#### Flatpak

1. Install the flatpak of [JabRef](https://flathub.org/apps/details/org.jabref.jabref).
2. Install the JabRef browser extension: [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github), [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh), [Edge](https://microsoftedge.microsoft.com/addons/detail/pgkajmkfgbehiomipedjhoddkejohfna), [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)

#### Browser

If the browser is installed as a snap or flatpak there is an extra step to enable the extension.

With Firefox installed as a snap (default in Ubuntu):

* `flatpak permission-set webextensions org.jabref.jabref snap.firefox yes`

With Firefox installed as a flatpak:

* Enable the following permission (Note that this will partially disable confinement):
   * via terminal command: `flatpak override --user --talk-name=org.freedesktop.Flatpak org.mozilla.firefox`
   * via Flatseal app: add `org.freedesktop.Flatpak` to the `Session Bus Talk` section for `org.mozilla.firefox`

### macOS

1. Download and install the DMG package of [JabRef](https://www.jabref.org/#download) (>= 5.0).
2. Install the JabRef browser extension: [Firefox](https://addons.mozilla.org/en-US/firefox/addon/jabref/?src=external-github), [Chrome](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh), [Edge](https://microsoftedge.microsoft.com/addons/detail/pgkajmkfgbehiomipedjhoddkejohfna), [Vivaldi](https://chrome.google.com/webstore/detail/jabref-browser-extension/bifehkofibaamoeaopjglfkddgkijdlh)

   - Firefox: If it's not auto-installed for you, download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/mac/native-messaging-host/firefox/org.jabref.jabref.json) and put it into

      * `/Library/Application Support/Mozilla/NativeMessagingHosts/org.jabref.jabref.json` to install with admin rights for all users
      * `~/Library/Application Support/Mozilla/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

   - Chrome and Brave: If it's not auto-installed for you, download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/mac/native-messaging-host/chromium/org.jabref.jabref.json) and put it into

      * `/Library/Google/Chrome/NativeMessagingHosts/org.jabref.jabref.json` to install with admin rights for all users
      * `~/Library/Application Support/Google/Chrome/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

      Note: Brave is using the Google file structure for `NativeMessagingHosts`, see [Github Issue](https://github.com/brave/brave-browser/issues/5074).

   - Chromium based: If it's not auto-installed for you, download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/mac/native-messaging-host/chromium/org.jabref.jabref.json) and put it into

      * `/Library/Application Support/Chromium/NativeMessagingHosts/org.jabref.jabref.json` to install with admin rights for all users
      * `~/Library/Application Support/Chromium/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

   - Edge: If it's not auto-installed for you, download [org.jabref.jabref.json](https://raw.githubusercontent.com/JabRef/jabref/main/buildres/mac/native-messaging-host/chromium/org.jabref.jabref.json) and put it into

      * `/Library/Microsoft/Edge/NativeMessagingHosts/org.jabref.jabref.json` to install with admin rights for all users
      * `~/Library/Application Support/Microsoft Edge {Channel_Name}/NativeMessagingHosts/org.jabref.jabref.json` to install without admin rights for the current user

      The {Channel\_Name} in Microsoft Edge {Channel\_Name} must be one of the following values: Canary, Dev, Beta.

      When using the Stable release/channel, {Channel\_Name} is not required.

3. Check that the Python script works. In Terminal run `/Applications/JabRef.app/Contents/Resources/jabrefHost.py`. If there are no errors the script is working properly. Stop the script by pressing `Ctrl + D`.

#### Local JabRef installs

org.jabref.jabref.json directs the browser extension to a python script in the JabRef app, which is set to the most common install path by default (`/Applications/JabRef.app/Contents/Resources/jabrefHost.py`). If you have installed JabRef somewhere else, most likely to your local applications folder (`~/Applications/JabRef`), then you will need to update this path to the correct location. For example, in local installs this would be `/Users/USER/Applications/JabRef.app/Contents/Resources/jabrefHost.py`, where `USER` is your username.
