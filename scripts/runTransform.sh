#!/bin/bash
#This script is uses the xsl created by writeAllRubricTransforms.sh and rubricTransform to create json scorecards for all of the records in the assessed collection.
#This script takes 4 arguments.
#Argument 1 is the collection in the organization being assessed.
#Argument 2 is the recommendation being used to assess the organizations collections.
#Argument 3 is the dialect of the records in the organizations collections being assessed.
#Argument 4 is the organization name.
#It is hoped that batch scripts like jsonCreator.sh that runs the needed instances of this script can be heavily reduced by creating recursion based on organization name and dialect code in the recordSetPath

mkdir -p /Users/*/CrosswalksWorkflow/collections/$4/$1/$3/reports/ |
if [ $# = 4 ]; then
    java net.sf.saxon.Transform \
    -s:/Users/*/CrosswalkWorkflow/collections/dummy.xml \
    -xsl:/Users/*/Crosswalks/RubricTransforms/$3/rubric_$2_$3.xsl \
    fileNamePattern=*.xml \
    recordSetPath=/Users/*/CrosswalksWorkflow/collections/$4/$1/$3/XML \
    > /Users/*/CrosswalksWorkflow/collections/$4/$1/$3/reports/rubric_$2_$3.json
else
    echo 'runTransform collection (GHRC) recommendation (CSW) dialect (DIF) organization (NASA)'
fi
