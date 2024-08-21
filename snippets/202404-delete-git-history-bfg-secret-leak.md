https://rtyley.github.io/bfg-repo-cleaner/

Download the jar from the website above.

This can be run with:

```
java -jar ~/Downloads/bfg-1.14.0.jar
alias bfg="java -jar ~/Downloads/bfg-1.14.0.jar"
```

for example

Then clone the bare repo

```
git clone --mirror git://example.com/some-repo.git
```

Then check that the file is reachable:

```
git log --all --full-history -- .secret
```

If it's not there, then you may want to create a branch that includes the commit (it may be a dangling commit), then make sure that's available on the remote and then reclone.

If it's found then you'll see a bunch of commits that involve that file, so you can proceed

```
bfg --delete-files .secret
```

You'll see some output confirming it was removed, and saying some objects were changed

Then you'll do the following to finalize:

```
git reflog expire --expire=now --all && git gc --prune=now --aggressive
```

Finally, you'll force push this to the repo

However, make sure that you've let everyone know because they will need to re-clone the repo or rebase their local copies to the updated history.

```
git push origin --force --all
git push origin --force --tags
```

Then finally verify that the file was indeed removed.
