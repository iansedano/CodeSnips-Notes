#!/bin/bash
param1=$1
param2=$2

if test "x$param2" = x; then
    branch=`git branch -a | grep "*" | cut -d ' ' -f2`
    string=$param1
else
    branch=$param1
    string=$param2
fi

patches=0
tracking=`git rev-parse --abbrev-ref --symbolic-full-name @{u}`

LIST=`git log --reverse --abbrev-commit --pretty=oneline $tracking..$branch | cut -d ' ' -f1 |paste -s -d ' '`
for i in $LIST; do patches=$(echo $patches + 1 | bc);done
/usr/bin/echo "-----------------------[" $branch "-" $patches "patches ]-----------------------"
patches=$(echo $patches - 1 | bc);
for i in $LIST; do
    if [ $patches -eq 1 ]; then
        cnt=" ^"
    elif [ $patches -eq 0 ]; then
        cnt=" H"
    else
        if [ $patches -lt 10 ]; then
            cnt=" $patches"
        else
            cnt="$patches"
        fi
    fi
    /usr/bin/git show --abbrev-commit -s --pretty=format:"$cnt %h %<|(32)%an %s" $i
    /usr/bin/git show --pretty=email --patch-with-stat $i | grep -n "$string"
    patches=$(echo $patches - 1 | bc)
done