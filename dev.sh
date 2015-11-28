#!/bin/bash

# Check to see if Repositories have been added

# Add Repository Keys
echo '|========== Installing Repository Keys ==========|'
    # Arc Theme
    wget -q http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_15.04/Release.key | sudo apt-key add - 
    # Google Chrome
    wget -q https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
    # VirtualBox
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo '|========== Repository Keys Installed ==========|'

# Add Repositories
echo '|========== Installing Repositories ==========|'
    # Arc Theme
    sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
    # Paper Theme
    sudo add-apt-repository -y ppa:snwh/pulp
    # Numix Theme
    sudo add-apt-repository -y ppa:numix/ppa
    # Google Chrome
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    # Sublime Text 3
    sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
    # Atom
    sudo add-apt-repository -y ppa:webupd8team/atom
    # VirtualBox
    sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian vivid contrib" >> /etc/apt/sources.list.d/virtualbox.list'
echo '|========== Reositories Installed ==========|'

# Update && Upgrade
sudo apt-get update && sudo apt-get upgrade -y

# Install Paper Theme
echo '|========== Installing Paper Theme ==========|'
sudo apt-get install -y paper-gtk-theme
echo '|========== Paper Theme Installed ==========|'

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
sudo apt-get install -y numix-icon-theme-circle numix-folders numix-tools
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
echo '|========== Installing Package Control ==========|'
cd ~/ && wget -O ".config/sublime-text-3/Installed Packages/Package Control.sublime-package" https://packagecontrol.io/Package%20Control.sublime-package
echo '|========== Package Control Installed ==========|'

# Install Atom
echo '|========== Installing Atom ==========|'
sudo apt-get install -y atom
echo '|========== Atom Installed ==========|'

# Install Docker
echo '|========== Installing Docker ==========|'
wget -qO- https://get.docker.com/ | sudo sh
sudo usermod -aG docker $(whoami)
echo '|========== Docker Installed ==========|'

# Install VirtualBox
echo '|========== Installing VirtualBox ==========|'
sudo apt-get install -y virtualbox-5.0
echo '|========== VirtualBox Installed ==========|'

# Install Vagrant
echo '|========== Installing Vagrant ==========|'
wget https://releases.hashicorp.com/vagrant/1.7.4/vagrant_1.7.4_x86_64.deb
sudo dpkg -i vagrant_1.7.4_x86_64.deb
sudo apt-get install -y linux-headers-$(uname -r)
sudo dpkg-reconfigure virtualbox-dkms
echo '|========== Vagrant Installed ==========|'

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
echo '|========== Installing FileZilla ==========|'
sudo apt-get install -y filezilla
echo '|========== FileZilla Installed ==========|'

# Install MySQL Workbench
echo '|========== Installing MySQL Workbench ==========|'
sudo apt-get install -y mysql-workbench
echo '|========== MySQL Workbench Installed ==========|'

# Install Minetest
echo '|========== Installing Minetest ==========|'
sudo apt-get install -y minetest
echo '|========== Minetest Installed ==========|'

# Install Google Music Manager

# Install Skype

# Install TeamViewer
echo '|========== Installing TeamViewer ==========|'
wget "http://download.teamviewer.com/download/teamviewer_i386.deb" 
sudo dpkg -i teamviewer_i386.deb
echo '|========== TeamViewer Installed ==========|'

# Install BleachBit
echo '|========== Installing BleachBit ==========|'
sudo apt-get install -y bleachbit
echo '|========== BleachBit Installed ==========|'

# Install Wireshark
echo '|========== Installing Wireshark ==========|'
sudo apt-get install -y wireshark
echo '|========== Wireshark Installed ==========|'

# Install VLC
echo '|========== Installing VLC ==========|'
sudo apt-get install -y vlc
echo '|========== VLC Installed ==========|'

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
