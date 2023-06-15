$classwork = '~\dev\classwork'
$beginningPython = '~\dev\dtc-2023\year-11-beginning-python'
$dtc = '~\dev\dtc-2023'
$dot = '~\dotfiles\'
function notes {start obsidian://open?vault=Department%20Planning}
function pull-all-repos {bash ~/dotfiles/scripts/pull-all-repos.sh}
function push-all-repos {bash ~/dotfiles/scripts/pull-all-repos.sh}
function clone-all-repos {bash ~/dotfiles/scripts/clone-all-repos.sh}
function new-background {bash ~/dotfiles/scripts/new_background.sh; exit}
Import-Module posh-git
