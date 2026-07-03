winget install Microsoft.PowerShell
winget install Git.Git

git clone https://github.com/mrwardkkhs/dotfiles $HOME\dotfiles

pwsh -ExecutionPolicy Bypass -File $HOME\dotfiles\install.ps1
