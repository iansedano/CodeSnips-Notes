### SET FOLDER TO WATCH + FILES TO WATCH + SUBFOLDERS YES/NO
    $watcher = New-Object System.IO.FileSystemWatcher
    $watcher.Path = "D:\Dropbox\Desktop\js2-react-dbsync"
    $watcher.Filter = "*.*"
    $watcher.IncludeSubdirectories = $true
    $watcher.EnableRaisingEvents = $true  

### DEFINE ACTIONS AFTER AN EVENT IS DETECTED
#    $action = { $path = $Event.SourceEventArgs.FullPath
#                $changeType = $Event.SourceEventArgs.ChangeType
#                $logline = "$(Get-Date), $changeType, $path"
#                Add-content "D:\Dropbox\Desktop\log.txt" -value $logline
#              }    
			  
    #$action = {D:\Dropbox\Desktop\BatchRun.ffs_batch}
	
	$action = { $fileName = Split-Path $Event.SourceEventArgs.FullPath -leaf
			$logline = $fileName
            if (-not ($fileName -like '*.ffs*')) { iex D:\Dropbox\Desktop\BatchRun.ffs_batch}
			else {$logline = $fileName + " no match"}
			
			Add-content "D:\Dropbox\Desktop\log.txt" -value $logline
          }
	
### DECIDE WHICH EVENTS SHOULD BE WATCHED 
    Register-ObjectEvent $watcher "Created" -Action $action
    Register-ObjectEvent $watcher "Changed" -Action $action
    Register-ObjectEvent $watcher "Deleted" -Action $action
    Register-ObjectEvent $watcher "Renamed" -Action $action
    while ($true) {sleep 5}