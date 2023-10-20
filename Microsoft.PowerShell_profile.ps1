$classwork = '~\dev\classwork'
$dtc = '~\dev\dtc-2023'
$dotfiles = '~\dotfiles\'
function notes {start obsidian://open?vault=Department%20Planning}
function obsidian([string]$vault)  {start obsidian://open?vault=$vault;}
function pull-all-repos {bash ~/dotfiles/scripts/pull-all-repos.sh;}
function push-all-repos {bash ~/dotfiles/scripts/push-all-repos.sh;}
function clone-all-repos {bash ~/dotfiles/scripts/clone-all-repos.sh;}
function new-background {bash ~/dotfiles/scripts/new_background.sh; exit}
function markdown([string]$file) {python -m rich.markdown $file}
