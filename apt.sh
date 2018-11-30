#!/usr/bin/env bash

sudo apt update
sudo apt upgrade

# essentials
sudo apt install -y git
sudo apt install -y vim
sudo apt install -y curl
sudo apt install -y ssh
sudo apt install -y sshpass
sudo apt install -y net-tools
sudo apt install -y direnv
sudo apt install -y screen
sudo apt install -y tmux
sudo apt install -y tree
sudo apt-get install -y build-essential
sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

# work
sudo apt install -y autofs nfs-common nfs-kernel-server cifs-utils
sudo apt install -y rpm
sudo apt install -y maven
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# cleanup
sudo apt autoremove
