# Dotfiles for Mr Ward's config

> These instructions assume a full set up of a new computer

# Ensure latest version of powershell is installed 
```powershell
winget install Microsoft.PowerShell
```

## Download scoop
```Powershell
irm get.scoop.sh | iex
```

## Install Zig and ripgrep
```powershell
scoop install zig ripgrep neovim git
```

## clone repo to $HOME
```Powershell
cd ~; git clone https://github.com/mrwardkkhs/dotfiles
```

## install Packer
```powershell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

## Make a symlink between repo and nvim settings in Powershell:
e.g. between init.vim files
```Powershell
New-Item -ItemType SymbolicLink -Path ~\AppData\Local\nvim  -Target ~\dotfiles\nvim\
```

## Hardlink terminal profiles
```powershell
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


# Extras with scoop
```powershell
scoop bucket add extras
scoop install windows-terminal blender firefox posh-git nodejs vscode obsidian obs-studio tiled discord ffmpeg 7zip steam
```
# Useful additions
live server
```
npm i -g live-server
```

gh cli for gihub classroom
```
scoop bucket add github-gh https://github.com/cli/scoop-gh.git
scoop install gh
gh extension install github/gh-classroom
```
# Todo
- [x] Update install instructions with 
    - ripgrep

- [x] add emoji replacements
- [x] create ColorMyPencils() equivalent for projecting
- [x] Import remaps
    - runscript
    - jump to settings
- [x] Bring in other Plugs
    - vim-unimpaired
    - emmet
    - vim-be-good
- [ ] create keybidings for marking work
    - Mark as correct
    - Mark as needs improvement
