"""
This script creates a tracking xlsx for the beginning python series
on Coding With Mr Ward on Youtube. 

It is intended to be used in conjunction with Github classroom and the 
beginning python template found on MrWardKKHS

It looks through each subdir in this folder (the student repos) and scrapes the bottom line
if it is '# Good Work!' it is marked as correct. Any other comment is incorrect. 
No comment is unmarked.

An xlsx is produced showing student progress.
"""
import pandas as pd
import os
import glob
import re
import sys
from pathlib import Path

dir = sys.argv[1]
print('Making csv')
repos = glob.glob(f'{dir}*/*beginning-python-*/')
columns = ['Handle']


def get_python_filepaths_in_repo(repo: str):
    """
    Return the paths to each of the exercises
    Ignore the test scripts
    """
    reg = re.compile(r'e\d*p\d*.py')
    res = {'files':[], 'file_dirs': []} 
    for root, dirs, files in os.walk(repo):
        for file in files:
            if re.match(r'e\d*p\d*\.py', file):
                res['file_dirs'].append(os.path.join(root, file))
                res['files'].append(file)
                if len(res['file_dirs']) >= 80:
                   return res
    return res


def get_mark_from_file(file_dir):
    """Mark each exercise based on the comment in the last line of the file"""

    with open(file_dir, encoding='utf-8') as file:
        lines = file.readlines()
        try:
            last_line = lines[-1]
        except:
            return " "
        index = -1

        while not last_line.strip():
            index -= 1
            last_line = lines[index]

        if '"""' in last_line:
            return ''
        elif '# Good work!' in last_line or '# Well done!' in last_line:
            return 'Y'
        elif '#' in last_line:
            return 'X'
        
        return '?'

def get_name(repo, handle):
    """Assumes roster_lookup.txt lives in the paren dir"""
    with open(Path(repo).parent / "roster_lookup.txt") as file:
        lines = file.readlines()
        for line in lines:
            *names, handle_lookup = line.strip().split()
            if handle == handle_lookup:
                return " ".join(names)



def get_data():
    """Get a list of all marks in all repos for handing off to pandas"""
    data = []
    for repo in repos:
        handle = repo.split('beginning-python-')[-1].replace('/', '')
        # fix 9s issue
        handle = handle.replace("9s-", "")
        files = get_python_filepaths_in_repo(repo)['file_dirs']
        # Put the student handle in the left most column
        res = [handle]
        names = get_name(repo, handle)
        *firsts, last = names.split()
        for file in sorted(files):
            filename = file.split('/')[-1]
            if filename not in columns:
                print(filename, "not in columns")
                continue
            mark = get_mark_from_file(file)
            res.append(mark)
        right = res.count("Y")
        res.append(str(right))
        res.append(" ".join(firsts))
        res.append(last)
        data.append(res)
    
    return data

first_repo = repos[1]
res = get_python_filepaths_in_repo(first_repo)
files = res['files']
columns.extend(sorted(files))
columns.append("right")
columns.append("firstnames")
columns.append("last name")

data = get_data()
df = pd.DataFrame(data=data, columns=columns)
df = df.sort_values(by=['last name'])

df.to_csv(f'{dir}/student_tracking.csv') 
