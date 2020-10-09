
generate_data () {
    VAR_FILE="./data/var.sh"
    ZSH_FILE="./data/.zshbackup"

    git checkout master && git pull

    echo "Getting formulae..." >&2
    BREW=$(brew list)

    echo "Getting casks..." >&2
    BREW_CASKS=$(brew list --cask)

    echo "Getting code extensions..." >&2
    VSC_EXT=$(code --list-extensions)

    {
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
}
