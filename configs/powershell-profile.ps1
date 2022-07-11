Set-Alias n notepad++
Set-Alias subl "$Env:PROGRAMFILES\Sublime Text\subl.exe"

$DropboxPath = Get-Content "$ENV:LOCALAPPDATA\Dropbox\info.json" -ErrorAction Stop |
    ConvertFrom-Json |
    ForEach-Object 'personal' |
    ForEach-Object 'path'
    
& $Env:USERPROFILE\env.ps1

$ProfileTarget = get-item $PROFILE | Select-Object -ExpandProperty target
$ConfigFolder = (get-item $ProfileTarget).Directory
$CodeSnipRepo = $ConfigFolder.Parent

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

oh-my-posh init pwsh --config "$($ConfigFolder.FullName)/posh.omp.json" | Invoke-Expression
# Enable-PoshTransientPrompt

Import-Module PSFzf
Import-Module posh-git

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function dropdev(){Set-Location "$DropboxPath\dev"}
function dev(){Set-Location "C:\dev"}

function notebook(){Set-Location "$DropboxPath\0 Notebook"}
function codesnip(){Set-Location $CodeSnipRepo}
