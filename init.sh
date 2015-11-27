#!/bin/bash

# Add Repository Keys
    # Arc Theme
    wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_15.04/Release.key
    sudo apt-key add - < Release.key
    # Google Chrome
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 

# Add Repositories
    # Arc Theme
    sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
    # Numix Theme
    sudo add-apt-repository -y ppa:numix/ppa
    # Google Chrome
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    # Sublime Text 3
    sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
    
# Update && Upgrade
sudo apt-get update && sudo apt-get upgrade -y

# Install Arc Theme
echo '|========== Installing Arc Theme ==========|'
sudo apt-get install -y arc-theme
echo '|========== Arc Theme Installed ==========|'
echo '|========== Activating Arc Theme ==========|'
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Darker"
gsettings set org.gnome.desktop.wm.preferences theme "Arc-Darker"
echo '|========== Arc Theme Activated ==========|'

# Install Numix Icons
echo '|========== Installing Numix Icons ==========|'
sudo apt-get install -y numix-icon-theme-circle
echo '|========== Numix Icons Installed ==========|'
echo '|========== Activating Numix Icons ==========|'
gsettings set org.gnome.desktop.interface icon-theme "Numix-Circle"
echo '|========== Numix Icons Activated ==========|'

# Install Git
echo '|========== Installing Git ==========|'
sudo apt-get install -y git
echo '|========== Git Installed ==========|'

# Install Sublime Text 3
echo '|========== Installing Sublime Text 3 ==========|'
sudo apt-get install -y sublime-text-installer
echo '|========== Sublime Text 3 Installed ==========|'

# Install Atom

# Install Docker

# Install VirtualBox
echo '|========== Installing VirtualBox ==========|'
sudo apt-get install -y virtualbox
echo '|========== VirtualBox Installed ==========|'

# Install Vagrant

# Install VisualStudio Code

# Install Google Chrome
echo '|========== Installing Google Chrome ==========|'
sudo apt-get install -y google-chrome-stable
echo '|========== Google Chrome Installed ==========|'

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

# Build Bash Profile
echo '|========== Building Bash Profile ==========|'
echo "alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias c='clear'
alias h='cd ~/'
alias hc='h && c'
alias back='cd \$OLDPWD'

alias ff='find . -type f -name'
alias fd='find . -type d -name'

alias now='date +%T'

alias add='subl ~/.bash_aliases'
alias reload='source ~/.bashrc && clear'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias orphand='sudo deborphan | xargs sudo apt-get -y remove --purge'
alias cleanup='sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean && sudo apt-get remove && orphand'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'

extract () {
    if [ -f \$1 ] ; then
        case \$1 in
            *.tar.bz2)   tar xvjf \$1    ;;
            *.tar.gz)    tar xvzf \$1    ;;
            *.bz2)       bunzip2 \$1     ;;
            *.rar)       rar x \$1       ;;
            *.gz)        gunzip \$1      ;;
            *.tar)       tar xvf \$1     ;;
            *.tbz2)      tar xvjf \$1    ;;
            *.tgz)       tar xvzf \$1    ;;
            *.zip)       unzip \$1       ;;
            *.Z)         uncompress \$1  ;;
            *.7z)        7z x \$1        ;;
            *)           echo \"don't know how to extract '\$1'...\" ;;
        esac
    else
        echo \"'\$1' is not a valid file!\"
    fi
}" > ~/.bash_aliases
echo '|========== Bash Profile Built ==========|'
