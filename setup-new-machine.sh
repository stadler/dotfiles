# Copy paste this file in bit by bit.
# Don't run it.

echo "Do not run this script in one go. Hit Ctrl-C NOW"
read -n 1

###############################################################################
# Homebrew                                                                    #
###############################################################################

$HOME/dotfiles/install/brew.sh
$HOME/dotfiles/install/brew-cask.sh

###############################################################################
# OSX defaults                                                                #
# https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh
###############################################################################

sh set-osx-defaults.sh

###############################################################################
# Symlinks to link dotfiles into ~/                                           #
###############################################################################

./setup.sh
