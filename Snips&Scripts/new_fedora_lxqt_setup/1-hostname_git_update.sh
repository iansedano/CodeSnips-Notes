#!/usr/bin/env bash

echo What would you like the host name to be?
read new-hostname
read -s -p "Enter github password for user $githubuser: " githubpass

dnf install -y git curl ssh

# ssh-keygen -C iansedano@gmail.com -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y 2>&1 >/dev/null

< /dev/zero ssh-keygen -C iansedano@gmail.com -q -N ''

pub=`cat ~/.ssh/id_rsa.pub`
githubuser=iansedano@gmail,com
curl -u "$githubuser:$githubpass" -X POST -d "{\"title\":\"`new-hostname`\",\"key\":\"$pub\"}" https://api.github.com/user/keys

ssh -T git@github.com

mkdir ~/dev
git -C ~/dev clone git@github.com:iansedano/CodeSnips-Notes.git
git -C ~/ clone git@github.com:iansedano/linux_configs.git
git -C ~/ clone git@github.com:rupa/z.git

chmod +x ~/linux_configs/init.sh
.~/linux_configs/init.sh

dnf update -y
dnf upgrade -y

dnf install -y vim terminator fzf 

hostnamectl set-hostname $new-hostname
timedatectl set-timezone Europe/Madrid # list-timezones

reboot


# Need to set up GH ssh key for this
# Open github




