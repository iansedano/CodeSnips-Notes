git branch --set-upstream-to <remote-branch>

sets the default remote branch for the current local branch.

Any future git pull command (with the current local branch checked-out),
will attempt to bring in commits from the <remote-branch> into the current local branch.

One way to avoid having to explicitly type --set-upstream is to use its shorthand flag -u as follows:

git push -u origin local-branch

This sets the upstream association for any future push/pull attempts automatically.

For more details, checkout this detailed explanation about upstream branches and tracking.
https://stackoverflow.com/a/10002469/319204

To avoid confusion, recent versions of git deprecate this somewhat ambiguous --set-upstream option in favour of a more verbose --set-upstream-to option with identical syntax and behaviour

git branch --set-upstream-to <origin/remote-branch>