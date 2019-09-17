#! /usr/bin/env sh
echo 'provisioning vim'

pacman -S --noconfirm vim

# Install vim
su $username -c "trizen -Sy --noconfirm vim-plug xclip vim-instant-markdown"
su $username -c "cp ${scriptlocation}/config/vim/.vimrc ${U_HOME}/.vimrc"