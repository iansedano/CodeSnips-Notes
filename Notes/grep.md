```sh
grep -r --include=*.{cc,h} "hello" . --exclude-dir '_site'
```

recursive seaches all folders and subfolders (`-r`) only include files that match `*.{cc,h}` (`--include=*.{cc,h}`) and search for "hello" string in current directory (`.`), `--exclude-dir '_site' ` at end for excluding directories

```sh
grep --color=auto -Hn -d skip "your_search_text" ./* ./.*
```

grep with color, show filename (`H`) and line number (`n`), skip directories (`-d skip`) and search in all files `./*` including hidden `./.*`

```sh
rg "light" --max-depth 1 -uuu . -L
```

ripgrep for "light" in current folder, showing all files (`-uuu`) and following symlinks (`-L`)
