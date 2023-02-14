
# flatpaks
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --yes --quiet flathub us.zoom.Zoom
flatpak install --yes --quiet flathub com.jetbrains.IntelliJ-IDEA-Community
flatpak install --yes --quiet flathub com.jgraph.drawio.desktop
flatpak install --yes --quiet flathub com.spotify.Client
# install obs

# z 
# Need to connect to github first
git clone git@github.com:rupa/z.git /opt/z

# pyenv

curl https://pyenv.run | bash

pyenv update
pyenv rehash
LATEST_PYTHON=$(pyenv install --list | grep -E "^\s*[0-9]+\.[0-9]+\.[0-9]+$" | tail -1)
pyenv install $LATEST_PYTHON


# Jabba
export JABBA_VERSION="0.12.0" # do I need this?
curl -sL https://github.com/Jabba-Team/jabba/raw/main/install.sh | bash && . ~/.jabba/jabba.sh

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Espanso (didn't work)
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
./temp/manictime/manictime # does not support root install