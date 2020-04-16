#!/bin/bash

# ARGS to be passed = student, sprint name
name=$1
sprint=$2

# need dict to map names to github handles
declare -A Students=( ["Brandi"]="blubrandi" ["Jimmy"]="JimmyMcBride" ["Thomas"]="trodriguez89" ["TJ"]="Thomas-Katalenas" ["Forrest"]="Forrest-Bingham" ["Jerry"]="JerryHaaser" ["Alex"]="astillo" ["Shane"]="sjeremich23" )

# need another dict to map name to branch they usually create
declare -A Branches=( ["Jimmy"]="jimmy-mcbride" ["Brandi"]="brandi" ["Forrest"]="MVP" ["Thomas"]="Thomas-Rodriguez" ["Shane"]="shane-jeremich" ["Alex"]="master" ["Jerry"]="master" )

# which urls will be a constant and should be saved as variables
GH_URL="https://github.com/"
SC_URL="/Sprint-Challenge--"

# clone student sprint branch to their student folder
git clone -b "${Branches[$name]}" "$GH_URL""${Students[$name]}""$SC_URL""$sprint"".git" ~/Desktop/repos/students/"$name"/"$sprint"-SC



