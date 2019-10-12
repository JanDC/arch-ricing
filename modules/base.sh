#! /usr/bin/env sh
echo 'provisioning base system (could be optional)'

#TODO: user creation, keyboard, pacman config, installation of git e.a.
pacman-mirrors -g
pacman -Syyu --noconfirm
pacman -S --noconfirm git xorg-server base-devel xorg-xinit zsh alacritty python xf86-video-vesa
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
su $username -c "mkdir -p /tmp/trizen"
su $username -c "git clone https://aur.archlinux.org/trizen.git /tmp/trizen"
su $username -c "cd /tmp/trizen && makepkg -si --noconfirm"

su $username -c "cp ${scriptlocation}/config/.xinitrc ${U_HOME}/.xinitrc"