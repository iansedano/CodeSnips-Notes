## Create SSH pair for new user

On local machine

Create a passphrase and save it in password manager with date (will become obsolete once initial setup is done)

Save the public key entry in password manager:

`SSH-VPSHostens-[ComputerWhereCreated]-[DATE]`

Create key pair:

```bash
ssh-keygen -t rsa -b 4096"
```

Call it `is_rsa_vps` and save it in `~/.ssh/`

## Install OS

On Hostens site, create a new VPS with Ubuntu, and add the public SSH key to the VPS as part of the install.

Start install and then wait for the new root password. Save that in password manager with date (will become obsolete once initial setup is done)

Create a new password for the new user which will be `cuse`, create a new password manager entry for that.

## Provision with Ansible

On local machine with `ansible` installed:

```bash
cd setup/ubuntu-vps-setup/ansible-playbook
ansible-playbook -i hosts.yml provision.yml
```

Insert the passwords when prompted
