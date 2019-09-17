#!/usr/bin/env sh

pacman -S --noconfirm zsh zsh-completions

# Install zsh
su $username -c "trizen -Sy --noconfirm antibody screenfetchi neofetch"


#su $username -c 'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
su $username -c "cp ${scriptlocation}/config/zsh/.zshrc ${U_HOME}/.zshrc"
su $username -c "cp ${scriptlocation}/config/zsh/.zprofile ${U_HOME}/.zprofile"