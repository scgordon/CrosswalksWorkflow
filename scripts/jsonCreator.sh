#This is an example batch script required to run runTransform.sh DataOne to create the json scorecards for each record in the organizations collections.
#orgName=$1
#dialectCode=$2
#recTag=$3
#collectionName=$4

# ISO collections
./runTransform.sh DataOne CSDGM FGDC CDL   
./runTransform.sh DataOne EML FGDC CLOEBIRD
./runTransform.sh DataOne DryadPackage FGDC Dryad
./runTransform.sh DataOne DryadFile FGDC Dryad
./runTransform.sh DataOne CSDGM FGDC EDACGSTORE
./runTransform.sh DataOne Mercury FGDC EDORA
./runTransform.sh DataOne EML FGDC ESA
./runTransform.sh DataOne EML FGDC GLEON
./runTransform.sh DataOne EML FGDC GOA
./runTransform.sh DataOne Onedcx FGDC IARC
./runTransform.sh DataOne EML FGDC IOE
./runTransform.sh DataOne EML FGDC KNB
./runTransform.sh DataOne EML FGDC KUBI
./runTransform.sh DataOne EML FGDC LTER
./runTransform.sh DataOne EML FGDC LTER_EUROPE
./runTransform.sh DataOne CSDGM FGDC NMEPSCOR
./runTransform.sh DataOne EML FGDC ONEShare
./runTransform.sh DataOne Mercury FGDC ORNLDAAC
./runTransform.sh DataOne EML FGDC PISCO
./runTransform.sh DataOne Mercury FGDC RGD
./runTransform.sh DataOne EML FGDC SANPARKS
./runTransform.sh DataOne CSDGM FGDC SEAD
./runTransform.sh DataOne EML FGDC TERN
./runTransform.sh DataOne EML FGDC TFRI
./runTransform.sh DataOne Onedcx FGDC US_MPC
./runTransform.sh DataOne EML FGDC USANPN
./runTransform.sh DataOne BDP FGDC USGSCSAS
./runTransform.sh DataOne CSDGM FGDC USGSCSAS
