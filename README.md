# Mac Install

A CLI for generating data on brew formulae/casks and installed VS Code extensions which can be used to reinstall everything on another machine.

## How to use this repo

The base CLI command is macmgmt.

There are three flags that are used to operate this CLI:
 - -g - Generates the config for later reinstallation
 - -r - Reinstalls from config in the data folder
 - -h - Shows help

### macmgmt -g

Run this to generate the data folder, it will log all of the following:
- Installed brew formulae
- Installed brew casks
- Installed VS Code extensions
- VS Code Settings
- iTerm2 settings
- .zshrc

### macmgmt -r

After generating data, this will use the data folder to reinstall all the items logged above and install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
