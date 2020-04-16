# Tester Script

These scripts will auto run all the test files. Hope to save alot of directory switching and running the same `python [file] -v`

## Usage

For bash script:
			```./run_tests.sh [OPTION DIR]```

			If you get a ```Permission Error``` run ```chmod +x run_test.sh``` then run the file again.
For python script:
			```python
			python run_tests.py [OPTION DIR]
			```

If you don't pass a directory, it defaults to the current directory.

**WARNING**

Recursively searches nested directories for test files. Don't run from too high up in your directory tree.


		
