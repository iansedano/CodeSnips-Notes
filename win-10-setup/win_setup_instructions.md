# Windows Setup Instructions

## Notes

```powershell
PS> # to save content of a page to a file
PS> iwr -useb bit.ly/3NEMheH | Add-Content test.txt
PS> # to run content of an online script
PS> iwr -useb bit.ly/3NEMheH | iex

iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"


$PSVersionTable
powershell -version 2.0

$Env:HOMEPATH
$Env:HOMEDRIVE

Create powershell profile...
```

## First Steps

Do all the Windows updates possible

In the Windows Store, install

- App Installer (which is `winget`) (Maybe not even necessary....)
- Windows Terminal (if not included already)

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
PS> iwr -useb community.chocolatey.org/install.ps1 | iex
PS> choco feature enable -n allowGlobalConfirmation
```

## Get Scoop

```powershell
PS> irm get.scoop.sh | iex
PS> scoop-apps.ps1
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

## Download Config Repo and Setup Powershell

```powershell
PS> git@github.com:iansedano/CodeSnips-Notes.git
```

set up conemu and posh prompt

```powershell
PS> Install-Module ZLocation -Scope CurrentUser
PS> Install-Module oh-my-posh -Scope CurrentUser
PS> Install-Module -Name PSFzf # Requires fzf install (choco install fzf)
PS> Install-Module posh-git -Scope CurrentUser -Force
```

## Bulk software install

```powershell
PS> choco install choco-packages.config
```

Set up everything with keybinding
Do not start Conemu as admin! Or else you won't be able to save settings

log into dropbox and select folders

wait for sync... ~2 hrs?

open keepass


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


Start > Manage App Execution Aliases > Disable Python related ones

```powershell
PS> pyenv update
PS> pyenv install 3.10.4 3.9.12
```


## Old Notes

### HARDWARE

* Graphics Card
* Audio Driver
* Wacom Tablet

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
