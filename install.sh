#!/bin/bash

# Unix/Linux
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/

source ~/.bashrc
source ~/.bash_profile

# download and install Node.js
nvm install 20

# In Vim :PlugInstall
