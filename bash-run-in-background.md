In Bash, you can start a program in the background and suppress its output by redirecting both stdout and stderr to /dev/null. You can do this using the following command:

```bash
program-name > /dev/null 2>&1 &
```

Here's what each part does:

- `program-name` is the name of the program you want to run.

- `>` redirects stdout (file descriptor 1) to /dev/null, which discards it.

- `2>&1` redirects stderr (file descriptor 2) to wherever stdout is going, which in this case is /dev/null.

- `&` at the end of the command starts the program in the background, which allows you to continue using your terminal while the program runs.

Replace `program-name` with the actual name of the program you want to run.

For example, to run a program named `my_program` in the background and suppress its output, you would use:

```bash
my_program > /dev/null 2>&1 &
```

If you want the process to keep running even after you close the terminal, you can use the `nohup` command as follows:

```bash
nohup program-name > /dev/null 2>&1 &
```


Indeed, you can use `nohup` and `disown` commands as a simpler method. These commands allow you to run processes in the background and ensure they keep running even when the terminal is closed.

However, if you are looking for an even easier approach, you might want to consider creating a Bash alias or function that will do this for you.

Here's an example of how you could create a Bash function for this purpose:

```bash
runbg() {
  nohup "$@" > /dev/null 2>&1 &
}
complete -c runbg # for autocomplete
```

This `runbg` function will run the given command in the background, suppress all output, and ensure the process keeps running even after the terminal is closed.

Once you define this function (you can paste it into your terminal), you can use it like this:

```bash
runbg program-name
```

Replace `program-name` with the name of the program you want to run.
