#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Install the Homebrew packages I use on a day-to-day basis.
apps=(
    bash-completion@2
    git
    brew-cask-completion
    python3
    tree
    wget
    zsh
    zsh-completions
    ssh-copy-id
    maven
    gnupg
    nmap
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
