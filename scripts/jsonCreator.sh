#This is an example batch script required to run runTransform.sh DataOne to create the json scorecards for each record in the organizations collections.
#orgName=$1
#dialectCode=$2
#recTag=$3
#collectionName=$4

# ISO collections
./runTransform.sh DataOne CSDGM DCITE CDL   
./runTransform.sh DataOne EML DCITE CLOEBIRD
./runTransform.sh DataOne DryadPackage DCITE Dryad
./runTransform.sh DataOne DryadFile DCITE Dryad
./runTransform.sh DataOne CSDGM DCITE EDACGSTORE
./runTransform.sh DataOne Mercury DCITE EDORA
./runTransform.sh DataOne EML DCITE ESA
./runTransform.sh DataOne EML DCITE GLEON
./runTransform.sh DataOne EML DCITE GOA
./runTransform.sh DataOne Onedcx DCITE IARC
./runTransform.sh DataOne EML DCITE IOE
./runTransform.sh DataOne EML DCITE KNB
./runTransform.sh DataOne EML DCITE KUBI
./runTransform.sh DataOne EML DCITE LTER
./runTransform.sh DataOne EML DCITE LTER_EUROPE
./runTransform.sh DataOne CSDGM DCITE NMEPSCOR
./runTransform.sh DataOne EML DCITE ONEShare
./runTransform.sh DataOne Mercury DCITE ORNLDAAC
./runTransform.sh DataOne EML DCITE PISCO
./runTransform.sh DataOne Mercury DCITE RGD
./runTransform.sh DataOne EML DCITE SANPARKS
./runTransform.sh DataOne CSDGM DCITE SEAD
./runTransform.sh DataOne EML DCITE TERN
./runTransform.sh DataOne EML DCITE TFRI
./runTransform.sh DataOne Onedcx DCITE US_MPC
./runTransform.sh DataOne EML DCITE USANPN
./runTransform.sh DataOne BDP DCITE USGSCSAS
./runTransform.sh DataOne CSDGM DCITE USGSCSAS
