#!/usr/bin/env bash

if [ ! "$(which ansible)" ];
then

echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list

sudo apt install dirmngr
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt update -y
sudo apt install -y ansible

fi