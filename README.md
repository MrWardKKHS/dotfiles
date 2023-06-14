# Dotfiles for Mr Ward's config

## clone repo to $HOME
```Powershell
git clone https://github.com/mrwardkkhs/dotfiles
```

## install Packer
```powershell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

## Make a symlink between repo and settings in Powershell:
e.g. between init.vim files
```Powershell
New-Item -ItemType SymbolicLink -Path ~\AppData\Local\nvim  -Target ~\dotfiles\nvim\
```

## Download scoop
```Powershell
irm get.scoop.sh | iex
```

## Install Zig
```
scoop install zig
```

## open nvim and run 
```vim
:PackerSync
```


# Useful additions

npm i -g live-server

# Todo
- [ ] Update install instructions with 
    - ripgrep

- [ ] add emoji replacements
- [ ] create ColorMyPencils() equivalent for projecting
- [ ] Import remaps
    - runscript
    - jump to settings
- [ ] Code completion COC as LSP?
- [ ] Bring in other Plugs
    - vim-unimpaired
    - emmet
    - vim-be-good
- [ ] create keybidings for marking work
    - Mark as correct
    - Mark as needs improvement
    - Jump to next repo 
