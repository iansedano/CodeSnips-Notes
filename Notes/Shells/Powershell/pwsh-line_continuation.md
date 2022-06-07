The line continuation character in Windows PowerShell is the backtick.

Type a <space>, the backtick, and then press ENTER, for example:

Get-Process -Name `
"Powershell_ISE"

Doesn't work in `"..."`, though.

```powershell
write-host ((
    'one',
    'two'
) -join ', ')
```