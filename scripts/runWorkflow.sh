#This script ties all of the other scripts together. It can be made to run the rubric xsl generation also, but until a way to include new namespaces in crosswalks.xsl programmatically, adding this processing step to the rest of the automated workflow would not be beneficial.
#./writeAllRubricTransforms.sh &&
./jsonCreator.sh &&
./writeAllSS.sh