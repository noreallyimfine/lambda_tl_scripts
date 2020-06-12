#!/bin/bash

# ARGS to be passed = student, sprint name
name=$1
sprint=$2

# need dict to map names to github handles
declare -A Students=(["Mandi"]="haase1020" ["Andrew"]="BaiganKing" ["Josiah"]="josiahbailey" ["Austin"]="AustinPotts" ["Amber"]="amohler09" ["Reece"]="reeceap124" ["Joe"]="jbell1991" ["Edvin"]="VodeniZeko") 

# need another dict to map name to branch they usually create
declare -A Branches=(["Mandi"]="mandi_haase" ["Andrew"]="master" ["Josiah"]="josiah-bailey" ["Austin"]="master" ["Amber"]="amber-mohler" ["Reece"]="reece-pierson" ["Joe"]="joseph-bell" ["Edvin"]="sprint")

# which urls will be a constant and should be saved as variables
GH_URL="https://github.com/"
SC_URL="/Sprint-Challenge--"
PATH_TO_STUDENTS="C:/Users/jayja/Desktop/repos/students/"
# clone student sprint branch to their student folder
git clone -b "${Branches[$name]}" "$GH_URL""${Students[$name]}""$SC_URL""$sprint"".git" "$PATH_TO_STUDENTS""$name"/"$sprint"-SC



