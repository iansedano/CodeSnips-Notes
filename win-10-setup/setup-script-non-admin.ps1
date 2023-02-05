# Powershell
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"

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
scoop install espanso
scoop install windirstat

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
scoop install gink

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
Invoke-Expression (
  Invoke-WebRequest https://github.com/Jabba-Team/jabba/raw/main/install.ps1 -UseBasicParsing
).Content

scoop install gradle
scoop install maven


# Editors
scoop install idea
scoop install sublime-text
scoop install notepadplusplus
scoop install vscode
scoop install windows-terminal


# SSH
ssh-keygen -C iansedano@gmail.com -P '""' -f "$HOME/.ssh/id_rsa"
Get-Content $HOME/.ssh/id_rsa.pub | clip

Write-Output "Your SSH key has been copied to the clipboard"
Write-Output "Remember to run scoop install 'extras/vcredist2022' for Windows terminal and espanso if needed"