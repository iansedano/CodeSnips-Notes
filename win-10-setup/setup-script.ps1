Write-Output "Downloading and installing Chocolatey"
Invoke-WebRequest -useb community.chocolatey.org/install.ps1 | Invoke-Expression

Write-Output "Configuring Chocolatey"
choco feature enable -n allowGlobalConfirmation

Write-Output "Installing Chocolatey Packages"
choco install powershell-core
choco install vscode
choco install git --package-parameters="/NoAutoCrlf /NoShellIntegration"
choco install pyenv-win

# The Google Chrome package often gets out of sync because it updates so
# frequently. Ignoring checksums is a way to force install it.
choco install googlechrome --ignore-checksums
# Google Chrome auto-updates so you can pin it to prevent Chocolatey from
# trying to upgrade it and inadvertently downgrading it.
# You could also add VS Code here if you like
choco pin add -n googlechrome

refreshenv

# The refreshenv command usually doesn't work on first install.
# This is a way to make sure that the PATH gets updated for the following
# operations that require PATH to be refreshed.
# Source: https://stackoverflow.com/a/22670892/10445017
foreach ($level in "Machine", "User") {
    [Environment]::GetEnvironmentVariables($level).GetEnumerator() | ForEach-Object {
        if ($_.Name -match 'Path$') { 
            $_.Value = ($((Get-Content "Env:$($_.Name)") + ";$($_.Value)") -split ';' | Select-Object -unique) -join ';'
        }
        $_
    } | Set-Content -Path { "Env:$($_.Name)" }
}

Write-Output "Setting up pyenv and installing Python"
pyenv update
pyenv install --quiet 3.10.5 3.9.12

Write-Output "Generating SSH key"
ssh-keygen -C [YOUR-EMAIL]@gmail.com -P '""' -f "$HOME/.ssh/id_rsa"
Get-Content $HOME/.ssh/id_rsa.pub | clip

Write-Output "Your SSH key has been copied to the clipboard"