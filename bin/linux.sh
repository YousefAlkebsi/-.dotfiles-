#!/bin/bash
# linux.sh: Script to set up Linux environment configurations

# Check if the operating system is Linux
if [[ $(uname) != "Linux" ]]; then
    echo "ERROR: This script is only for Linux systems." >> linuxsetup.log
    exit 1
fi

# Create .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

# Back up existing .nanorc file if it exists
if [[ -f ~/.nanorc ]]; then
    mv ~/.nanorc ~/.bup_nanorc
    echo "Backup of .nanorc created as .bup_nanorc." >> linuxsetup.log
fi

# Copy the etc/nanorc content to ~/.nanorc
cp etc/nanorc ~/.nanorc

# Add the source command to .bashrc
if ! grep -q "source ~/.dotfiles/etc/bashrc_custom" ~/.bashrc; then
    echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi
