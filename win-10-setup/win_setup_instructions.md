# Windows Setup Instructions

## First Steps

Do all the Windows updates possible

In the Windows Store, install

- App Installer (which is `winget`)
- Windows Terminal (if not included already)
- Powershell (if you don't mind certain [restrictions](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2#known-limitations))

If search for store not working, ++Ctrl+R++ Run `wsreset.exe`.

```powershell
PS> winget install Microsoft.Powershell
```

## Explorer Settings

Explorer > This PC > File > Change Folder and Search Options > View

- Display full path in the title bar
- Show hidden files, folders and drives
- Hide extensions for known file types

## Choco

install choco:

```powershell
PS> iwr -useb community/chocolatey.org/install.ps1 | iex
PS> choco feature enable -n allowGlobalConfirmation
```

## Essentials

```powershell
PS> choco install chrome winaero-tweaker bulk-crap-uninstaller
PS> choco install git --params="'/NoAutoCrlf /NoShellIntegration'"
PS> ssh-keygen -C iansedano@gmail.com
PS> cat ~/.ssh/id_rsa.pub
```

Copy the output and go to GitHub to link to your account.

Test

```powershell
PS> ssh -T git@github.com
```

## Download Config Repo

```powershell
PS> git@github.com:iansedano/CodeSnips-Notes.git
```

set up conemu and posh prompt

## Bulk software install

```powershell
PS> choco install choco-packages.config
```

Set up everything with keybinding
Do not start Conemu as admin! Or else you won't be able to save settings

log into dropbox and select folders

wait for sync... ~2 hrs?

open keepass

## Powershell Setup

```powershell
PS> Install-Module ZLocation -Scope CurrentUser
PS> Install-Module oh-my-posh -Scope CurrentUser
PS> Install-Module -Name PSFzf # Requires fzf install (choco install fzf)
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

```powershell
PS> pyenv update
PS> pyenv install 3.10.4
```



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



