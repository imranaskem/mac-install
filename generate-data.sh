#!/bin/bash

VAR_FILE="./data/var.sh"
ZSH_FILE="./data/.zshbackup"

git checkout master && git pull

echo "Getting formulae..."
BREW=$(brew list)

echo "Getting casks..."
BREW_CASKS=$(brew cask list)

echo "Getting code extensions..."
VSC_EXT=$(code --list-extensions)

{
    printf "#!/bin/bash\n\n"
    printf "BREW=(%s)\n\n" "$BREW"
    printf "BREW_CASKS=(%s)\n\n" "$BREW_CASKS"
    printf "VSC_EXT=(%s)\n\n" "$VSC_EXT"
} > $VAR_FILE


cat ~/.zshrc > $ZSH_FILE
cp ~/Library/Preferences/com.googlecode.iterm2.plist ./data/com.googlecode.iterm2.plist
cp ~/Library/Application\ Support/Code/User/settings.json ./data/settings.json

date=$(date '+%Y-%m-%d %H:%M:%S')
commitMessage="New data on $date"

git add .
git commit -m "$commitMessage"
git push