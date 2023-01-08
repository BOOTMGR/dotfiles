#!/bin/sh

# export kitty terminfo
sudo ln -s /home/user/.local/kitty.app/share/terminfo/x/xterm-kitty /usr/share/terminfo/x/xterm-kitty

# disable visual mode in vim
echo "set mouse-=a" >> ~/.vimrc
echo "set ttymouse=" >> ~/.vimrc
echo "source \$VIMRUNTIME/defaults.vim" >> ~/.vimrc

# setup env
mkdir -p /home/$USER/.local/bin
echo 'export PATH=$PATH:/home/$USER/.local/bin' >> .bashrc
echo 'alias ll="ls -lrth"' >> .bashrc

# Downoad font
mkdir -p ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Agave.zip -O /tmp/font.zip
unzip -j /tmp/font.zip "agave regular Nerd Font Complete Mono.ttf" -d ~/.fonts/
fc-cache -vf
