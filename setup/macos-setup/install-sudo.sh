#/bin/bash

exec &> >(tee -a install-sudo.log)

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


