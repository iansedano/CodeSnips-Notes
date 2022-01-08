First steps:

```bash
dnf upgrade
```

Check ssh `ssh` or `sudo dnf install ssh`
Install git `sudo dnf install git`
Install `curl vim terminator`

Make ssh keys:

```bash
ssh-keygen -C iansedano@gmail.com
cat ~/.ssh/id_rsa.pub
# Add key to GH account
ssh -T git@github.com # check connection
git config --global user.email "iansedano@gmail.com"
git config --global user.name "Ian"
```

from home

```bash
mkdir dev
git clone git@github.com:iansedano/CodeSnips-Notes.git
```

If want to set hostname and timezone:

```bash
hostnamectl set-hostname $new-hostname
timedatectl list-timezones
timedatectl set-timezone Europe/Madrid
```

`reboot`

```
mkdir tools
cd tools
git clone git@github.com:rupa/z.git
```

add `. ~/tools/z/z.sh` to .bashrc

### Add repos to RPM

```bash
rpmdomain="https://mirrors.rpmfusion.org/"
freerepo="free/fedora/rpmfusion-free-release-$(rpm -E %fedora)"
nonfreerepo="nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora)"

freeurl="$rpmdomain$freerepo.noarch.rpm"
nonfreeurl="$rpmdomain$nonfreerepo.noarch.rpm"

sudo dnf install -y $freeurl
sudo dnf install -y $nonfreeurl

sudo dnf install -y fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome

dnf upgrade
```

install:

```
google-chrome-stable
ripcord
keepassx.x86_64
nautilus-dropbox
```

run google chrome and set as default
run dropbox from start menu and sign in

Go to /etc/dnf/dnf.conf and add
max_parallel_downloads=10
fastestmirror=True
  

```
reboot
```

https://code.visualstudio.com/docs/setup/linux
https://www.sublimetext.com/docs/linux_repositories.html
https://github.com/cli/cli/blob/trunk/docs/install_linux.md

```
sudo dnf upgrade
```

Install:

```bash
gh # then login
sublime-text
code
featherpad
pinta
xclip
ksnip
gcc-c++.x86_64
```

For waiting for DB to download

```bash
while true; do dropbox status; sleep 10; done
# Ctrl + C to exit
```

vscode settings

to edit the openbox theme (for example for window border handle)

```
usr/share/themes/...
```

Keyboard Shortcuts

```
~/.config/openbox/lxde-rc.xml
```


For touchpad tap to click:
  
https://wiki.archlinux.org/index.php/Libinput#Touchpad_configuration

create:  

    /etc/X11/xorg.conf.d/30-touchpad.conf  

content:  

    Section "InputClass"   
      Identifier "touchpad"  
      Driver "libinput"  
      MatchIsTouchpad "on"  
      Option "Tapping" "on"  
    EndSection

and finally  

    reboot


git@github.com:rupa/z.git
git@github.com:iansedano/CodeSnips-Notes.git


create symbolic links (from obsolete linux configs repo)
```
ln -sf source target
```
link symbolic force(replace target) source(file in repo) target(home folder)


edit `/etc/dnf/dnf.conf` and add `fastestmirror=true` `max_parallel_downloads=10`


sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh

