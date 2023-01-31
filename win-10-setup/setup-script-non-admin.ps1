# Powershell
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -Quiet"

Invoke-RestMethod get.scoop.sh | Invoke-Expression
scoop install git

scoop bucket add nerd-fonts
scoop bucket add extras
scoop bucket add sysinternals
scoop bucket add supabase https://github.com/supabase/scoop-bucket.git

# CLI Tools
scoop install less
scoop install gsudo
scoop install cowsay
scoop install bat
scoop install ffmpeg
scoop install supabase
scoop install imagemagick
scoop install aws-sam-cli
scoop install aws
scoop install oh-my-posh
scoop install which
scoop install make
scoop install fzf
scoop install gh

# Fonts
scoop install CascadiaCode-NF
scoop install RobotoMono-NF

# System
scoop install 7zip
scoop install vlc
scoop install everything
scoop install keepass
scoop install autohotkey
scoop install foobar2000
scoop install autoruns
scoop install greenshot
scoop install processhacker
scoop install bulk-crap-uninstaller

# Apps
scoop install googlechrome
scoop install zoom
scoop install manictime
scoop install gitahead
scoop install zeal
scoop install zoom
scoop install winaero-tweaker
scoop install fsresizer
scoop install paint.net
scoop install filezilla
scoop install ripcord

# Media
scoop install deluge
scoop install sharex
scoop install draw.io
scoop install licecap
scoop install obs-studio
scoop install krita
scoop install inkscape
scoop install scribus
scoop install reaper
scoop install freecad
scoop install avidemux

# Editors
scoop install idea
scoop install sublime-text
scoop install notepadplusplus
scoop install vscode
scoop install windows-terminal

# Dev
scoop install docker
scoop install mysql
scoop install mysql-workbench

# Python
scoop install pyenv

pyenv update
pyenv install --quiet 3.11.1

# Node
scoop install nvm

nvm install lts

# Java
scoop install jabba





