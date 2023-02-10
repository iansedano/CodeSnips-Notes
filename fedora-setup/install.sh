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
ensure_conf "fastestmirror=True" /etc/dnf/dnf.configs "max_parallel_downloads" 

dnf upgrade
dnf install -y ssh
dnf install -y git
dnf install -y curl


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

dnf upgrade

dnf install -y vim
dnf install -y terminator # ??
dnf install -y gh # then login

dnf install -y sublime-text
dnf install -y code
dnf install -y pinta
dnf install -y ksnip
dnf install -y gcc-c++.x86_64
dnf install -y peek
dnf install -y feh
dnf install -y neovim
dnf install -y gnome-boxes
dnf install -y kamoso
dnf install -y simplescreenrecorder
dnf install -y obs-studio
dnf install -y screenkey
dnf install -y boxes # ?


dnf install -y libreoffice
dnf install -y obs-studio
dnf install -y inkscape
dnf install -y gimp
dnf install -y drawio
dnf install -y zoom
dnf install -y gitahead
dnf install -y intellij idea
dnf install -y rofi
dnf install -y spotify

dnf install -y espanso
dnf install -y vlc
dnf install -y zeal
dnf install -y nvm
dnf install -y jabba
dnf install -y pyenv
dnf install -y docker
dnf install -y flameshot
dnf install -y switchdesk


# manic time
dnf install -y autoenv # ?

packages=(
  package1
  package2
  package3
  package4
)