$ProfileTarget = get-item $PROFILE | Select-Object -ExpandProperty target
$ConfigFolder = (get-item $ProfileTarget).Directory
$CodeSnipRepo = $ConfigFolder.Parent

$DropboxPath = Get-Content "$ENV:LOCALAPPDATA\Dropbox\info.json" -ErrorAction Stop |
    ConvertFrom-Json |
    ForEach-Object 'personal' |
    ForEach-Object 'path'
    
& $Env:USERPROFILE\env.ps1

oh-my-posh init pwsh --config "$($ConfigFolder.FullName)/posh.omp.json" | Invoke-Expression

Import-Module PSFzf
Import-Module posh-git
Import-Module ps-autoenv

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

if (Test-Path "$Env:USERPROFILE\.jabba\jabba.ps1") { . "$Env:USERPROFILE\.jabba\jabba.ps1" }

Set-Alias n notepad++
Set-Alias subl "$Env:PROGRAMFILES\Sublime Text\subl.exe"


function lsc(){Get-ChildItem | Format-Wide -Autosize -Property Name}
function dropdev(){Set-Location "$DropboxPath\dev"}
function dev(){Set-Location "C:\dev"}
function notebook(){Set-Location "$DropboxPath\0 Notebook"}
function codesnip(){
  Set-Location $CodeSnipRepo
  & code .
}

function pyvenv(){
  python -m venv venv
  venv\Scripts\activate

}

function pyautovenv{
  Write-Output ".\venv\Scripts\activate" > .autoenv
  Write-Output "deactivate" > .autoenv.leave
}

function dropboxvenv() {
  mkdir venv
  "y" | dropboxignore
  pyvenv
}

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


# Blinking Cursor

$BLINKING_STATE = $true

function blink(){
  if ( $global:BLINKING_STATE ){
    echo "`e[6 q"
    $global:BLINKING_STATE = $false
  } else {
    echo "`e[5 q"
    $global:BLINKING_STATE = $true
  }
}

function refresh {
  Write-Output "Refreshing..."
  foreach ($level in "Machine", "User") {
    [Environment]::GetEnvironmentVariables($level).GetEnumerator() |
    ForEach-Object {
        if ($_.Name -match 'Path$') {
            $combined_path = (Get-Content "Env:$($_.Name)") + ";$($_.Value)"
            $_.Value = (
              ($combined_path -split ';' | Select-Object -unique) -join ';'
            )
        }
        $_
    } | Set-Content -Path { "Env:$($_.Name)" }
  } 
}

& "$ConfigFolder/pwsh-tree.ps1"
