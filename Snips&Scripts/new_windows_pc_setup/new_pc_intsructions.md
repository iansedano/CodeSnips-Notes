start powershell and run the commands in InstallChocolatey.ps1, probably manually

run the following command
$env:PATH =$env:PATH+";."

and then run essential_programs_install.ps1

Do not start Conemu as admin! Or else you won't be able to save settings

log into dropbox and select folders

wait for sync... ~2 hrs?

open keepass

then make dev directory at root
mkdir c:\dev
cd c:\dev
gh auth login
gh repo clone CodeSnips-Notes

[alias]
	pushall = "!f() { git add -A && git commit -m \"$@\" && git push; }; f"
	commitall = "!f() { git add -A && git commit -m \"$@\"; }; f"
	ammendpush = "!f() { git add -A && git commit --amend --no-edit && git push -f; }; f"
	amm = commit --amend --no-edit
	ll = log --oneline --graph
	last = log -1
	recent = log -5 --oneline --graph
	s = status

[user]
	email = iansedano@gmail.com
	name = Ian


to get powershell profile

```ps
$PROFILE
```

Move the profile backup from dropbox to that location

Do not start Conemu as admin! Or else you won't be able to save settings

Install font from CodeSnips-Notes

Import settings conemu

Set up settings sync vscode


pyenv-win

Start > Manage App Execution Aliases > Disable Python related ones

pyenv update
pyenv install 3.10.0