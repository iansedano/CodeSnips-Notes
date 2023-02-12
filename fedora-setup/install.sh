ensure_conf () {
  CONF=$1
  FILE=$2
  TEXT=$3
  if test -f $FILE
  then
    if grep -q $TEXT $FILE
    then
      sed -i 's/.*${TEXT}.*/${CONF}'
    else
      echo $CONF >> $FILE 
    fi
  else
    echo $CONF > $FILE 
  fi
}

ensure_conf "max_parallel_downloads=10" /etc/dnf/dnf.configs "max_parallel_downloads"
ensure_conf "fastestmirror=True" /etc/dnf/dnf.configs "fastestmirror" 

dnf upgrade

rpmdomain="https://mirrors.rpmfusion.org/"
freerepo="free/fedora/rpmfusion-free-release-$(rpm -E %fedora)"
nonfreerepo="nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora)"

freeurl="$rpmdomain$freerepo.noarch.rpm"
nonfreeurl="$rpmdomain$nonfreerepo.noarch.rpm"

dnf install -y $freeurl
dnf install -y $nonfreeurl
dnf install -y fedora-workstation-repositories # for chrome
dnf config-manager --set-enabled google-chrome

dnf upgrade

packages=(
  # Sys
  gcc-c++
  ssh
  git
  curl
  wget
  fzf
  google-chrome-stable
  keepassxc
  nautilus-dropbox
  terminator
  ripcord
  rofi
  gh
  # Editors
  neovim
  libreoffice
  # Media
  pinta
  peek
  feh
  kamoso
  simplescreenrecorder
  screenkey
  obs-studio
  inkscape
  gimp
  spotify
  vlc
  zeal
  pyenv
  flameshot
  switchdesk
# gnome-boxes
)

for package in "${packages[@]}"; do
  dnf install -yq $package
done

git clone git@github.com:rupa/z.git ~/tools/z # tools?

# VS Code
CODE_GPG="https://packages.microsoft.com/keys/microsoft.asc"
CODE_URL="https://packages.microsoft.com/yumrepos/vscode"
sudo rpm --import $CODE_GPG

cat > /etc/yum.repos.d/vscode.repo << EOF
[code]
name=Visual Studio Code
baseurl=${CODE_URL}
enabled=1
gpgcheck=1
gpgkey=${CODE_GPG}
EOF

dnf check-update
dnf install code

# Sublime Text
rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
dnf install sublime-text

# Jabba
export JABBA_VERSION="0.12.0" # do I need this?
curl -sL https://github.com/Jabba-Team/jabba/raw/main/install.sh | bash && . ~/.jabba/jabba.sh

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# flatpaks
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub us.zoom.Zoom
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community
flatpak install flathub com.jgraph.drawio.desktop

# Espanso
wget -O /opt/espanso/Espanso.AppImage 'https://github.com/federico-terzi/espanso/releases/download/v2.1.8/Espanso-X11.AppImage'
chmod u+x /opt/espanso/Espanso.AppImage
/opt/espanso/Espanso.AppImage env-path register
espanso service register