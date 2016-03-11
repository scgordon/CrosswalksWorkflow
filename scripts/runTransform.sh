#!/bin/bash
#This script is uses the xsl created by writeAllRubricTransforms.sh and rubricTransform to create json scorecards for all of the records in the assessed collection.
#This script takes 4 arguments.
#Argument 1 is the collection in the organization being assessed.
#Argument 2 is the recommendation being used to assess the organizations collections.
#Argument 3 is the dialect of the records in the organizations collections being assessed.
#Argument 4 is the organization name.
#It is hoped that batch scripts like jsonCreator.sh that runs the needed instances of this script can be heavily reduced by creating recursion based on organization name and dialect code in the recordSetPath
cd ../
CrosswalkWorkflow=$(pwd) &&
cd ../Crosswalks 
CrosswalkHome=$(pwd) 
recTag=$3
dialectCode=$2
collectionName=$4
orgName=$1
#namespaceString=$5
#found=find $CrosswalkWorkflow
#if [ -d $CrosswalkWorkflow/collections/$4/$1/$3 ]; then
mkdir -p $CrosswalkWorkflow/collections/$orgName/$collectionName/$dialectCode/reports #else
#	echo "This collection ($collectionName) does not use that dialect ($dialectCode)"
#fi |
if [ $# = 4 ]; then
    java net.sf.saxon.Transform \
    -s:$CrosswalkWorkflow/collections/dummy.xml \
    -xsl:$CrosswalkWorkflow/RubricTransforms/$dialectCode/rubric_$recTag'_'$dialectCode.xsl \
    fileNamePattern=*.xml \
    recordSetPath=$CrosswalkWorkflow/collections/$orgName/$collectionName/$dialectCode/xml \
    > $CrosswalkWorkflow/collections/$orgName/$collectionName/$dialectCode/reports/rubric_$recTag'_'$dialectCode.json
    echo 'json created. Please verify before creating a spreadsheet!'
else
    echo 'runTransform argument order: collection (GHRC) recommendation (CSW) dialect (DIF) organization (NASA). Try again.'
fi

	