#!/bin/bash

REINSTALL_FILE="./reinstall.sh"
VAR_FILE="./var.sh"

echo "Getting formulae"
BREW=$(brew list)

echo "Getting casks"
BREW_CASKS=$(brew cask list)

echo "Getting VS Code extensions"
VSC_EXT=$(code --list-extensions)

printf "#!/bin/bash\n\n" > $VAR_FILE
printf "BREW=($BREW)\n\n" >> $VAR_FILE
printf "BREW_CASKS=($BREW_CASKS)\n\n" >> $VAR_FILE
printf "VSC_EXT=($VSC_EXT)\n\n" >> $VAR_FILE