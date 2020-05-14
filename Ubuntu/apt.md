#apt

run first
`sudo apt update && sudo apt upgrade`

Ubuntu is derived from Debian hence the .deb packages to install

APT (Advanced Package Tool) is the command line tool to interact with the system. There are dpkg commands to manage it, but apt is more user friendly.

`apt-get` is for installing, upgrading and cleaning
`apt-chache` is good for finding new packages

### apt-get

update package database `sudo apt-get update` 

update only a specific program  `sudo apt-get upgrade <package-name>`  obedient - doesn't install or remove packages on its own. 

`sudo apt-get dist-upgrade` proactive - e.g. installs updates for dependencies, and deletes dependencies that are no longer needed (but may be needed for other packages)  

*update* on its own may just updates the database, *upgrade* actually installs it, hence the command
`sudo apt-get update && sudo apt-get upgrade -y`  -y means 'yes to everything'

### apt-cache

to search for library  `apt-cache search <search term>`
to get more info about specific library`apt-cache showpkg <package name>`

#### installing packages

`sudo apt-get install <package name>`

you can install multiple packages
`sudo apt-get install <pkg 1> <pkg2> <pkg3>`

### removing packages
`sudo apt-get remove <package_name>` doesnt touch config files
`sudo apt-get purge <package_name>` removes config files and anything else related to package  

`sudo apt-get clean`  cleans local repository of retrieved package files
`sudo apt-get autoclean` only removes packages if newer version installed
`sudo apt-get autoremove` removes packages that were installed to satisfy dependencies of other packages and are now no longer needed

`sudo apt-get purge <packages>`  any configuration files are deleted too


`apt list --installed` to see all installed packages

## Issues encountered

`The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8C718D3B5072E1F5`

try
`sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8C718D3B5072E1F5`

then got
```
gpg: connecting dirmngr at '/tmp/apt-key-gpghome.Zbq6H21N8l/S.dirmngr' failed: IPC connect call failed
gpg: keyserver receive failed: No dirmngr
```

Try
`sudo apt-get install dirmngr`
`sudo apt-get install gpg`

Still not working

https://github.com/microsoft/WSL/issues/3286#issuecomment-402594992

Try
`curl -sL "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x8C718D3B5072E1F5" | sudo apt-key add`

`gpg: can't connect to the agent: IPC connect call failed`

DAMN! Looks like this is a common WSL bug

after installing WSL 2 (see WSL and setting up ubuntu notes)
`sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8C718D3B5072E1F5`
worked!



