#This is a batch script that runs the needed instances of rubricTransform
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess.
/Users/*/CrosswalksWorkflow/scripts/rubricTransform.sh FGDC EML
/Users/*/CrosswalksWorkflow/scripts/rubricTransform.sh FGDC FGDC
/Users/*/CrosswalksWorkflow/scripts/rubricTransform.sh LTER EML
/Users/*/CrosswalksWorkflow/scripts/rubricTransform.sh LTER FGDC