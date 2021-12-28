#!/usr/bin/env bash


rpm-domain="https://mirrors.rpmfusion.org/"
free-repo="free/fedora/rpmfusion-free-release-$(rpm -E %fedora)"
nonfree-repo="nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora)"

free-path="$rpm-domain$free-repo"
nonfree-path="$rpm-domain$nonfree-repo"

dnf install -y $(free-path)-$(rpm -E %fedora).noarch.rpm
dnf install -y $(nonfree-path)-$(rpm -E %fedora).noarch.rpm

# dnf install \
# https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
# dnf install \
# https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

dnf install -y fedora-workstation-repositories
dnf config-manager --set-enabled google-chrome

dnf check-update -y
dnf update -y
dnf upgrade -y

dnf install -y google-chrome-stable ripcord 
dnf install -y keepassx.x86_64 nautilus-dropbox



