#!/bin/bash
#This script is uses the xsl created by writeAllRubricTransforms.sh and rubricTransform to create json scorecards for all of the records in the assessed collection.
#This script takes 4 arguments.
#Argument 1 is the collection in the organization being assessed.
#Argument 2 is the recommendation being used to assess the organizations collections.
#Argument 3 is the dialect of the records in the organizations collections being assessed.
#Argument 4 is the organization name.
#It is hoped that batch scripts like jsonCreator.sh that runs the needed instances of this script can be heavily reduced by creating recursion based on organization name and dialect code in the recordSetPath
cd ../
CrosswalkWorkflow=$(pwd)
cd ../Crosswalks 
CrosswalkHome=$(pwd) 

    java net.sf.saxon.Transform \
    -s:$CrosswalkWorkflow/collections/dummy.xml \
    -xsl:$CrosswalkHome/dialectRubrics/rubric$2.xsl \
    -o:$CrosswalkWorkflow/collections/$1/$3/$2/reports/data.csv \
    fileNamePattern=*.xml \
    recordSetPath=$CrosswalkWorkflow/collections/$1/$3/$2/xml \
    dialectName=$2 \
    delimiter=',' \
   

	