#!/bin/bash

# ARGS to be passed = student, sprint name
name=$1
sprint=$2

# need dict to map names to github handles
declare -A Students=() 

# need another dict to map name to branch they usually create
declare -A Branches=()

# which urls will be a constant and should be saved as variables
GH_URL="https://github.com/"
SC_URL="/Sprint-Challenge--"
PATH_TO_STUDENTS="<fill in your path here>"
# clone student sprint branch to their student folder
git clone -b "${Branches[$name]}" "$GH_URL""${Students[$name]}""$SC_URL""$sprint"".git" "$PATH_TO_STUDENTS""$name"/"$sprint"-SC



