#!/usr/bin/env bash

sudo apt update
sudo apt upgrade

# essentials
sudo apt install git
sudo apt install vim
sudo apt install ssh
sudo apt install net-tools
sudo apt install direnv
sudo apt install screen
sudo apt install tmux
sudo apt install tree

# work
sudo apt install autofs nfs-common nfs-kernel-server cifs-utils
sudo apt install rpm
sudo apt install maven

# cleanup
sudo apt autoremove
