ensure_conf() {
  CONF=$1
  FILE=$2
  TEXT=$3
  if test -f $FILE; then
    if grep -q $TEXT $FILE; then
      sed -i "/$TEXT/s/.*/$CONF/" $FILE
    else
      if [ "$(tail -c 1 <$FILE)" != $'\n' ]; then
        echo -e "" >>$FILE # adds newline
      fi
      echo "$CONF" >>$FILE
    fi
  else
    echo $CONF >$FILE
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

terra_repo_url="https://terra.fyralabs.com/terra.repo"
terra_repo_id="terra"
if ! dnf repolist | grep -q "^${terra_repo_id}"; then
  dnf config-manager --add-repo ${terra_repo_url}
fi

dnf upgrade -y

dnf copr enable atim/lazygit -y

packages=(
  #######
  # Sys
  #######
  ansible
  python3-ansible-lint
  bat
  cascadiacode-nerd-fonts
  community-mysql-server
  curl
  alacritty
  direnv
  lazygit
  dos2unix
  dunst # Notification daemon
  entr  # Run command on file change
  eza   # ls replacement (exa no longer)
  fd-find
  fzf
  gh
  git
  diff-so-fancy
  meld
  google-chrome-stable
  i3
  ImageMagick
  keepassxc
  nautilus-dropbox
  neovim
  nethogs # Bandwidth monitor
  meld
  python3-pip
  ripcord
  ripgrep
  rofi
  openssh
  terminator
  tmux
  wget
  xclip
  xinput
  xsetroot
  yad # tray icons...
  scrot
  # Office
  gnumeric
  visidata
  xpad
  sc # Spreadsheet calculator
  xournalpp
  # libreoffice
  #######
  # Media
  #######
  pinta # Paint.net like app
  peek  # Gif recorder
  feh   # Image viewer
  libjpeg-turbo-utils
  zulucrypt # Truecrypt replacement
  # kamoso # Way to many deps... use vlc
  simplescreenrecorder
  screenkey
  obs-studio
  inkscape
  gimp
  vlc
  zeal      # Offline documentation
  flameshot # Screenshot tool
  switchdesk
  #######
  # Build tools (C, pyenv, etc)
  #######
  gcc-c++
  gcc
  make
  cmake
  clang
  clang-tools-extra
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

vs_code_repo="/etc/yum.repos.d/vscode.repo"
if [ ! -f "$vs_code_repo" ]; then
  vs_code_gpg="https://packages.microsoft.com/keys/microsoft.asc"
  vs_code_url="https://packages.microsoft.com/yumrepos/vscode"
  rpm --import $vs_code_gpg

  cat >$vs_code_repo <<EOF
[code]
name=Visual Studio Code
baseurl=${vs_code_url}
enabled=1
gpgcheck=1
gpgkey=${vs_code_gpg}
EOF
fi

dnf check-update
dnf install -yq code

# Sublime Text
sublime_repo="https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo"
if ! dnf repolist | grep -q "sublime-text"; then
  rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
  dnf config-manager --add-repo $sublime_repo
fi

dnf install -yq sublime-text

# oh my posh
if ! command -v oh-my-posh >/dev/null 2>&1; then
  curl -s https://ohmyposh.dev/install.sh | bash -s
fi
