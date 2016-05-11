#This is an example batch script required to run runTransform.sh DataOne to create the json scorecards for each record in the organizations collections.
#orgName=$1
#dialectCode=$2
#recTag=$3
#collectionName=$4

# ISO collections
./runTransform.sh DataOne CSDGM ACDD CDL   
./runTransform.sh DataOne EML ACDD CLOEBIRD
./runTransform.sh DataOne DryadPackage ACDD Dryad
./runTransform.sh DataOne DryadFile ACDD Dryad
./runTransform.sh DataOne CSDGM ACDD EDACGSTORE
./runTransform.sh DataOne Mercury ACDD EDORA
./runTransform.sh DataOne EML ACDD ESA
./runTransform.sh DataOne EML ACDD GLEON
./runTransform.sh DataOne EML ACDD GOA
./runTransform.sh DataOne Onedcx ACDD IARC
./runTransform.sh DataOne EML ACDD IOE
./runTransform.sh DataOne EML ACDD KNB
./runTransform.sh DataOne EML ACDD KUBI
./runTransform.sh DataOne EML ACDD LTER
./runTransform.sh DataOne EML ACDD LTER_EUROPE
./runTransform.sh DataOne CSDGM ACDD NMEPSCOR
./runTransform.sh DataOne EML ACDD ONEShare
./runTransform.sh DataOne Mercury ACDD ORNLDAAC
./runTransform.sh DataOne EML ACDD PISCO
./runTransform.sh DataOne Mercury ACDD RGD
./runTransform.sh DataOne EML ACDD SANPARKS
./runTransform.sh DataOne CSDGM ACDD SEAD
./runTransform.sh DataOne EML ACDD TERN
./runTransform.sh DataOne EML ACDD TFRI
./runTransform.sh DataOne Onedcx ACDD US_MPC
./runTransform.sh DataOne EML ACDD USANPN
./runTransform.sh DataOne BDP ACDD USGSCSAS
./runTransform.sh DataOne CSDGM ACDD USGSCSAS
