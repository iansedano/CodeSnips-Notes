##Ubuntu and bash notes getting set up

`sudo apt update && sudo apt upgrade`

for media (not needed for WSL?)

`sudo apt-get install ubuntu-restricted-extras`


### apt

Ubuntu is derived from Debian hence the .deb packages to install

APT (Advanced Package Tool) is the command line tool to interact with the system. There are dpkg commands to manage it, but apt is more user friendly.

`apt-get` is for installing, upgrading and cleaning
`apt-chache` is good for finding new packages

#### apt-get

apt-get works off a database of available packages, so you need to update it when you install fresh system  
`sudo apt-get update`  
while it runs, there are three types of lines  
`hit` no change in package version  
`ign` package being ignored (not an error)  
`get` there is a new version of package available  

Once you have updated the package database, you can upgrade all the installed packages on your system. 
or to update only a specific program  
`sudo apt-get upgrade <package-name>`  obedient - doesn't install or remove packages on its own.  
`sudo apt-get dist-upgrade` proactive - e.g. installs updates for dependencies, and deletes dependencies that are no longer needed (but may be needed for other packages)  

*update* on its own may just updates the database, *upgrade* actually installs it, hence the command
`sudo apt-get update && sudo apt-get upgrade -y`  - what does y mean??

#### apt-cache

to search for library  
`apt-cache search <search term>`

to get more info about specific library

`apt-cache showpkg <package name>`

#### installing packages

`sudo apt-get install <package name>`

you can install multiple packages
`sudo apt-get install <pkg 1> <pkg2> <pkg3>`

#### removing packages
`sudo apt-get remove <package_name>` doesnt touch config files
`sudo apt-get purge <package_name>` removes config files and anything else related to package  

`sudo apt-get clean`  cleans local repository of retrieved package files
`sudo apt-get autoclean` only removes packages if newer version installed
`sudo apt-get autoremove` removes packages that were installed to satisfy dependencies of other packages and are now no longer needed

