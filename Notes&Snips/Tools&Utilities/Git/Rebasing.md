
#REBASING

For example, have branched and developed feature, and want it to look like developed linearly, on new branch, do

	git rebase master

then go to master and 

	git rebase <branch>

and now master and branch are on last commit

https://about.gitlab.com/blog/2018/06/07/keeping-git-commit-history-clean/


to discard everything youve worked on locally.

	git reset --hard

