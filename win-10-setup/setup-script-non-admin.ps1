Invoke-RestMethod get.scoop.sh | Invoke-Expression
scoop bucket add supabase https://github.com/supabase/scoop-bucket.git
scoop bucket add nerd-fonts
scoop bucket add extras

scoop install less cowsay bat
scoop install supabase
scoop install CascadiaCode-NF
scoop install gsudo
scoop install gh
scoop install pyenv
scoop install nvm
scoop install fzf
scoop install imagemagick
scoop install zoom
scoop install make
scoop install which
scoop install aws-sam-cli
scoop install aws

scoop install extras/deluge

pyenv update
pyenv install --quiet 3.10.5 3.9.12

nvm install lts

