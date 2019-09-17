#! /usr/bin/env sh
echo 'provisioning i3'

# install i3-gaps
pacman -S --noconfirm i3lock i3status i3-gaps feh polybar

# Install i3
su $username -c "trizen -Sy --noconfirm libevent dmenu termsyn-font ttf-font-awesome"


# copy i3 configs

su $username -c "mkdir -p ~/.config"
su $username -c "cp -rf $scriptlocation/i3 ~/.config"

# Install polybar
ETH_INT=$(ip link | awk 'BEGIN {FS=": "} {print $2}' | grep "^en")
WL_INT=$(ip link | awk 'BEGIN {FS=": "} {print $2}' | grep "^wl")
su $username -c "cp -rf $scriptlocation/polybar ~/.config"
su $username -c "sed -i "s/????ETH????/$ETH_INT/g" ~/.config/polybar/modules/network.ini"
su $username -c "sed -i "s/????WL????/$WL_INT/g" ~/.config/polybar/modules/network.ini"

# Install rofi
su $username -c "cp -rf $scriptlocation/rofi ~/.config"