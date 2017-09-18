#!/bin/bash

# Install Caskroom
brew tap caskroom/cask

# Install packages
apps=(
    google-backup-and-sync
    google-chrome
    java
    atom
    intellij-idea-ce
    slack
    whatsapp
    keepassxc
)

brew cask install "${apps[@]}"

brew cask cleanup

