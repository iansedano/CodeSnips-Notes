$chocolateyAppList = " `
				dropbox, `
				googlechrome, `
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
				powershell-core, `
				notepadplusplus, `
				sublimetext4, `
				powertoys, `
				ripcord
				"
$dismAppList = ""

Invoke-Expression "InstallApps.ps1 ""$chocolateyAppList"" ""$dismAppList"""
