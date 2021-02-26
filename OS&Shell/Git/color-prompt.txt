
Create profile file

To find out the filename and path of the profile script for you, type:

$profile

The profile script is typically a file named Microsoft.PowerShell_profile.ps1 and its location is C:\Users\AverageJoe\Documents\WindowsPowerShell

This directory and this profile script file is not created by default. If you want to add some startup commands, you will need to create the WindowsPowerShell directory and a text file named Microsoft.PowerShell_profile.ps1 within it to store your commands.


add this to file for yellow prompt

function Prompt
{
    $promptString = "PS " + $(Get-Location) + ">"
    Write-Host $promptString -NoNewline -ForegroundColor Yellow
    return " "
}