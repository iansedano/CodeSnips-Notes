```shell
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install gcc
sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

function path_remove {
  # Delete path by parts so we can never accidentally remove sub paths
  if [ "$PATH" == "$1" ] ; then PATH="" ; fi
  PATH=${PATH//":$1:"/":"} # delete any instances in the middle
  PATH=${PATH/#"$1:"/} # delete any instance at the beginning
  PATH=${PATH/%":$1"/} # delete any instance in the at the end
}

path_remove /mnt/c/Users/Philistine/.pyenv/pyenv-win/shims
path_remove /mnt/c/Users/Philistine/.pyenv/pyenv-win/bin


curl https://pyenv.run | bash
```

add
```shell
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
```

to profile

```shell
exec $SHELL
pyenv update
```