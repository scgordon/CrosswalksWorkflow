#This is an example batch script required to run runTransform.sh DataOne to create the json scorecards for each record in the organizations collections.
#orgName=$1
#dialectCode=$2
#recTag=$3
#collectionName=$4

# ISO collections
./runTransform.sh DataOne CSDGM LTER CDL   
./runTransform.sh DataOne EML LTER CLOEBIRD
./runTransform.sh DataOne DryadPackage LTER Dryad
./runTransform.sh DataOne DryadFile LTER Dryad
./runTransform.sh DataOne CSDGM LTER EDACGSTORE
./runTransform.sh DataOne Mercury LTER EDORA
./runTransform.sh DataOne EML LTER ESA
./runTransform.sh DataOne EML LTER GLEON
./runTransform.sh DataOne EML LTER GOA
./runTransform.sh DataOne Onedcx LTER IARC
./runTransform.sh DataOne EML LTER IOE
./runTransform.sh DataOne EML LTER KNB
./runTransform.sh DataOne EML LTER KUBI
./runTransform.sh DataOne EML LTER LTER
./runTransform.sh DataOne EML LTER LTER_EUROPE
./runTransform.sh DataOne CSDGM LTER NMEPSCOR
./runTransform.sh DataOne EML LTER ONEShare
./runTransform.sh DataOne Mercury LTER ORNLDAAC
./runTransform.sh DataOne EML LTER PISCO
./runTransform.sh DataOne Mercury LTER RGD
./runTransform.sh DataOne EML LTER SANPARKS
./runTransform.sh DataOne CSDGM LTER SEAD
./runTransform.sh DataOne EML LTER TERN
./runTransform.sh DataOne EML LTER TFRI
./runTransform.sh DataOne Onedcx LTER US_MPC
./runTransform.sh DataOne EML LTER USANPN
./runTransform.sh DataOne BDP LTER USGSCSAS
./runTransform.sh DataOne CSDGM LTER USGSCSAS
