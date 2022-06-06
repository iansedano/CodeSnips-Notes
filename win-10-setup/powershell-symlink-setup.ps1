# elevated PowerShell

$ORIGINAL = "$PSScriptRoot\powershell-profile.ps1"

echo $ORIGINAL
echo $PROFILE

New-Item -ItemType SymbolicLink -Path $PROFILE -Target $ORIGINAL