#!/bin/bash

REINSTALL_FILE="./reinstall.sh"
VAR_FILE="./data/var.sh"
ZSH_FILE="./data/.zshbackup"

echo "Getting formulae..."
BREW=$(brew list)

echo "Getting casks..."
BREW_CASKS=$(brew cask list)

echo "Getting code extensions..."
VSC_EXT=$(code --list-extensions)

printf "#!/bin/bash\n\n" > $VAR_FILE
printf "BREW=($BREW)\n\n" >> $VAR_FILE
printf "BREW_CASKS=($BREW_CASKS)\n\n" >> $VAR_FILE
printf "VSC_EXT=($VSC_EXT)\n\n" >> $VAR_FILE
cat ~/.zshrc > $ZSH_FILE
cp ~/Library/Preferences/com.googlecode.iterm2.plist ./data/com.googlecode.iterm2.plist