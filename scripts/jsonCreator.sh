#This is an example batch script required to run runTransform.sh DataOne to create the json scorecards for each record in the organizations collections.
#orgName=$1
#dialectCode=$2
#recTag=$3
#collectionName=$4

# ISO collections
./runTransform.sh DataOne CSDGM UMM-Common CDL   
./runTransform.sh DataOne EML UMM-Common CLOEBIRD
./runTransform.sh DataOne DryadPackage UMM-Common Dryad
./runTransform.sh DataOne DryadFile UMM-Common Dryad
./runTransform.sh DataOne CSDGM UMM-Common EDACGSTORE
./runTransform.sh DataOne Mercury UMM-Common EDORA
./runTransform.sh DataOne EML UMM-Common ESA
./runTransform.sh DataOne EML UMM-Common GLEON
./runTransform.sh DataOne EML UMM-Common GOA
./runTransform.sh DataOne Onedcx UMM-Common IARC
./runTransform.sh DataOne EML UMM-Common IOE
./runTransform.sh DataOne EML UMM-Common KNB
./runTransform.sh DataOne EML UMM-Common KUBI
./runTransform.sh DataOne EML UMM-Common LTER
./runTransform.sh DataOne EML UMM-Common LTER_EUROPE
./runTransform.sh DataOne CSDGM UMM-Common NMEPSCOR
./runTransform.sh DataOne EML UMM-Common ONEShare
./runTransform.sh DataOne Mercury UMM-Common ORNLDAAC
./runTransform.sh DataOne EML UMM-Common PISCO
./runTransform.sh DataOne Mercury UMM-Common RGD
./runTransform.sh DataOne EML UMM-Common SANPARKS
./runTransform.sh DataOne CSDGM UMM-Common SEAD
./runTransform.sh DataOne EML UMM-Common TERN
./runTransform.sh DataOne EML UMM-Common TFRI
./runTransform.sh DataOne Onedcx UMM-Common US_MPC
./runTransform.sh DataOne EML UMM-Common USANPN
./runTransform.sh DataOne BDP UMM-Common USGSCSAS
./runTransform.sh DataOne CSDGM UMM-Common USGSCSAS
