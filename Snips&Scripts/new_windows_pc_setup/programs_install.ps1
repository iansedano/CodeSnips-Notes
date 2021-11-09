$chocolateyAppList = " `
				7zip, `
				everything, `
				keepass, `
				googlechrome, `
				fsviewer, `
				fsresizer.install, `
				greenshot, `
				veracrypt, `
				stardock-fences, `
				vlc, `
				autohotkey, `
				deluge, `
				sublimetext3, `
				sublimetext3.packagecontrol, `
				vscode, `
				krita, `
				inkscape, `
				scribus, `
				python, `
				pyenv-win, `
				git, `
				gh, `
				clink, `
				conemu, `
				dropbox, `
				manictime, `
				ffmpeg, `
				reaper, `
				reaper-sws-extension, `
				foobar2000, `
				freefilesync, `
				obs-studio, `
				docfetcher, `
				freecad, `
				shotcut, `
				avidemux, `
				virtualdub, `
				paint.net, `
				putty
				"
$dismAppList = ""

Invoke-Expression "InstallApps.ps1 ""$chocolateyAppList"" ""$dismAppList"""

# https://github.com/vors/ZLocation