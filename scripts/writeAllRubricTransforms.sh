#This is a batch script that runs the needed instances of rubricTransform
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess
#./rubricTransform.sh UMM-C DIF
./rubricTransform.sh UMM-Common CSDGM
./rubricTransform.sh UMM-Common BDP
./rubricTransform.sh UMM-Common EML
./rubricTransform.sh UMM-Common Mercury
./rubricTransform.sh UMM-Common DryadPackage
./rubricTransform.sh UMM-Common DryadFile
./rubricTransform.sh UMM-Common Onedcx
