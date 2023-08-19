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

repos = glob.glob('./*beginning-python-*/')

def get_python_filepaths_in_repo(repo: str):
    """
    Return the paths to each of the exercises
    Ignore the test scripts
    """
    reg = re.compile(r'e\dp\d\.py')
    res = {'files':[], 'file_dirs': []} 
    for root, dirs, files in os.walk(repo):
        _files = [file for file in files if re.match()]
        for file in files:
            
            if 'test_e' in file:
                continue
            if :
                res['file_dirs'].append(os.path.join(root, file))
                res['files'].append(file)
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
            return ' '
        elif '# Good work!' in last_line:
            return '✅'
        elif '#' in last_line:
            return '❌'
        
        return '❓'

def get_data():
    """Get a list of all marks in all repos for handing off to pandas"""
    data = []
    for repo in repos:
        handle = repo.split('beginning-python-')[-1].replace('\\', '')
        files = get_python_filepaths_in_repo(repo)['file_dirs']
        # Put the student handle in the left most column
        res = [handle]
        for file in files:
            mark = get_mark_from_file(file)
            res.append(mark)
        data.append(res)
    
    return data


columns = ['Handle']
first_repo = repos[0]
res = get_python_filepaths_in_repo(first_repo)
files = res['files']
columns.extend(files)

data = get_data()
df = pd.DataFrame(data=data, columns=columns)

try:
    df.to_excel('student_tracking.xlsx') 
except:
    print("please close excell and try again")
    input("press enter to continue")
