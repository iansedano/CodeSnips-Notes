Open edge to install chrome.

With windows store update "App Installer" this will let winget work in powershell

https://github.com/jdhitsolutions/PSReleaseTools

```
Install-Module PSReleaseTools -Force
Install-Powershell
```

```
Maybe use PSReleaseTools instead
winget install Microsoft.Powershell
```

install choco:

iwr -useb chocolatey.org/install.ps1 | iex
choco feature enable -n allowGlobalConfirmation

run the following command
$env:PATH =$env:PATH+";."

and then run essential_programs_install.ps1...

```
$chocolateyAppList = " `
				dropbox, `
				7zip, `
				everything, `
				keepass, `
				fsviewer, `
				fsresizer.install, `
				greenshot, `
				veracrypt, `
				vlc, `
				autohotkey, `
				vscode, `
				pyenv-win, `
				git, `
				gh, `
				fzf, `
				clink, `
				conemu, `
				foobar2000, `
				obs-studio, `
				paint.net, `
				notepadplusplus, `
				sublimetext4, `
				powertoys, `
				ripcord,
				processhacker,
				licecap,
				drawio
				"


if ([string]::IsNullOrWhiteSpace($chocolateyAppList) -eq $false){   
    Write-Host "Chocolatey Apps Specified"  
    
    $appsToInstall = $chocolateyAppList -split "," | foreach { "$($_.Trim())" }

    foreach ($app in $appsToInstall)
    {
        Write-Host "Installing $app"
        & choco install $app /y | Write-Output
    }
}


$extraPrograms = " `
				stardock-fences, `
				krita, `
				inkscape, `
				scribus, `
				manictime, `
				ffmpeg, `
				reaper, `
				reaper-sws-extension, `
				freefilesync, `
				docfetcher, `
				freecad, `
				shotcut, `
				avidemux, `
				virtualdub, `
				putty
				"
```


Do not start Conemu as admin! Or else you won't be able to save settings

log into dropbox and select folders

wait for sync... ~2 hrs?

open keepass
set up everything
set up conemu and posh prompt
```
Install-Module ZLocation -Scope CurrentUser

Install-Module oh-my-posh -Scope CurrentUser

# requires install of fzf via choco...
Install-Module -Name PSFzf
```

set up startup:

- dropbox sys
- keepass
- autohotkey shortcuts
- virtual desktop enhancer

then make dev directory at root
mkdir c:\dev
cd c:\dev
gh auth login
gh repo clone CodeSnips-Notes




to get powershell profile

```ps
$PROFILE
```

Move the profile backup from dropbox to that location

Do not start Conemu as admin! Or else you won't be able to save settings

Install font from CodeSnips-Notes

Import settings conemu

Set up settings sync vscode


pyenv-win

Start > Manage App Execution Aliases > Disable Python related ones

pyenv update
pyenv install 3.10.0




(From old file)

#Programs for fresh install

### Updated 20200607

###FIRST THINGS FIRST

Install Windows from Recovery Pen, that way, no bloatware.
Need Windows Key and Office Key - see keepass
For cavetop see keepass cavetop windows key

###HARDWARE
* BIOS
	* Heat warnings
	* Fan warnings
	* Fans
* Mouse
* Keyboard
* USB Hub
* Graphics Card
* Audio Driver
* Wacom Tablet
* Winaro Tweaker! - clean up windows (don't turn off updates and windows store for WSL)
	
### PROGRAMS ON DROPBOX to copy to USB Drive
* 	RevoUninstaller
* 	System Monitoring
* 		CPU-Z
* 		Open Hardware Monitor
* 		Autoruns
* 	Keepass
* 	Virtual Desktop Enhancements
	
Maybe NINITE to install
	
### ESSENTIALS
* Chrome
* 	Plugins
* 		Session Box (stopped using)
* 		Tabs
* Everything
* 7z
* Fast Stone Photo Viewer
* Fast Stone Photo resizer
* Greenshot
* Fences
* VLC
* Autohotkey
* Deluge
* QTTab Bar (stopped using tabs when moved to dual screen)
* Icon Restorer (stopped using when strated with fences.)
* Krita
* Gimp
* Inkscape
* Glass2k - transparency

* Abricotine (md editor)
* Scribus

### CODING
* Sublime
* 	package manager etc
* 	packagesync - sync in coding library
* 	SublimeREPL
* 		Ctrl+Shift+P -> PC: Add Repository
* 		Add next: https://github.com/wuub/SublimeREPL.git
* 		Ctrl+Shift+P -> PC: Advanced Install Package -> SublimeREPL
* 	javascriptlint - jsl (dropbox)
* 	pycodestyle (pip install)
* 
* Python (make sure its 64bit!!)
* 	virtualenv
* 	virtualenvwrapper-win
* 	pylinter check sublime
* Node.js
* mySQL
* Text Editor Anywhere (for editing VBA projects)
* git
* git-XL
* Filezilla?
* 
* CMD
* 	Clink
* 	Autojump
* 	conEMU ?
* 
* WSL (WSL2)
* 	Autojump
* 	python > virtualenvwrapper
* 	virtualenvwrapper
* 	pyspread (needs Moba XTerm)
* 	rbenv > ruby > bundler > jekyll
* 	picoc (c interpreter)


### PRODUCTIVITY
* Office - try to unselect Skype and Onedrive especially
* Skype can use online version
* Dropbox (takes a few days to sync)
* Google Drive Sync
* 	ian.currie.bcn
* 	iansedano
* 	PSI
* PDFSam
* PDF X-Change
* ManicTime
* 	Set up Database in Dropbox?
* Dia Diagram - on dropbox
* gridmove
* Thunderbird

	
### MUSIC
* Reaper
	* SWS extensions
	* Reapack
	* Config from Dropbox
	* Track Templates from Dropbox
	* Set up FreeFileSync to Dropbox
	* Configure VST paths
* MediaSweeper
* Ableton
* VSTs
	* Guitar Rig (Native Access)
	* Scuffham
	* Addictive Drums 2
	* PianoTeq
	* VB-III
	* ReaLearn
	* Playtime (have liscence but never use)
	* Hybrid Reverb
	* GS-201 echo
	* Spitfire Audio (labs etc)

* Foobar 2000
	* plugins
		* Soundtouch
		* Effects
		* Equalizer
		* Foo Seek
* Splice
	* RX-7
* Musescore
* Zoom Guitar Lab
* Yamaha THR Editor
* Bome Midi Translator
* Resonic (sample manager)

	
### UTILITY
* FreeFileSync
* OBS Studio
* TeamViewer
* Youtube DLG Version 0.4
* DocFetcher

* ExtractNow (batch unzipper)

* FreeCad
	

### VIDEO

* Shotcut
* Avidemux
* Virtualdub
* EyeFrame Converter
* K-lite codecs


Virtual Clone Drive
Paint.NET
JPEGtoPDF.exe

Calibre


http://www.nirsoft.net for free utilities



