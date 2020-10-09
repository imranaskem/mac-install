
git_setup () {
    ssh-keygen -t rsa -b 4096 -N "" -C "imran.askem@gmail.com" -f ~/.ssh/is_rsa -q

    eval "$(ssh-agent -s)"

    cp ./data/config ~/.ssh/config

    ssh-add -K ~/.ssh/id_rsa

    pbcopy < ~/.ssh/id_rsa.pub
    echo "Your public key has been copied to your clipboard, go to GitHub and add it to your profile"

    git config --global user.name "Imran Askem"
    git config --global user.email "imran.askem@gmail.com"

    echo "Git is now setup!"
}