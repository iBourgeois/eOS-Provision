#!/bin/bash

# Add Repository Keys
echo '|========== Installing Repository Keys ==========|'
    # Arc Theme
    wget -q http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_15.04/Release.key | sudo apt-key add - 
echo '|========== Repository Keys Installed ==========|'

# Add Repositories
echo '|========== Installing Repositories ==========|'
    # Arc Theme
    sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
    # Paper Theme
    sudo add-apt-repository -y ppa:snwh/pulp
    # Numix Theme
    sudo add-apt-repository -y ppa:numix/ppa
echo '|========== Reositories Installed ==========|'

# Update && Upgrade
sudo apt-get update && sudo apt-get upgrade -y

# Install Paper Theme
echo '|========== Installing Paper Theme ==========|'
sudo apt-get install -y paper-gtk-theme
echo '|========== Paper Theme Installed ==========|'
echo '|========== Activating Paper Theme ==========|'
gsettings set org.gnome.desktop.interface gtk-theme "Paper"
gsettings set org.gnome.desktop.wm.preferences theme "Paper"
echo '|========== Paper Theme Activated ==========|'

# Install Arc Theme
echo '|========== Installing Arc Theme ==========|'
sudo apt-get install -y arc-theme
echo '|========== Arc Theme Installed ==========|'

# Install Numix Icons
echo '|========== Installing Numix Icons ==========|'
sudo apt-get install -y numix-icon-theme-circle numix-folders numix-tools
echo '|========== Numix Icons Installed ==========|'
echo '|========== Activating Numix Icons ==========|'
gsettings set org.gnome.desktop.interface icon-theme "Numix-Circle"
echo '|========== Numix Icons Activated ==========|'

# Install Minetest
echo '|========== Installing Minetest ==========|'
sudo apt-get install -y minetest
echo '|========== Minetest Installed ==========|'

# Install BleachBit
echo '|========== Installing BleachBit ==========|'
sudo apt-get install -y bleachbit
echo '|========== BleachBit Installed ==========|'

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
