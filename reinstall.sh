#!/bin/bash

brews=(
    go
    docker-compose
    node
    zsh
    zsh-completions
)

casks=(
    docker
    dotnet-sdk
    postman
    font-fira-code
    iterm2
    visual-studio-code
    spotify
    gitkraken
    whatsapp
    steam
)

npm=(
    yarn
)

vscode=(
    coenraads.bracket-pair-colorizer-2
    ms-vscode.csharp
    mikestead.dotenv
    ybaumes.highlight-trailing-white-spaces
    ms-vscode.go
    vscode-icons-team.vscode-icons
    eamodio.gitlens
    dbaeumer.vscode-eslint
    ms-azuretools.vscode-docker
)

brew install <brews>

brew cask install <casks>

vscode --install-extension <ext>

npm install <npm> -g