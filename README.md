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

## Download scoop
```Powershell
irm get.scoop.sh | iex
```

## Install Zig
```powershell
scoop install zig
```

## open nvim and run 
```vim
:PackerSync
```

# Useful additions

npm i -g live-server

## sync terminal settings
```powershell
Remove-Item -Path $Env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState -Force -Recurse
```

```powershell
New-Item -ItemType SymbolicLink -Path "$Env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState" -Target "~\dotfiles\terminal\"
```

# Todo
- [ ] Update install instructions with 
    - ripgrep

- [x] add emoji replacements
- [ ] create ColorMyPencils() equivalent for projecting
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
