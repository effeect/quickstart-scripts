#!/bin/bash
sudo dnf update -y
# Install Docker, many thanks to https://docs.rockylinux.org/gemstones/containers/docker/
# By default, only root can manage docker
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl --now enable docker
# I hate VIM
sudo dnf install nano -y