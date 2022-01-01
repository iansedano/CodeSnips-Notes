Open edge to install chrome.

With windows store update "App Installer" this will let winget work in powershell

```
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