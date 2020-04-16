# Clone a students sprint from anywhere in your directory

This script allows you to clone your students sprint into the directory you want. Hopes to save alot of directory switching, as well as needing to copy the link to clone

### Usage
```
./clone_sprint.sh [STUDENT] [SPRINT]
```

The STUDENT argument should match the keys in your hash-table. 

The SPRINT argument should be the specific sprint part of the sprint challenge name. e.g. ```Intro-Python``` for (```Sprint-Challenge--Intro-Python```)

### Setup

This script requires some setup. It also expects a directory structure where you have a separate directory for each student contained within a parent directory all at the same level.

1. Fill out **Github** (first) hash-table. Syntax ```["<student>"]="<github-username>"```. 
The hash-table keys should be the same as the students directory name as it will also be included in the path.

2. Fill out **branch** (second) hash-table. Syntax ```["<student>"]="<working-branch>"```. The hash-table keys should be the same as the students directory name and the first hash-table keys.


