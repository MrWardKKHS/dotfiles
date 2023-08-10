$classwork = '~\dev\classwork'
$beginningPython = '~\dev\dtc-2023\year-10-beginning-python'
$y13Games = '~\dev\dtc-2023\y13-game-dev'
$y12Games = '~\dev\dtc-2023\y12-game-dev'
$dtc = '~\dev\dtc-2023'
$dotfiles = '~\dotfiles\'
function notes {start obsidian://open?vault=Department%20Planning}
function obsidian([string]$vault)  {start obsidian://open?vault=$vault;}
function pull-all-repos {bash ~/dotfiles/scripts/pull-all-repos.sh;}
function push-all-repos {bash ~/dotfiles/scripts/push-all-repos.sh;}
function clone-all-repos {bash ~/dotfiles/scripts/clone-all-repos.sh;}
function new-background {bash ~/dotfiles/scripts/new_background.sh; exit}
function markdown([string]$file) {python -m rich.markdown $file}
function update-beginning-python-repos {
    cd $beginningPython; 
    pull-all-repos; 
    python update_student_tracking.py;
    ./student_tracking.xlsx;
}
function scifair {
    cd ~/dev/django-scifair/scifair; 
    ./.venv/scripts/Activate.ps1;
    start python "./manage.py runserver";
    Start-Sleep -s 5
    C:\"Program Files"\"Firefox Developer Edition"\firefox.exe "http://127.0.0.1:8000";
}
Import-Module posh-git
