#!/bin/bash

source ./var.sh

brew update

for b in $BREW
do
    echo "Installing $b"
    brew install "$b"
done

for c in $BREW_CASKS
do
    echo "Installing $c"
    brew cask install "$c"
done

for v in $VSC_EXT
do
    echo "Installing code extension $v"
    code --install-extension "$v"
done