#BRANCHING

	git branch -a

create a new branch named "feature_x" and switch to it using

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

