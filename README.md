# Dotfiles for Mr Ward's config

> These instructions assume a full set up of a new mac computer
> To see windows set up use `git checkout tumu`

## Download Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install Zig and ripgrep neovim git
```bash
brew install zig ripgrep neovim git
```

## clone repo to $HOME
```bash
cd ~ && git clone https://github.com/mrwardkkhs/dotfiles
```

## install Packer
```bash
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

# Todo make sure mac nvim install location is right
## Make a symlink between repo and nvim settings in Powershell:
e.g. between init.vim files
```bash
New-Item -ItemType SymbolicLink -Path ~\AppData\Local\nvim  -Target ~\dotfiles\nvim\
```

## Hardlink terminal profiles
(not yet converted)
```bash
rm $profile; New-Item -ItemType Hardlink -Path $profile  -Target ~\dotfiles\Microsoft.PowerShell_profile.ps1
```

## open nvim and run 
```vim
:PackerSync
```

## install pyright
```vim
:CocInstall coc-pyright
```

## install Oh my zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# Extras with Homebrew
```bash
brew install --cask blender firefox node visual-studio-code obsidian obs discord steam
brew install ffmpeg 7zip
```

# Useful additions
live server
```
npm i -g live-server
```

gh cli for gihub classroom
```
brew install gh
gh extension install github/gh-classroom
```

posh-git-bash
```
https://github.com/lyze/posh-git-sh
```

# TODO:
- Finish hardlinking profiles
- python
- Change C complie command in code runner and target architecture
