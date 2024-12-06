#!/bin/bash
# cleanup.sh: Reverts changes made by linux.sh

# Remove the .TRASH dir
rm -rf ~/.TRASH

# Remove the .nanorc file
rm -f ~/.nanorc

# Remove the line sourcing bashrc_custom from .bashrc
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc
