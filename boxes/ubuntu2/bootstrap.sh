#!/bin/bash

apt-get update -y
apt-get install -y git htop zsh curl

# Docker CE stuff
apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#   rerun update after adding docker repo
apt update -y
apt-get install docker-ce -y


# Add vagrant user to docker group
usermod -aG docker vagrant

### Oh My shell ###
# change vagrant user's shell to zshell
chsh -s /bin/zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Echo file to desktop
echo 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"' > oh-my-zshell.sh
