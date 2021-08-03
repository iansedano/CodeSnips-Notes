# Setting up WSL windows 10

##Enable WSL
Search for windows features, enable Windows Subsystem for Linux
**ENABLE WSL 2 before installing UBUNTU**

Download and Install Ubuntu for Windows from Microsoft store.

**DO NOT MODIFY LINUX FILES FROM WINDOWS!!**  
Install Visual Studio **Code** and get the connection to WSL to do so, or edit them directly from the WSL bash.

##Terminal replacement - ConEmu
ConEmu Settings, Startup, Specified names task {Bash::bash}

##MobaXterm - to run Graphical Linux Apps
It can run an X server session
Download, install free version
always run MobaXterm before, and in top righthand corener should say X-server running, if its not runnin click the button.

###Set the DISPLAY in WSL
Need to config WSL to send display to windows.
run `nano ~/.bashrc` then add this to bottom of file `export DISPLAY=:0`  to apply `source ~/.bashrc`

The above `source ~/.bashrc` command should be added to the profile so that it runs everytime you start!

### Setting Clipboard
MobaXterm Settings > X11 > clipboard disable copy on select.

to access the environment via explorer

	\\wsl$\

**DO NOT MODIFY LINUX FILES FROM WINDOWS!!**



### Upgrading to WSL2
`[ $(grep -oE 'gcc version ([0-9]+)' /proc/version | awk '{print $3}') -gt 5 ] && \ echo "WSL2"|| echo "WSL1"` only seems to work in WSL1

in POWERSHELL
`wsl --list --running`

`wsl -l -v` if this doesnt show then you have WSL1

Need to go to settings in windows and updates, make sure you have proper build i.e 2004, build not year. Accesible via the windows insider program.

Will require installing windows updates.

after which
`wsl -l -v` should work
to convert
`wsl --set-version Ubuntu 2`

but you need to go into regedit
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\Path. So by running regedit and filing this entery and putting quotations around anything with non compatible paths, including parenthesis or spaces ... and rebooting the system, the problem should be gone.