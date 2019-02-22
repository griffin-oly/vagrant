#!/bin/bash

apt-get update
apt-get install -y git htop zsh curl

### Oh My shell ###
# change vagrant user's shell to zshell
chsh -s /bin/zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Echo file to desktop
echo 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"' > oh-my-zshell.sh
