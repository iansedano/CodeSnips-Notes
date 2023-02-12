ensure_conf () {
  CONF=$1
  FILE=$2
  TEXT=$3
  if test -f $FILE; then
    if grep -q $TEXT $FILE; then
      sed -i "/$TEXT/s/.*/$CONF/" $FILE
    else
      if [ "$(tail -c 1 <$FILE)" != $'\n' ]; then
        echo -e "" >> $FILE # adds newline
      fi
      echo "$CONF" >> $FILE
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
  flameshot
  switchdesk
# gnome-boxes
)

for package in "${packages[@]}"; do
  dnf install -yq $package
done

# z
git clone git@github.com:rupa/z.git /opt/z

# pyenv
pyenv_packages=(
  pyenv
  make
  gcc
  zlib-devel
  bzip2
  bzip2-devel
  readline-devel
  sqlite
  sqlite-devel
  openssl-devel
  tk-devel
  libffi-devel
  xz-devel
  libuuid-devel
  gdbm-devel
  libnsl2-devel
)

for package in "${pyenv_packages[@]}"; do
  dnf install -yq $package
done

pyenv update
pyenv rehash
LATEST_PYTHON=$(pyenv install --list | grep -E "^\s*[0-9]+\.[0-9]+\.[0-9]+$" | tail -1)
pyenv install $LATEST_PYTHON


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
ESPANSO_URL='https://github.com/federico-terzi/espanso/releases/download/v2.1.8/Espanso-X11.AppImage'
wget -O /opt/espanso/Espanso.AppImage $ESPANSO_URL
chmod u+x /opt/espanso/Espanso.AppImage
/opt/espanso/Espanso.AppImage env-path register
espanso service register

# Reaper (check version)
# Downloads script and installs to /opt
mkdir temp
wget https://www.reaper.fm/files/6.x/reaper675_linux_x86_64.tar.xz -P temp
tar xvf temp/reaper675_linux_x86_64.tar.xz -C temp
./temp/reaper_linux_x86_64/install-reaper.sh

# Manictime (check version)
wget https://cdn.manictime.com/setup/linux/v1_4_3_0/ManicTime-arch.tar.gz -P temp
tar xvf temp/ManicTime-arch.tar.gz -C temp
./temp/manictime/manictime
