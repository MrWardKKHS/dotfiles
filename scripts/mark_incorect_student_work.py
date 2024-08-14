"""
This script goes through all python files in student repos. 
if they are unmarked it opens them as a quickfix list
"""
import os
import glob
import re
import sys

repos = glob.glob(f'/Users/alexward/schoolwork/*/*beginning-python-*/')

def get_python_filepaths_in_repo(repo: str):
    """
    Return the paths to each of the exercises
    Ignore the test scripts
    """
    reg = re.compile(r'e\d*p\d*.py')
    res = {'files':[], 'file_dirs': []} 
    for root, dirs, files in os.walk(repo):
        for file in files:
            if re.match(r'e\d*p\d*\.py$', file):
                res['file_dirs'].append(os.path.join(root, file))
                res['files'].append(file)
                if len(res['file_dirs']) >= 80:
                   return res
    return res


def check_if_unmarked(file_dir):
    """Mark each exercise based on the comment in the last line of the file"""

    with open(file_dir, encoding='utf-8') as file:
        lines = file.readlines()
        try:
            last_line = lines[-1]
        except:
            return False
        index = -1

        while not last_line.strip():
            index -= 1
            last_line = lines[index]

        if '"""' in last_line:
            return False 
        elif '#' in last_line and not 'Well done!' in last_line:
            return True
        
        return False

def get_data():
    """Get a list of all marks in all repos for handing off to pandas"""
    data = []
    for repo in repos:
        files = get_python_filepaths_in_repo(repo)['file_dirs']
        res = []
        for file in sorted(files):
            if check_if_unmarked(file):
                res.append(file)
        data.extend(res)
    
    return data

data = get_data()

argslist = " ".join(data)
os.system(f"nvim {argslist}")
