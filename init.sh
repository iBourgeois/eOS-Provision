#!/bin/bash

# Install Arc Theme
echo '|========== Installing Arc Theme ==========|'

wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_15.04/Release.key
sudo apt-key add - < Release.key

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install arc-theme

echo '|========== Arc Theme Installed ==========|'
echo '|========== Activating Arc Theme ==========|'

echo '|========== Arc Theme Activated ==========|'

# Install Numix Icons
echo '|========== Installing Numix Icons ==========|'

echo '|========== Numix Icons Installed ==========|'

# Install Git

# Install Sublime Text

# Install Atom

# Install Docker

# Install VirtualBox

# Install Vagrant

# Install VisualStudio Code

# Install Google Chrome

# Install Firefox

# Install FileZilla

# Install MySQL Workbench

# Install Minetest

# Install Google Music Manager

# Install Skype

# Install TeamViewer

# Install BleachBit

# Install WireShark

# Install VLC
