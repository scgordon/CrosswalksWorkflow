#This is a batch script that runs the needed instances of rubricTransform
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess
#./rubricTransform.sh UMM-C DIF
./rubricTransform.sh DCITE CSDGM
./rubricTransform.sh DCITE BDP
./rubricTransform.sh DCITE EML
./rubricTransform.sh DCITE Mercury
./rubricTransform.sh DCITE DryadPackage
./rubricTransform.sh DCITE DryadFile
./rubricTransform.sh DCITE Onedcx
