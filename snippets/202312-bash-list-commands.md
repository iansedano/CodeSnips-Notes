`compgen -c` lists all bash commands, `column` displays results in columns like `ls`

```bash
compgen -c | grep "^p.*v" | column
```