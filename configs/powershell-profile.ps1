Set-Alias n notepad++
Set-Alias subl "$Env:PROGRAMFILES\Sublime Text 4\subl.exe"

$DropboxPath = Get-Content "$ENV:LOCALAPPDATA\Dropbox\info.json" -ErrorAction Stop | ConvertFrom-Json | % 'personal' | % 'path'

& $Env:USERPROFILE\Documents\Powershell\env.ps1

function git-recurse ($command)
{
	Get-ChildItem -Recurse -Directory -Hidden -Filter .git `
	| ForEach-Object `
	{ Write-Host "`n`n ++++ $(Split-Path $_.FullName -Parent) ++++ `n" -ForegroundColor Green ; `
	& git --git-dir="$($_.FullName)" `
	--work-tree="$(Split-Path $_.FullName -Parent)" `
	$command}
}

function grep {
  $input | out-string -stream | select-string $args
}

Set-poshprompt -theme hotstick.minimal
Enable-PoshTransientPrompt

Import-Module PSFzf
Import-Module posh-git

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function dropdev(){Set-Location "$DropboxPath\dev"}
function dev(){Set-Location "C:\dev"}

function notebook(){Set-Location "$DropboxPath\0 Notebook"}
function codesnip(){Set-Location "C:\Dev\CodeSnips-Notes"}