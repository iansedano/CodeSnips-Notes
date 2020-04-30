Enable WSL

Search for windows features, enable Windows Subsystem for Linux
Download and Install Ubuntu for Windows from Microsoft store.
--
Terminal replacement - ConEmu
ConEmu Settings, Startup, Specified names task {Bash::bash}

---
##MobaXterm - to run Graphical Linux Apps
It can run an X server session

Download, install free version

always run MobaXterm before, and in top righthand corener should say X-server running, if its not runnin click the button.

Set the DISPLAY in WSL

Need to config WSL to send display to windows.
run

	nano ~/.bashrc
then add this to bottom of file

	export DISPLAY=:0
to apply

	source ~/.bashrc

The above `source ~/.bashrc` command should be added to the profile so that it runs everytime you start!

Setting Clipboard
MobaXterm Settings > X11 > clipboard disable copy on select.


VScode inside of WSL

if using Ubuntu

	# Download the Linux .deb package from: https://code.visualstudio.com/download
	sudo apt-get install libgtk2.0-0 libxss1 libasound2
	sudo dpkg -i <the_file_you_just_downloaded>.deb
	sudo apt-get install -f
	
once installed you can run 
	code . 
from WSL and it should run

SUBLIME

in ubuntu

	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install libgtk2.0
	sudo apt-get install sublime-text

once done run
	subl .
	
and should work!



to access the environment via explorer

	\\wsl$\

