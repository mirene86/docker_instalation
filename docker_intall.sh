#!/bin/bash

##description: Docker intallation in ubuntu and Centos.....

#Author: Mirene Mbo-Mbida


if [ $? -eq 0 ]

then

#clean up the system

sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

#set up docker repository

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

#install the docker engine

 sudo yum install docker-ce docker-ce-cli containerd.io

# check the satus, start and enable docker daemon

sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker

echo "installation docker completed"

else

sudo apt remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
sudo apt install -y yum-utils
sudo apt-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo apt install docker-ce docker-ce-cli containerd.io
sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker
echo "installation docker on ubuntu completed"
fi
