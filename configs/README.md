For each system you want to keep track of:

- Create a new directory
- Create a new directory called `HOME` in that directory, that will represent the home location
- Within that directory, create files with the `.dotfile` extension to represent the dot files you want to keep track of. E.g. `.bashrc` would be represented as `bashrc.dotfile`
- Create a `.config` directory. Within that directory, create any folders that you want with any structure of files or folders within them.

You'll end up with a structure like:

```
desktop/
  HOME/
    bashrc.dotfile
    vimrc.dotfile
  .config/
    nvim/
      init.vim
    i3/
      config
laptop/
  HOME/
    bashrc.dotfile
    vimrc.dotfile
  .config/
    nvim/
      init.vim
    i3/
      config
```

Then run the `create-symlinks.sh` script to create the symlinks.

```bash
./create-symlinks.sh desktop
```

This will then create symlinks in your home directory to the files in the desktop directory. It will symlink the `.dotfile` files to the `HOME` directory, and the `.config` sub-directories.

You can run the script with the `--dry-run` flag to see what it will do without actually doing it.

```bash
./create-symlinks.sh desktop --dry-run
```
