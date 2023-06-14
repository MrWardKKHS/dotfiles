# Dotfiles for Mr Ward's config

To make a hardlink in Powershell:
e.g. between init.vim files
```Powershell
New-Item -ItemType HardLink -Path "~\AppData\Local\nvim\init.vim" -Target "~\dotfiles\init.vim"
```

# Useful additions

npm i -g live-server

# Todo
- [ ] Update install instructions with 
    - scoop
    - Lsp
    - ripgrep
    - ...
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
