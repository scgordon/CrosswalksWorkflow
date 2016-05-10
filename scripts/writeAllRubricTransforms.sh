#This is a batch script that runs the needed instances of rubricTransform
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess
#./rubricTransform.sh UMM-C DIF
./rubricTransform.sh FGDC CSDGM
./rubricTransform.sh FGDC BDP
./rubricTransform.sh FGDC EML
./rubricTransform.sh FGDC Mercury
./rubricTransform.sh FGDC DryadPackage
./rubricTransform.sh FGDC DryadFile
./rubricTransform.sh FGDC Onedcx
