# Dotfiles for Mr Ward's config

To make a hardlink in Powershell:
e.g. between init.vim files
```Powershell
New-Item -ItemType HardLink -Path "~\AppData\Local\nvim\init.vim" -Target "~\dotfiles\init.vim"
```

# Useful additions

npm i -g live-server
