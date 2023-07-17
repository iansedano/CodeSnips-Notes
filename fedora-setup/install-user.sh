
# flatpaks
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak install --yes --quiet flathub us.zoom.Zoom
# flatpak install --yes --quiet flathub com.jetbrains.IntelliJ-IDEA-Community
# flatpak install --yes --quiet flathub com.jgraph.drawio.desktop
# flatpak install --yes --quiet flathub com.spotify.Client
# flatpak install --yes --quiet io.dbeaver.DBeaverCommunity

# install obs

# z 
# Need to connect to github first
git clone git@github.com:rupa/z.git /opt/z

# pyenv
curl https://pyenv.run | bash  # may need restart after this...or sourcing .bashrc

pyenv update
pyenv rehash
LATEST_PYTHON=$(pyenv install --list | grep -E "^\s*[0-9]+\.[0-9]+\.[0-9]+$" | tail -1)
pyenv install $LATEST_PYTHON

# direnv
# https://github.com/direnv/direnv/issues/73
touch ~/.direnvrc
echo 'export_alias() {
  local name=$1
  shift
  local alias_dir=$PWD/.direnv/aliases
  local target="$alias_dir/$name"
  local oldpath="$PATH"
  mkdir -p "$alias_dir"
  if ! [[ ":$PATH:" == *":$alias_dir:"* ]]; then
    PATH_add "$alias_dir"
  fi

  echo "#!/usr/bin/env bash" > "$target"
  echo "PATH=\"$oldpath\"" >> "$target"
  echo "$@" >> "$target"
  chmod +x "$target"
}' >> ~/.direnvrc

# Jabba
curl -sL https://github.com/Jabba-Team/jabba/raw/main/install.sh | bash && . ~/.jabba/jabba.sh

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash # needs restart
nvm install --lts

# Espanso (didn't work if not in ~/opt)
ESPANSO_URL='https://github.com/federico-terzi/espanso/releases/download/v2.1.8/Espanso-X11.AppImage'
mkdir ~/opt
wget -O ~/opt/Espanso.AppImage $ESPANSO_URL
chmod u+x ~/opt/Espanso.AppImage
sudo ~/opt/Espanso.AppImage env-path register
espanso service register

# Reaper (check version)
# Downloads script and installs to /opt
mkdir temp
wget https://www.reaper.fm/files/6.x/reaper675_linux_x86_64.tar.xz -P temp
tar xvf temp/reaper675_linux_x86_64.tar.xz -C temp
./temp/reaper_linux_x86_64/install-reaper.sh

# Manictime (check version) (didn't work from command line... maybe just do manually)
# sudo dnf install libX11-devel libappindicator-gtk3 libXScrnSaver gssntlmssp openssl-libs krb5-libs
# wget https://cdn.manictime.com/setup/linux/v1_4_3_0/ManicTime-arch.tar.gz -P temp
# tar xvf temp/ManicTime-arch.tar.gz -C temp
# ./temp/manictime/manictime # does not support root install (casing important)
