winget install --id Microsoft.PowerShell -e
winget install --id Git.Git -e
winget install --id GitHub.cli -e

gh auth login

git clone https://github.com/mrwardkkhs/dotfiles $HOME\dotfiles

pwsh -ExecutionPolicy Bypass -File $HOME\dotfiles\install.ps1
