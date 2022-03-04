Param($input_source, $dest)

$input_source = Convert-Path $input_source
$dest = Convert-Path $dest

Write-Host $input_source $dest  

$parent = Split-Path $input_source
$leaf = Split-Path -Leaf $input_source

$sleep = 1

Write-Host "Current PID = $pid"
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = "$parent"
$watcher.Filter = "*$leaf"
$watcher.IncludeSubdirectories = $false
$watcher.EnableRaisingEvents = $true

# Action after event.
$action = {
    Write-Host "Change detected"
    Copy-Item -Force -Path $args[1].FullPath -Destination $event.MessageData
}

$job = Register-ObjectEvent $watcher "Changed" -Action $action -MessageData $dest

Write-Host $job.Id

# Main loop.
while ($true) { Start-Sleep $sleep }