$StartTime = Get-Date

Write-Output "Downloading and installing Chocolatey"
Invoke-WebRequest -useb community.chocolatey.org/install.ps1 | Invoke-Expression
choco feature enable -n allowGlobalConfirmation

Write-Output "Installing Chocolatey Packages"
choco install powershell-core
choco install vscode
choco install git --package-parameters="/NoAutoCrlf /NoShellIntegration"
choco install keepass
choco install dropbox
choco install 7zip
choco install everything --package-parameters="/client-service /run-on-system-startup"
choco install greenshot
choco install veracrypt
choco install vlc
choco install autohotkey
choco install foobar2000 --package-parameters="/NoShortcut"
choco install processhacker
choco install activitywatch

choco install winaero-tweaker
choco install bulk-crap-uninstaller

choco install pyenv-win
choco install nvm
choco install fzf

choco install ffmpeg
choco install clink
choco install conemu
choco install notepadplusplus
choco install sublimetext4
choco install vscode
choco install mysql
choco install mysql-cli
choco install mysql.workbench
choco install filezilla
choco install fsviewer
choco install fsresizer.install
choco install paint.net
choco install drawio
choco install licecap
choco install obs-studio
choco install sharex
choco install krita
choco install inkscape
choco install scribus
choco install steam-client
choco install autoruns

choco install reaper
choco install feecad
choco install shotcut
choco install avidemux
choco install deluge
choco install ripcord

choco install pdfxchangeeditor --version 7.0.328.2 --package-parameters="/NoDesktopShortcuts /NoViewInBrowsers"
choco pin add -n pdfxchangeeditor
choco install googlechrome --ignore-checksums
choco pin add -n googlechrome

# Delete new desktop shortcuts
$Desktops = "$env:PUBLIC\Desktop", "$env:USERPROFILE\Desktop"
$Desktops | Get-ChildItem -Filter "*.lnk" -ErrorAction SilentlyContinue | Where-Object { $_.LastWriteTime -gt $StartTime } | Remove-Item

# refreshenv (choc replacement because it won't work on same session as install)
# Source: https://stackoverflow.com/a/22670892/10445017
# foreach ($level in "Machine", "User") {
#     [Environment]::GetEnvironmentVariables($level).GetEnumerator() | ForEach-Object {
#         if ($_.Name -match 'Path$') { 
#             $_.Value = ($((Get-Content "Env:$($_.Name)") + ";$($_.Value)") -split ';' | Select-Object -unique) -join ';'
#         }
#         $_
#     } | Set-Content -Path { "Env:$($_.Name)" }
# }


ssh-keygen -C [YOUR-EMAIL]@gmail.com -P '""' -f "$HOME/.ssh/id_rsa"
Get-Content $HOME/.ssh/id_rsa.pub | clip

Write-Output "Your SSH key has been copied to the clipboard"
