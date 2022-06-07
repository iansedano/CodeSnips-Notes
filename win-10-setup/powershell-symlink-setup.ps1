# elevated PowerShell

$REPOSITORY_NAME = "CodeSnips-Notes"
$CONFIG_FOLDER_NAME = "configs"
$POWERSHELL_PROFILE_NAME = "powershell-profile.ps1"

$repo_root = (get-item $PSScriptRoot).parent

if (($repo_root -split '\\')[-1] -eq $REPOSITORY_NAME)
{
    write-host "Repo correctly initialized"
    $config_root = "$repo_root\$CONFIG_FOLDER_NAME"
    $repo_pwsh_profile = "$config_root\$POWERSHELL_PROFILE_NAME"
    
    # The symbolic link lives where the profile is read by powershell
    # the target of the symbolic link is this repository's version.

    New-Item -ItemType SymbolicLink -Path $PROFILE -Target $repo_pwsh_profile
    
}