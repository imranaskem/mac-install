#!/bin/bash

source ./data/var.sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

echo "Installing formulae..."
brew install "${BREW[@]}"

echo "Installing casks..."
brew cask install "${BREW_CASKS[@]}"

echo "Installing code extensions..."
code --install-extension "${VSC_EXT[@]}"

echo "Installing yarn"
npm install -g yarn

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cat ./data/.zshbackup > ~/.zshrc

cp ./data/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
cp ./data/settings.json ~/Library/Application\ Support/Code/User/settings.json