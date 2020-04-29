
#TESTING MERGING

	git reset --merge

	git merge --abort

You can use

		git merge --no-commit

to prevent the merge from actually being committed, and if you don't like how the merge works out, just reset to the original head.
If you definitely don't want to finalize the merge, even if it's a fast-forward (and thus has no conflicts, by definition), you could add

	--no-ff

as well.

If I want to compare changes on a topic branch to master, I find it easiest and safest to do the following:

		git checkout master
		git checkout -b trial_merge
		git merge topic_branch

After completing the merge, it is easy to see the consolidated change from master

		git diff master

		https://about.gitlab.com/blog/2018/06/07/keeping-git-commit-history-clean/

When done, simply delete the trial_merge branch

		git checkout master
		git branch -D trial_merge

This way, the master branch never changes.

