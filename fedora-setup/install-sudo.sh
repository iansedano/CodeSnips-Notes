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

# TODO need to test this line
exec &> >(tee -a install-sudo.log)

ensure_conf "max_parallel_downloads=10" /etc/dnf/dnf.configs "max_parallel_downloads"
ensure_conf "fastestmirror=True" /etc/dnf/dnf.configs "fastestmirror" 

dnf upgrade -y

rpmdomain="https://mirrors.rpmfusion.org/"
freerepo="free/fedora/rpmfusion-free-release-$(rpm -E %fedora)"
nonfreerepo="nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora)"

freeurl="$rpmdomain$freerepo.noarch.rpm"
nonfreeurl="$rpmdomain$nonfreerepo.noarch.rpm"

dnf install -y $freeurl
dnf install -y $nonfreeurl
dnf install -y fedora-workstation-repositories # for chrome
dnf config-manager --set-enabled google-chrome

dnf config-manager --add-repo https://terra.fyralabs.com/terra.repo


dnf upgrade -y

packages=(
  # Sys
  gcc-c++
  fd-find
  ripgrep
  xclip
  # community-mysql
  community-mysql-server
  # ssh # not needed
  git
  curl
  wget
  direnv
  fzf
  google-chrome-stable
  keepassxc
  nautilus-dropbox
  terminator
  ripcord
  rofi
  gh
  bat
  dos2unix
  # Editors
  neovim
  libreoffice
  cascadiacode-nerd-fonts
  # Media
  pinta
  peek
  feh
  libjpeg-turbo-utils
  zulucrypt
  # kamoso # Way to many deps... use vlc
  simplescreenrecorder
  screenkey
  # 'obs-studio --alloweraising' # install with flatpak
  inkscape
  gimp
  vlc
  zeal
  flameshot
  switchdesk
  # pyenv build deps
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

for package in "${packages[@]}"; do
  echo "==== Attempting to install $package ===="
  dnf install -yq $package
done

# VS Code
CODE_GPG="https://packages.microsoft.com/keys/microsoft.asc"
CODE_URL="https://packages.microsoft.com/yumrepos/vscode"
rpm --import $CODE_GPG

cat > /etc/yum.repos.d/vscode.repo << EOF
[code]
name=Visual Studio Code
baseurl=${CODE_URL}
enabled=1
gpgcheck=1
gpgkey=${CODE_GPG}
EOF

dnf check-update
dnf install -yq code

# Sublime Text
rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
dnf install -yq sublime-text

# oh my posh
curl -s https://ohmyposh.dev/install.sh | bash -s
