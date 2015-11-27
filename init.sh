#!/bin/bash

# Install Arc Theme
echo '|========== Installing Arc Theme ==========|'

wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_15.04/Release.key
sudo apt-key add - < Release.key

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install -y arc-theme

echo '|========== Arc Theme Installed ==========|'
echo '|========== Activating Arc Theme ==========|'

gsettings set org.gnome.desktop.interface gtk-theme "Arc-Darker"
gsettings set org.gnome.desktop.wm.preferences theme "Arc-Darker"

echo '|========== Arc Theme Activated ==========|'

# Install Numix Icons
echo '|========== Installing Numix Icons ==========|'

sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install -y numix-icon-theme-circle

echo '|========== Numix Icons Installed ==========|'
echo '|========== Activating Numix Icons ==========|'

gsettings set org.gnome.desktop.interface icon-theme "Numix-Circle"

echo '|========== Numix Icons Activated ==========|'

# Install Git
echo '|========== Installing Git ==========|'

sudo apt-get install -y git

echo '|========== Git Installed ==========|'

# Install Sublime Text

# Install Atom

# Install Docker

# Install VirtualBox

# Install Vagrant

# Install VisualStudio Code

# Install Google Chrome

# Install Firefox
echo '|========== Installing FireFox ==========|'

sudo apt-get install -y firefox firefox-launchpad-plugin 

echo '|========== FireFox Installed ==========|'

# Install FileZilla

# Install MySQL Workbench

# Install Minetest

# Install Google Music Manager

# Install Skype

# Install TeamViewer

# Install BleachBit

# Install WireShark

# Install VLC
