# BRANCHING

To find what branches are available and what one you are on.

	git branch

To create a new branch named "feature_x" and switch to it

	git checkout -b feature_x

in long form

	git branch feature_x
	git checkout feature_x

switch back to master

	git checkout master

and delete the branch again

	git branch -d feature_x

a branch is not available to others unless you push the branch to your remote repository

	git push origin <branch>

delete branch

	git branch -d branchName

"force" master branch back three commits

	git branch -f master HEAD~3

if you are on a branch but want to commit the changes you have made to another branch then

    git stash
    git checkout branch I wanna commit to
    git stash pop

To get a remote branch

    git switch branchName

or

    git checkout --track origin/branchName

or

    git fetch <remote> <rbranch>:<lbranch>
    git checkout <lbranch>