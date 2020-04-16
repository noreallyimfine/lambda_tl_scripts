#!/bin/bash

# Optiona arg for a directory to run tests in
# Default: current directory
if [ ! -z $1 ]; then
				REPO=$1
else
				REPO=$(pwd)
fi

### function so I can use recursion
runTests () {
				echo "Passed repo $1"
				local path=$1
				# list dir into variable 
				local listedDir=$(ls "$1")
				# iterate through listed dir
				for f in $listedDir; do
						echo "$f"
						if [[ $f =~ .*test* ]]; then
									echo "Running test on file '$f'"
									python $path/$f -v
						elif [[ -d $path$f/ ]]; then
									echo "Directory '$f'"
									runTests "$path$f/"
						fi
				done
				# If you make it to the end, pop off the last directory
}

				# check if 'test' in any of the filenames
				# if yes, loop through and run all the test files
#								testFile=$(grep test "$listedDir")
#								for f in $testFile; do
#								done
				
				# if not..
#				else 
#							echo "No tests, listing file"
#							echo "$f"
							# if its a dir
#							if [ -d "$f" ]; then
#											echo "Directory $f"
#											# run this function on the dir
#											# $(runTests $f)
#						fi
#					done
#				fi


runTests "$REPO"

