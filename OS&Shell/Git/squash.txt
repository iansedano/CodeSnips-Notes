make your commits

push them to github

git rebase -i HEAD~3

~3 or however many commits you want to go back

see list of commits in editor, change pick to s if you want to squash

write and save

then to sync with server:

git push origin branch -f

-f is to force it because without it, it will throw error saying that you are behind the origin.


--- when pulling a rebased repo

https://stackoverflow.com/questions/16773249/git-pulling-a-rebased-branch

Suppose my branch is named feature/my-feature-branch. After finishing the rebase on the first Machine, I do a git fetch on the second. The following message appears:

	$ git status
	On branch feature/my-feature-branch
	Your branch and 'origin/feature/my-feature-branch' have diverged,
	and have 21 and 24 different commits each, respectively.
	  (use "git pull" to merge the remote branch into yours)
	  
Well, don't do a git pull, because then you end up with a meaningless merge commit after quite a bit of fussing.

Instead, run

	git rebase -i origin/feature/my-feature-branch

Once the text editor pops up, delete all commits, and replace it with the following (this makes it so the rebase completes without any commits being kept).

	exec echo test

If you do have commits that need to be kept, then those can be applied here. In either case, the rebase will complete, and now both machines are in sync again, as evidenced by:

	$ git pull
	Already up-to-date.
	$ git push
	Everything up-to-date