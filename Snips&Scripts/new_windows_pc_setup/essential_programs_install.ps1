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