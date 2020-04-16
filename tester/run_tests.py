'''Script to run all the tests in a repo at once.
   
   Takes in optional argument of a directory to run tests from. Default to current directory. 

    Recursively searches all nested directories for tests so don't run from too high up in your directory tree or it will be a mess
'''


import os
import sys

# Check for arg passed in or get current directory
if len(sys.argv) > 1:
    REPO = sys.argv[1]
else:
    REPO = os.getcwd()

print(REPO)

def tester(path):
    # List directory
    dir_list = os.listdir(path)
    # Loop through items
    for item in dir_list:
        # Check if it contains 'test' and is a 'py' file
        # if yes, run the file
        if "test" in item and ".py" in item:
            os.system(f"python {path}/{item} -v")
        # Check if it's a directory
        # if yes...
        elif os.path.isdir(os.path.join(path, item)):
            # new path is the old path plus the new directory
            cur_path = f"{path}/{item}"
            # recurse on new directory
            tester(cur_path)

tester(REPO)
