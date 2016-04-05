#This is a batch script that runs the needed instances of rubricTransform
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess
#./rubricTransform.sh FGDC EML
#./rubricTransform.sh FGDC CSDGM
#./rubricTransform.sh FGDC BDP
./rubricTransform.sh FGDC Onedcx
./rubricTransform.sh FGDC Dryad
./rubricTransform.sh DCITE Onedcx
./rubricTransform.sh DCITE Dryad