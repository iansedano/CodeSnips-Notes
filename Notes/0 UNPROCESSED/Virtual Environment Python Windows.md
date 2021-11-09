# Setting up VirtualEnv for windows users

## Install VirtualEnvWrapper-win

I use dropbox and I keep all my files there, synced between my desktop and laptop.

For me it's easier to use virtualenvwrapper-win because it keeps the system specific files (a virtual env itself) outside of dropbox which needs to contain files that are cross platform.

Incidentally, this is what also makes using the virtualenv package in Sublime text easy.

	pip install virtualenvwrapper-win

## Make a Virtual Environemt:

	mkvirtualenv HelloWorld

	-h print help text
	-a project_path
	-i package
	-r requirements file

## Now to bind our virtualenv with our current working directory 

	setprojectdir .

## to deactivate your environment.

	deactivate

## to work in a virtual env

	workon HelloWorld2

## To remove

	rmvirtualenv HelloWorld

## Other commands

lists virtualenvs on machine

	lsvirtualenv

Go to active project if has folder defined

	cdproject

Go to source of the virtual envs

	cdvirtualenv 


## to get requirements

With virtual env activated and in project folder (not virtualenv folder)

	pip freeze > requirements.txt

## to reproduce venv (on other machine for example)

	pip install -r requirements.txt

## safe deletion process

	workon ENVNAME
	pip uninstall -r requirements.txt -y
	deactivate
	rmvirtualenv ENVNAME

Though apparantly you can just delete the folder (without the env activated of course!)


## VIRUTAL ENVIRONMENT VARIABLES

The stuff of nightmares for windows users apparently.

### For APIs and capstone project.

This is where I have been unable to make it work for me.

TDLR; don't use virtual environment variables on windows if you use Sublime. Find another solution. I added a file to my project "secret.py" and added it to my .gitignore file. 

I first created a blank secret.py file and made sure it wasn't pushed to github (in case of typo in .gitignore for example). Then added my keys there as string variables, then from my main py file I called it thus

	import secret

In terms of security, this is probably a short step away from having it in an environment variable (please correct me if I am wrong!)

The most secure solution I could find that would work for me is to study the pykeepass library, since I use keepass as my password database, maybe there is a way to programatically interact with it. However, that might mean giving the program access to a text version of my master password, which would obviously not be acceptable. Alternatively, it would have to ask for my master password everytime I ran the script, which while possible, would be a real pain.

### Instructions found online to try anyway

"Inside of your virtual environment locate the Scripts\activate.bat  and deactivate.bat  script. There you can add some commands to initialize shell variables with the set command. Something like"

	set DJANGO_SETTINGS_MODULE=settings.local

and importantly add this to your deactivate.bat to clear it.

	set DJANGO_SETTINGS_MODULE=

While this may work for paths, in practice I found that doing something like

	set KEY=blablablabla

Did not work. According to the command line docs, set only keeps variables until the end of the .bat file. Which seems to be true as typing the above command in a cmd instance will work when called by 

	echo %KEY%

The other option which I was too scared to try was the setx command

	setx KEY=blabalbalbal

However it seems that this permanently registers it in the registry. So it would persist after your deactivate.bat script.

It was mentioned in one forum that you can add this to your deactivate.bat script

	setx KEY=

which, even though it does clear the key, does not eliminate the entry from the registry completely.

### Other options

Try a Virtual Machine running Linux - for me this is more of a headache than its worth for what I do.

Try the WLS (Windows Subsystem for Linux) which to be honest sounds like a dream come true, but no matter how I could not get it to work on my windows build. Plus, this rabbit hole had already gone so deep and the secret.py solution worked and was much simpler and seems secure enough.
