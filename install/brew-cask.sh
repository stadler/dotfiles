#!/bin/bash

# Install Caskroom
brew tap caskroom/cask

# Install packages
apps=(
    google-backup-and-sync
    google-chrome
    java
    java8
    atom
    slack
    whatsapp
    keepassxc
    intellij-idea
    keka
    gpg-suite
)

brew cask install "${apps[@]}"

brew cask cleanup

