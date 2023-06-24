# Dotfiles for Mr Ward's config

## clone repo to $HOME
```Powershell
cd ~ && git clone https://github.com/mrwardkkhs/dotfiles
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

## Download scoop
```Powershell
irm get.scoop.sh | iex
```

## Install Zig and ripgrep
```powershell
scoop install zig ripgrep
```

## open nvim and run 
```vim
:PackerSync
```

## install pyright
```vim
:CocInstall coc-pyright
```

# Useful additions

npm i -g live-server


# Todo
- [ ] Update install instructions with 
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
