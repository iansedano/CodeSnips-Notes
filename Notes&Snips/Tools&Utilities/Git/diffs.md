

#DIFFS

If you haven't added any files to the index yet (with git add), simply do

		git diff

This will show the diff between your working tree and index.

If you have added files to the index, you need to do this to show the differences between index and the last commit (HEAD).

		git diff --cached

Finally, if you want to see the changes made in the working tree compared to the latest commit (HEAD) you can (as Carlos points out) do

		git diff HEAD

Those changes are the combination of git diff and git diff --cached


