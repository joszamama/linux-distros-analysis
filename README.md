# Analysis of different linux distributions

To generate all the csvs and be able to work with the dataset, you must first follow these steps:

1. Go to the distros/ubuntu folder, you will find different subfolders, one for each version of ubuntu analyzed.
2. For each subfolder, enter it and you will find a scripts directory. If you are on Windows, run the .cmd file, or if you are on Linux or MacOS, the .sh file.
3. This will start generating a .txt file in the output folder, do this for each version inside ubuntu.
4. (OPTIONAL) Now you can run the count.py operator inside /operators, it will give us information about the number of packages and their types.
5. Now run the ubuntu-constructor.py operator, this python script will launch 4 parallel jobs that will parse each .txt into a csv, and then merge the 4 individual csv's into one, which we can work with.