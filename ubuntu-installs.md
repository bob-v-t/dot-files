*The below is not a completely executable script. Instead it just contains most of the things I installed after a clean install of ubuntu-gnome.*

``` bash
# add node repo
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

# Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# add atom repo
sudo add-apt-repository ppa:webupd8team/atom

# Add chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get update

# Install some dev tools & chrome browser
sudo apt-get install git vim php5 google-chrome-stable nodejs atom -y

# Install Skype
sudo apt-get install skype spotify-client

# Fonts
sudo apt-get install ttf-mscorefonts-installer fonts-droid fonts-inconsolata -y

# Install `sensors` package (run: sensor-detect / sensors)
sudo apt-get install lm-sensors

# Create the projects folder
mkdir ~/projects

# Install grunt & gulp globally
sudo npm i -g gulp grunt grunt-cli

# Install Fiddler
sudo apt-get install mono-complete
# Download and extract this zip in your home dir: http://ericlawrence.com/dl/MonoFiddler-v4484.zip
# And run like so: `mono fiddler/Fiddler.exe`

# Install FTP manager
sudo apt-get install filezilla

# Install caffeine to allow movies in browser to run without screensaver interference:
sudo apt-get install caffeine
```
---

``` bash
# Install and configure GRS:
sudo apt-get install python-software-properties software-properties-common
cd /tmp
git clone https://github.com/celogeek/git-redmine-suite.git
cd git-redmine-suite
./install.sh
git redmine setup global weboramang AUTH_KEY

# Edit avahi daemon to accept `.weborama.local` domain
#  * [server]
#  * host-name=YOURPC
#  * domain-name=.weborama.local

sudo vi /etc/avahi/avahi-daemon.conf
sudo service avahi-daemon restart
```

# Custom TODO's:

 * copy `projects.cson` and `config.cson` files for atom
 * Create SSH config
 * Config GIT
 * Edit bash (apply prompt.sh, add GRS to path and set git shortcuts)
 * Open tweak tool and set fonts to DejaVu Sans and Ubuntu Mono
 * Super+L is lock; Settings -> Keyboard -> Shortcuts -> System
 * Super+E is shortcut to open `Home folder` (nautilus)
 * Connect to samba servers and bookmark: DC01, Moe
 * Configure the right FTP and VPN access
 * Configure GRUB in case of multiboot
 * CPU monitor (indicator-multiload)
 * Change alt-tab behavior from switch-applications to switch-windows: http://superuser.com/questions/394376/how-to-prevent-gnome-shells-alttab-from-grouping-windows-from-similar-apps
 * Set to false using dconf editor: org.gnome.shell.workspaces-only-on-primary
 * Gnome extension: TopIcons
 * Install gnome extension for redmine (https://extensions.gnome.org/extension/790/redmine-issues/)
 * For FF: Install `User Agent Switcher` plugin and load XML from here: http://techpatterns.com/downloads/firefox/useragentswitcher.xml
 * Setting up VPN is a pain:
   - Log in here to gain access to the certificates: https://95.97.77.131/wgcgi.cgi?action=sslvpn_logon&style=fw_logon.xsl&fw_logon_type=failed&fw_errstr=504
   - Install openvpn and the gnome helper.
   - Fix the .ovpn file according to the answer from this link: http://askubuntu.com/questions/450493/openvpn-cant-import-configurations-on-new-14-04-installation
   - Another good link: http://serverfault.com/questions/103926/is-there-a-real-way-to-connect-to-watchguards-vpn-from-linux
 * Problem: When working from home (over VPN) *.weborama.local addresses aren't resolved.
   - Solution: comment out `dns=dnsmasq` in `/etc/NetworkManager/NetworkManager.conf`; http://askubuntu.com/questions/320921/having-dns-issues-when-connected-to-a-vpn-in-ubuntu-13-04
 * TODO: Install temperature monitor


# Fixes for Asus ZenBook UX301LA:

 * Brightness buttons in grub: `GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_osi="`.
   http://askubuntu.com/questions/471847/brightness-fn-key-shortcut-doesnt-work-on-asus-laptop
 * Set of misc other settings:
   https://help.ubuntu.com/community/AsusZenbook
 * Intel driver. https://01.org/linuxgraphics/downloads/intel-graphics-installer-linux-1.2.1
 * Install xfce4-terminal to replace gnome one
 * TODO: Having problem with hibernation.
 * TODO: Optimize SSD (if needed) to increase SSD lifetime: http://www.howtogeek.com/62761/how-to-tweak-your-ssd-in-ubuntu-for-better-performance/

*Nice mono fonts:* DejaVu Sans Mono, Liberation Mono, Hack, Ubuntu Mono, Droid Sans, Inconsolata.
Fonts I haven't tried yet: Source Code Pro, Fira Mono, Bitstream Vera Sans Mono, Meslo.
(http://www.slant.co/topics/67/~programming-fonts)
