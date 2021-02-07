
This example finds all files that have extension `.todo` and replaces it with `.md`

This requires

```
sudo apt-get install rename
```



```
find . -name "*.todo" -exec rename 's/.todo/.md/' {} \;
```

find in this folder the name *.todo then execute the command `rename` with perl regular expression `s/.todo/.md/` with the file represented by `{}` and do it once per file `\;`