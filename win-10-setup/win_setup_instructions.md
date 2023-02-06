# Windows Setup Instructions

Do Windows Updates

```powershell
PS> # to save content of a page to a file
PS> iwr -useb bit.ly/3NEMheH | Add-Content test.txt
PS> # to run content of an online script
PS> iwr -useb bit.ly/3NEMheH | iex

iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"
```

## Explorer Settings

Explorer > This PC > File > Change Folder and Search Options > View

- Display full path in the title bar
- Show hidden files, folders and drives
- Hide extensions for known file types


```powershell
PS> git@github.com:iansedano/CodeSnips-Notes.git
```

gh auth login
gh repo clone CodeSnips-Notes

to get powershell profile

```ps
$PROFILE
```

Registry entry for time to activate windows

```
Computer\HKEY_CURRENT_USER\Control Panel\Desktop\ActiveWndTrkTimeout
```

Set to 1000

```pwsh
$RegistryPath = "HKCU:\Control Panel\Desktop"
$Name = "ActiveWndTrkTimeout"
$Val = "1000"
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Val -PropertyType DWORD -Force
```