#This is a batch script that runs the needed instances of rubricTransform
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess.
/data/bedi/scripts/Workflow/rubricTransform.sh FGDC EML
/data/bedi/scripts/Workflow/rubricTransform.sh FGDC FGDC
/data/bedi/scripts/Workflow/rubricTransform.sh LTER EML
/data/bedi/scripts/Workflow/rubricTransform.sh LTER FGDC