#This is a batch script that runs example instances of generateSS.sh
# It requires two arguments.
#Argument 1 is the organization name. This is the directory name in data/bedi/collections e.g. NASA
#Argument 2 is the Recommendation tag. This is the tag element's content for the recommendation components desired.

/Users/*/CrosswalksWorkflow/scripts/rubricTransform.sh FGDC DataOne
/Users/*/CrosswalksWorkflow/scripts/rubricTransform.sh CSW NASA
/Users/*/CrosswalksWorkflow/scripts/rubricTransform.sh DCITE NCAR
/Users/*/CrosswalksWorkflow/scripts/rubricTransform.sh ISO USGS