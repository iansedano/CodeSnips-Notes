function Start-DropboxTranscript ($path) {

  $transcriptDir = $path
  if (-not (Test-Path -Path $transcriptDir)) {
      New-Item -Path $transcriptDir -ItemType Directory -Force
  }

  if ($host.Name -eq "ConsoleHost") {
      $sessionID = [guid]::NewGuid().ToString()
      $transcriptPath = Join-Path -Path $transcriptDir -ChildPath "session_$sessionID.txt"

      $transcriptOptions = @{
          Path = $transcriptPath
          NoClobber = $true
          Append = $true
          Force = $true
          IncludeInvocationHeader = $true
          UseMinimalHeader = $true
      }

      Start-Transcript @transcriptOptions
  }
}