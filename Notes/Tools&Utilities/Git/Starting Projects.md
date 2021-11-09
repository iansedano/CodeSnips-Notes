#Git_notes 

https://learngitbranching.js.org/

	git config --global core.autocrlf true 
	git config --global user.email 'iansedano@gmail.com'
	git config --global user.name 'iansedano'

	git init

add gitignore

	git add -A
	git commit -m "first commit"

if you need to add in last thing

	git commit --amend

this removes all files, then add all...when updating gitignore...

	git rm -rf --cached .   


see tree

	git log --graph --oneline --all

Move branch backwards as if last commit had not been made

	git reset HEAD~1

this works for local branches, for remote

	git revert HEAD

which creates new commit, but reverting changes to one previous, so easier to share

