# Handy grep commands to get started with

`man grep` for the manual



`grep -r 'myString' .`


`grep -r --include=*.{cc,h} "hello" .`

-r recursive  seaches all folders and subfolders

--include  - only matches files that are .cc and .h

"hello"  string to match

. current directory

add `--exclude-dir '_site' ` at end for directories

