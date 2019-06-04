#!/bin/bash

echo "Install a few prerequisite packages which let apt use packages over HTTPS"

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

echo "Add the GPG key for the official Docker repository to your system"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Add the Docker repository to APT sources"

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

echo "Update the package database with the Docker packages from the newly added repo"

sudo apt update

echo "Install from the Docker repo instead of the default Ubuntu repo"

apt-cache policy docker-ce

echo "install Docker"

sudo apt install -y docker-ce subversion automake build-essential autoconf libnetcdf-dev libxml2-dev libproj-dev subversion valgrind

sudo systemctl status docker

if [ -d $HOME/bin ]; then
PATH=$PATH:$HOME/bin
fi
