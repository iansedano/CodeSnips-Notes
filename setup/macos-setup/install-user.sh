#!/bin/bash

# TODO:
# sc # (spreadsheet calculator)
# python3-ansible-lint
# community-mysql-server

formulae=(
  # ==========
  # CLI Tools
  # ==========
  bat                # cat replacement
  curl               # download
  lazygit            # git tui
  dos2unix           # Convert line endings
  entr               # Run command on file change
  eza                # ls replacement (exa no longer)
  fd                 # find replacement
  fzf                # fuzzy finder
  git                # version control
  diff-so-fancy      # nicer diff view
  ripgrep            # grep replacement
  openssh            # ssh
  tmux               # terminal multiplexer
  wget               # download
  mc                 # Midnight commander
  neovim             # Text editor
  nethogs            # Bandwidth monitor
  direnv             # Environment manager
  zoxide             # z autojump replacement
  qpdf               # PDF manipulation
  gh                 # Github CLI
  imagemagick        # Image manipulation
  libjpeg-turbo      # JPEG manipulation
  pipx               # Python installer for standalone execs
  oh-my-posh         # Prompt theme engine
  ansible            # Install automation
  saulpw/vs/visidata # cli spreadsheet
  gnumeric           # Lightweight, fast spreadsheet app

  pyenv
  openssl
  sqlite3
  xz
  zlib
  tcl-tk@8

  jabba
  nvm
)

casks=(
  dropbox               # File sync and backup
  visual-studio-code    # IDE
  sublime-text          # Fast, simple IDE
  alacritty             # Terminal emulator
  font-cascadia-code-nf # Nerd font for terminal
  xournal++             # Notetaking, good for annotating PDFs
  dehesselle-meld       # Diff GUI tool
  keepassxc             # Password manager GUI
  pinta                 # Paint.net like app
  #  ripcord                 # Light and fast app for Discord and Slack
  inkscape # Open source vector image app
  gimp     # Open source Photoshop replacement
  vlc      # Video player
  obs      # OSS streaming, screen recording
  drawio   # Diagramming
  spotify  # Music player
  espanso  # Text expander
  gitahead # Git client
)

exec &> >(tee -a install-user.log)

for formula in "${formulae[@]}"; do
  echo "==== Attempting to install $formula formula ===="
  brew install $formula
done

for cask in "${casks[@]}"; do
  echo "==== Attempting to install $cask cask ===="
  brew install --cask $cask
done

pyenv update
pyenv rehash
LATEST_PYTHON=$(pyenv install --list | grep -E "^\s*[0-9]+\.[0-9]+\.[0-9]+$" | tail -1)
pyenv install $LATEST_PYTHON

# direnv
# https://github.com/direnv/direnv/issues/73
if [ ! -e ~/.direnvrc ] || [ ! -s ~/.direnvrc ]; then
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
    }' >>~/.direnvrc
fi

nvm install --lts
