#!/bin/bash
# provisioning script run only when box first is setup
# Patch new system
zypper patch -y
# Run again to patch after patch manager update
zypper patch -y
# install additional packages etc.
zypper -n install git htop zsh docker docker-compose

# Add vagrant user to docker group
usermod -G docker -a vagrant

systemctl enable docker
systemctl start docker

docker run hello-world
