#!/bin/bash

source ./var.sh

brew update

echo "Installing formulae..."
brew install "${BREW[@]}"

echo "Installing casks..."
brew cask install "${BREW_CASKS[@]}"

echo "Installing code extensions..."
code --install-extension "${VSC_EXT[@]}"

echo "Installing yarn"
npm install -g yarn