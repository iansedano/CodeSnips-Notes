if ($PSVersionTable.PSEdition -ne "Core"){
    Write-Output "Run this script with PowerShell Core"
    exit
}

Install-Module ZLocation -Scope CurrentUser
Install-Module -Name PSFzf
Install-Module posh-git -Scope CurrentUser -Force

scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json

$REPOSITORY_NAME = "CodeSnips-Notes"
$CONFIG_FOLDER_NAME = "configs"

$configs = @(
    @("$PROFILE", "powershell-profile.ps1"), `
    @("$Env:USERPROFILE\.gitconfig", "gitconfig"), `
    @("$Env:APPDATA\ConEmu.xml", "conemu-desktop.xml")
)

$repo_root = (get-item $PSScriptRoot).parent

if (($repo_root -split '\\')[-1] -eq $REPOSITORY_NAME)
{
    write-host "Repo correctly initialized"
    $config_root = "$repo_root\$CONFIG_FOLDER_NAME"
    
    # The symbolic link lives where the profile is read by powershell
    # the target of the symbolic link is this repository's version.
    
    foreach ($i in $configs) {
        New-Item -ItemType SymbolicLink -Path $i[0] -Target "$config_root\$i[1]" -Force
    }
}