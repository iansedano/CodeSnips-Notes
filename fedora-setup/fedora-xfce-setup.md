Run install script as sudo

```bash
mkdir dev
git clone git@github.com:iansedano/CodeSnips-Notes.git
```

Make links to configs

Make ssh keys:

```bash
ssh-keygen -C iansedano@gmail.com
cat ~/.ssh/id_rsa.pub
# Add key to GH account
ssh -T git@github.com # check connection
git config --global user.email "iansedano@gmail.com"
git config --global user.name "Ian"
```

```bash
hostnamectl set-hostname $new-hostname
timedatectl list-timezones
timedatectl set-timezone Europe/Madrid
```

`reboot`

gh
https://github.com/cli/cli/blob/trunk/docs/install_linux.md (should be installable from community repo now)

manic time
autoenv
docker...podmad?

gitahead
curl -o- https://github.com/gitahead/gitahead/releases/download/v2.6.3/GitAhead-2.6.3.sh | bash

For waiting for DB to download

```bash
while true; do dropbox status; sleep 10; done
# Ctrl + C to exit
```


create symbolic links (from obsolete linux configs repo)
```
ln -sf source target
```
link symbolic force(replace target) source(file in repo) target(home folder)


