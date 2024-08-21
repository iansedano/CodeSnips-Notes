```powershell
git branch --merged | where { $_ -notmatch '\*|jared|ryan|main|master'}
git branch --merged | where { $_ -notmatch '\*|jared|ryan|main|master'} | foreach {$_.Trim()}
git branch --merged | where { $_ -notmatch '\*|jared|ryan|main|master'} | foreach {git branch -D $\_.Trim()}
```