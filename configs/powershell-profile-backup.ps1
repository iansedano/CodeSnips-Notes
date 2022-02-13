Set-Alias n notepad++
Set-Alias subl "C:\Program Files\Sublime Text\subl.exe"

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