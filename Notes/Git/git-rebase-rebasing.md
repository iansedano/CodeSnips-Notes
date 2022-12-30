# REBASING

For example, have branched and developed feature, and want it to look like developed linearly, on new branch, do

	git rebase master

then go to master and 

	git rebase <branch>

and now master and branch are on last commit

https://about.gitlab.com/blog/2018/06/07/keeping-git-commit-history-clean/


to discard everything youve worked on locally.

	git reset --hard


### Rebasing experience 20210912

I had a repo in which I wanted to add in a couple commits to the start of the master branch.

```
1 - 2 - 3 - 4 - 5 - 6 - 7 (master)
	 \ a - b (correction)
```

While usually rebasing is used to make the repo look like this:

```
1 - 2 - 3 - 4 - 5 - 6 - 7 (master)
						 \ a - b (correction)
```

I wanted it to look like this:

```
1 - 2 - a - b - 3 - 4 - 5 - 6 - 7 (master)
```

So after much worrying I just copied the repo locally and started the rebasing process there.

Where the usual command would be 

```
git rebase master correction
```

I did:

```
git rebase correction master
```


After which I had to go through every commit in the master branch merging the changes which was less tedious than I thought it would be. For the most part, Git does a good job.

My relation with Git sometimes feels like some mortal enemy that has allied with me out of necessity. Or perhaps one of Rilke's terrifying "angels" who could crush me by accident and not really think anything of it. I've found that the more I trust Git, the better it works for me. Though I do get crushed by it from time to time. I try to speak a language I don't understand and Git doesn't care if I ask to be crushed but actually meant to be helped.

What I did notice was that some commits were really messy and that this made everything go slower. There was one in which I implemented a new feature and also decided to go over and review the formatting of a bunch of the code base. Merging the conflicts of that commit was like having to manually go over everything. Luckily I had the old untouched repo so I could go over and view the changes. An argument for using a relatively strict linter? Because going over the whole codebase to review formatting really messes with the git workfow.

Part of the correction was factoring out a large function into a new file. So almost every commit involved deleting it out of the main file and comparing it manually with the new file. Maybe this is an argument in favor of always keeping functions (in this project, React components) in separate files, just for possible rebasing in future. But where do you draw the line?

After finishing this quite long, but not too tedious, process, I:

```
git push --force --set-upstream origin master
```

Which gave me the desired result on the remote repo

```
1 - 2 - a - b - 3 - 4 - 5 - 6 - 7 (master)
```

but left me with this on the local repo:

```
1 - 2 - 3 - 4 - 5 - 6 - 7 (origin/master)
	 \ a - b - 3 - 4 - 5 - 6 - 7 (master)
```

Which I don't understand. Being pressed for time I just cloned the remote repo again and deleted the local.