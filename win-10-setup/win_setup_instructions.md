# Windows Setup Instructions

Do Windows Updates

```powershell
PS> # to save content of a page to a file
PS> iwr -useb "https://raw.githubusercontent.com/iansedano/CodeSnips-Notes/master/win-10-setup/setup-script-non-admin.ps1" | Add-Content test.txt
PS> # to run content of an online script
PS> iwr -useb "https://raw.githubusercontent.com/iansedano/CodeSnips-Notes/master/win-10-setup/setup-script-non-admin.ps1" | iex
```

## Explorer Settings

Explorer > This PC > File > Change Folder and Search Options > View

- Display full path in the title bar
- Show hidden files, folders and drives
- Hide extensions for known file types

```powershell
PS> gh auth login
PS> gh repo clone CodeSnips-Notes
PS> $PROFILE
PS> $RegistryPath = "HKCU:\Control Panel\Desktop"
PS> $Name = "ActiveWndTrkTimeout"
PS> $Val = "1000"
PS> New-ItemProperty -Path $RegistryPath -Name $Name -Value $Val -PropertyType DWORD -Force
```

## MySQL

```
Start-process mysqld -windowstyle hidden
get-process "mysql*"
Get-Process -Name "mysql*" | ForEach-Object { Stop-Process $_.Id }
```

or

```
net start mysql
```

```
PS> mysql.exe -u root -p
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';
mysql> FLUSH PRIVILEGES;
mysql> EXIT;
```

## Neovim

```pwsh
sudo new-item -ItemType SymbolicLink `
-Path "C:\Users\ianse\AppData\Local\nvim\init.vim" `
-Target "C:\dev\CodeSnips-Notes\configs\nvim-init.vim"
```

Then from within neovim:

```
:PlugInstall
```


## Syncthing

Set it up!
Check out how to create tasks with task scheduler programatically...