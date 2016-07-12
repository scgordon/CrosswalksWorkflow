#This is a batch script that runs the needed instances of rubricTransform
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess
#./rubricTransform.sh UMM-C DIF
./rubricTransform.sh ISO-1 CSDGM
./rubricTransform.sh ISO-1 BDP
./rubricTransform.sh ISO-1 EML
./rubricTransform.sh ISO-1 Mercury
./rubricTransform.sh ISO-1 DryadPackage
./rubricTransform.sh ISO-1 DryadFile
./rubricTransform.sh ISO-1 Onedcx
