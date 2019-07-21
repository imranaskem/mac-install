# Mac Install

A script for generating data on brew formulae/casks and installed VS Code extensions which can be used to reinstall everything on another machine.

## How to use this repo

There are two main files of interest in this repo: generate-data.sh and reinstall.sh.

### generate-data.sh

Run this to generate the data folder, it will log all of the following:
- Installed brew formulae
- Installed brew casks
- Installed VS Code extensions
- VS Code Settings
- iTerm2 settings
- .zshrc

### reinstall.sh

After running generate-data.sh, this file will use the data generate to reinstall all the items logged above and install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
