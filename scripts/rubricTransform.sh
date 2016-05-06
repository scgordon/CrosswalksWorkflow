#!/usr/local/bin/bash
# This script creates xsl that can be used to score records and create json with the results.
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess.
# Eventually it would be good to make this script read AllCrosswalks.xml for the cw:spiral/cw:tag, and write the cooresponding cw:spiral/cw:code to the spiralDisplayListString. This will ensure that the Recommendation Tags in this script do not drift from those available in AllCrossWalks.xml, ensuring all documented options on the ESIP wiki are viable.
cd ../
CrosswalkWorkflow=$(pwd)
cd ../Crosswalks
CrosswalkHome=$(pwd)
mkdir -p $CrosswalkWorkflow/RubricTransforms/$2 

declare -A RecommendationTag
RecommendationTag[ACDD]="ACDD_highlyRecommended,ACDD_recommended,ACDD_suggested"
RecommendationTag[CSW]="CSWCoreQueryables,CSWCoreReturnables,CSWAdditionalQueryables"
RecommendationTag[DCITE]="DataCite3.1Mandatory,DataCite3.1Recommended,DataCite3.1Optional"
RecommendationTag[UMM-Common]="UMM-Common_Required,UMM-Common_Optional"
RecommendationTag[ISO-1]="ISO-1_Discovery-Mandatory,ISO-1_Discovery-Conditional,ISO-1_Discovery-Optional"
RecommendationTag[LTER]="LTER_Identification,LTER_Discovery,LTER_Evaluation,LTER_Access,LTER_Integration"
RecommendationTag[FGDC]="FGDC_Mandatory,FGDC_MandatoryIfApplicable"

echo Transform Recommendation Tag: ${RecommendationTag[$1]}


java net.sf.saxon.Transform \
-s:$CrosswalkHome/AllCrosswalks.xml \
-xsl:$CrosswalkHome/crosswalks.xsl \
dialectDisplayListString=$2 \
displayFormat=jsonRubric \
rubricDialect=$2 \
rubricType=$1 \
spiralDisplayListString=${RecommendationTag[$1]} \
> $CrosswalkWorkflow/RubricTransforms/$2/rubric_$1_$2.xsl


