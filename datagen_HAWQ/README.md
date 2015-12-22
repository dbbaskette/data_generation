### Usage:
* modify main_config.json and json profiles to your liking
* run 'python create_pickles.py <transaction start date MM-DD-YYYY> <end date>' (number of years be consistent with number of years in the profiles, which is 3 by default)
* install fake-factory (tarball included) and numpy. you can use `pip install <package>` or unzip the package tarballs and run `python setup.py build; python setup.py install` in the package directory.
* to test usage, run 'python EXECUTE.py' for to generate 1 customer's transactions
* to create a dataset trans_fact.csv, run 'sh GENERATE_DATASET.sh N' where N is the desired number of customers
* to run in HAWQ
  * move this directory to the same location on each HAWQ host 
  * run ./process_datagen.sh <# of customers> to generate data in HAWQ ('trans_fact' table and 'spending' view)
  * roughly 2000 customers per 1 GB of data as a default
* note/TODO: as a default, the travel values are set too high