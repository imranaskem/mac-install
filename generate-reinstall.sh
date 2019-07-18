#!/bin/bash

BREW=$(brew list)
# BREW_CASKS=$(brew cask list)
# VSC_EXT=$(code --list-extensions)

for b in $BREW
do
    echo "Updating $b"
    brew upgrade "$b"
done

# for c in $BREW_CASKS
# do
#     echo "$c is installed"
# done

# for v in $VSC_EXT
# do
#     echo "$v is installed"
# done