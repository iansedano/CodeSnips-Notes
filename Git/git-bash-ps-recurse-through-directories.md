
### BASH
in gitconfig:

```bash
all = "!f() { ls | xargs -I{} git -C {} $1; }; f"
```


### Powershell function

```powershell
function git-recurse ($command)
{
	Get-ChildItem -Recurse -Directory -Hidden -Filter .git `
	| ForEach-Object `
	{ Write-Host "`n`n ++++ $(Split-Path $_.FullName -Parent) ++++ `n" -ForegroundColor Green ; `
	& git --git-dir="$($_.FullName)" `
	--work-tree="$(Split-Path $_.FullName -Parent)" `
	$command}
}
```

