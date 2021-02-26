# https://github.com/vors/ZLocation

# Install from PowerShellGet Gallery

Install-Module ZLocation -Scope CurrentUser

# Make sure to include ZLocation import in your $profile. It intentionally doesn't alternate $profile automatically on installation.

# This one-liner installs ZLocation, imports it and adds it to a profile.

Install-Module ZLocation -Scope CurrentUser; Import-Module ZLocation; Add-Content -Value "`r`n`r`nImport-Module ZLocation`r`n" -Encoding utf8 -Path $profile.CurrentUserAllHosts

# If you want to display some additional information about ZLocation on start-up, you can put this snippet in $profile after import.

Write-Host -Foreground Green "`n[ZLocation] knows about $((Get-ZLocation).Keys.Count) locations.`n"

# ZLocation alternates your prompt function to track the location. If you have a custom prompt function in $profile, you should place Import-Module ZLocation after the prompt customization.

# The full command name is Invoke-ZLocation, but in examples I use alias z