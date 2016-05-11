#This is a batch script that runs the needed instances of rubricTransform
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess
#./rubricTransform.sh UMM-C DIF
./rubricTransform.sh ACDD CSDGM
./rubricTransform.sh ACDD BDP
./rubricTransform.sh ACDD EML
./rubricTransform.sh ACDD Mercury
./rubricTransform.sh ACDD DryadPackage
./rubricTransform.sh ACDD DryadFile
./rubricTransform.sh ACDD Onedcx
