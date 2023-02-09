
dnf upgrade
dnf install -y ssh
dnf install -y git
dnf install -y curl
dnf install -y vim
dnf install -y terminator # ??

git clone git@github.com:rupa/z.git ~/tools/z # tools?

rpmdomain="https://mirrors.rpmfusion.org/"
freerepo="free/fedora/rpmfusion-free-release-$(rpm -E %fedora)"
nonfreerepo="nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora)"

freeurl="$rpmdomain$freerepo.noarch.rpm"
nonfreeurl="$rpmdomain$nonfreerepo.noarch.rpm"

dnf install -y $freeurl
dnf install -y $nonfreeurl
dnf install -y fedora-workstation-repositories
dnf config-manager --set-enabled google-chrome

dnf upgrade

dnf install -y google-chrome-stable
dnf install -y ripcord
dnf install -y keepassx.x86_64
dnf install -y nautilus-dropbox


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
pinta
ksnip
gcc-c++.x86_64
peek
feh
neovim
gnome-boxes
kamoso
simplescreenrecorder
obs-studio
screenkey
boxes
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

## Extra Programs

```shell
sudo dnf install -y libreoffice obs-studio inkscape gimp 

```


drawio
zoom
gitahead
intellij idea
rofi
spotify
manic time
espanso
vlc
zeal
nvm
jabba
autoenv?
pyenv
docker
flameshot
switchdesk