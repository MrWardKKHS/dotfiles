winget install Microsoft.PowerShell
irm get.scoop.sh | iex

scoop bucket add extras
scoop bucket add versions
scoop import ~\dotfiles\scoop.json

winget import -i ~\dotfiles\winget.json

Remove-Item $PROFILE -Force -ErrorAction SilentlyContinue
New-Item -ItemType SymbolicLink -Path $PROFILE -Target ~\dotfiles\Microsoft.PowerShell_profile.ps1

Remove-Item ~\AppData\Local\nvim -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType SymbolicLink -Path ~\AppData\Local\nvim -Target ~\dotfiles\nvim

Get-Content ~\dotfiles\vscode-extensions.txt | ForEach-Object {
    code --install-extension $_
}
