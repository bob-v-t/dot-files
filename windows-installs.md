# Windows installation instructions:

## Retrieve from old PC:

- .ssh directory
- OpenVPN directory
- Possible virtual machines

- User/Pictures
- User/Desktop
- User/Documents
- User/Downloads

---

## Installs:

- [Spotify](https://www.spotify.com/nl/download/windows/)
- [Slack](https://slack.com/downloads)
- [Skype](https://www.skype.com/nl/download-skype/skype-for-windows/downloading/)
- [Steam](http://store.steampowered.com/)
- [Adobe Creative Cloud](http://www.adobe.com/nl/creativecloud.html)
- [Eclipse](https://eclipse.org/downloads/)
- [Android Studio](https://developer.android.com/studio/index.html) [+ One Dark theme](https://github.com/yurtaev/idea-one-dark-theme)
- [Atom](https://atom.io/)
- [Sublime Text 3](https://www.sublimetext.com/3)
- [Evernote](https://evernote.com/intl/nl/download/)
- [SMPlayer](http://smplayer.sourceforge.net/en/downloads)
- [Opera/Firefox/Chrome/](Opera/Firefox/Chrome/)
- [Qutebrowser](https://github.com/The-Compiler/qutebrowser/releases)?
- [WinDirStat](http://windirstat.info/)
- [VirtualBox](https://www.virtualbox.org/)
- [PHP](https://www.php.net/)
- [PuttyTray](https://puttytray.goeswhere.com/)
- [Git](https://git-scm.com/downloads) (install with command version, not mingtty version)
- [NodeJS](https://nodejs.org/en/download/)
- [Grunt/Gulp](`sudo npm i -g gulp grunt grunt-cli`)
- [Dropbox + configure atom project](Dropbox + configure atom project)
- [WinSCP](https://winscp.net/eng/download.php)
- [Yandex](https://browser.yandex.com/desktop/)
- [Deluge](http://deluge-torrent.org/)
- [TeamViewer](https://www.teamviewer.com/en/download/windows/)
- [WatchGuard VPN](WatchGuard VPN \(see mail\))
- [OpenVPN (france)](https://openvpn.net/)
- [Fiddler](https://www.telerik.com/download/fiddler)
- [VNC Viewer](https://www.realvnc.com/download/viewer/)
- [Composer](Composer)
- [Brother printer](Brother printer)

---

## Configurations

**Upgrading NPM:**

``` bash
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
npm install -g npm-windows-upgrade
npm-windows-upgrade
```
 > Source: http://stackoverflow.com/questions/18412129/how-do-i-update-node-and-npm-on-windows

**Installing common windows build tools, like python**

``` bash
npm install --global --production windows-build-tools
```


**Setting the command prompt colors:**
 - https://gist.github.com/P4/4245793

(change red and blue to monokai theme)

**Disable Intel HD hotkeys:**
```CTRL+ALT+F12 -> Options and support```
