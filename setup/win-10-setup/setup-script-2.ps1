if ($PSVersionTable.PSEdition -ne "Core"){
    Write-Output "Run this script with PowerShell Core"
    exit
}

Install-Module ZLocation -Scope CurrentUser
Install-Module -Name PSFzf
Install-Module posh-git -Scope CurrentUser -Force
Install-Module ps-autoenv
