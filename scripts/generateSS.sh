#!/bin/bash
#This script needs two arguments
#Argument 1 is the organization name. This is the directory name in data/bedi/collections e.g. NASA
#Argument 2 is the Recommendation tag. This is the tag element's content for the recommendation components desired.
#The script runs generateSS.py and creates a new file with the output in the organization directory and a file name 
#comprised of the organization name followed by an underscore, a recommendation tag followed by an underscore and the string "recommendation.xlsx"
if [ $# = 2 ]; then
	mkdir -p /Users/*/CrosswalksWorkflow/Reports/$1 |
cd ../
./scripts/generateSS.py `find ./collections/$1 -name "*.json" | grep $2` &&
cat /Users/*/CrosswalksWorkflow/data14.xslx >> /Users/*/CrosswalksWorkflow/Reports/$1/$1_$2_recommendation.xlsx
else 
	echo "organization name (NASA) recommendation tag (CSW)"