#This script ties all of the other scripts together. It can be made to run the rubric xsl generation also, but until a way to include new namespaces in crosswalks.xsl programmatically, adding this processing step to the rest of the automated workflow would not be beneficial.
CrosswalkWorkflow=$(pwd) &&
cd ../../Crosswalks 
CrosswalkHome=$(pwd)
recTag=$1
dialectCode=$2
collectionName=$3
orgName=$4
namespaceString=$5
cd ../CrosswalksWorkflow/scripts
for i in $(echo $dialectCode| sed "s/,/ /g")
do
    ./rubricTransform.sh $recTag $i
    echo "$i"
#done &&
for cN in $(echo $collectionName| sed "s/,/ /g") 
do
    ./runTransform.sh $cN $recTag $i $orgName
    echo "$cN" "$i"
done

# &&
#./writeAllSS.sh $orgName $recTag