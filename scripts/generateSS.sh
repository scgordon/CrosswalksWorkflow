#!/bin/bash
#This script needs two arguments
#Argument 1 is the organization name. This is the directory name in data/bedi/collections e.g. NASA
#Argument 2 is the Recommendation tag. This is the tag element's content for the recommendation components desired.
#The script runs generateSS.py and creates a new file with the output in the organization directory and a file name 
#comprised of the organization name followed by an underscore, a recommendation tag followed by an underscore and the string "recommendation.xlsx"
cd 
CrosswalkHome=$(pwd)
mkdir -p /Users/*/CrosswalksWorkflow/Reports/$1 |

if [ $# = 2 ]; then
./scripts/generateSS.py `find ./collections/$1 -name "*.json" | grep $2` &&

cat ./data14.xslx >> ../Reports/$1/$1_$2_recommendation.xlsx
echo "Generate Spreadsheet successful!"
else 
	echo "Generate Spreadsheet not successful :("