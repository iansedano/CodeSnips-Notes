# Anyone can create a new alias which is a shortcut to another command. To create your own alias you need to use Set-Alias cmdlet. Here, we will create a new alias Edit, which will open a Notepad.exe. First, we will check if Edit alias exists or not.

$Alias:Edit

#As this is going to be a new Alias there will be no output for it. Now, we will create new alias by the below command. You can provide any program path and create an alias for it.

Set-Alias Edit Notepad.exe

Set-Alias n "C:\Program Files (x86)\Notepad++\notepad++.exe"

#Just check if this Edit alias created successfully or not.

PS E:\scripts\Powershell> $Alias:Edit

#Notepad.exe
#This new alias is not permanent. Once you close the PowerShell console, all newly created aliases will be discarded. But the built-in alias will still remain.

#If you want to create an alias permanently you have few options.

#Manually each time − You need to set the alias each time when PowerShell console starts but this is not a feasible option.

#Import and Export − You can export the newly created alias and import it when the PowerShell starts.

#Save Alias in Profile − You can add your alias to your profile path. So when the profile starts, the alias will be created automatically when PowerShell starts.

