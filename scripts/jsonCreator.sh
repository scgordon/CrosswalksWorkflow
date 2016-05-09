#This is an example batch script required to run runTransform.sh DataOne to create the json scorecards for each record in the organizations collections.
#orgName=$1
#dialectCode=$2
#recTag=$3
#collectionName=$4

# ISO collections
./runTransform.sh DataOne CSDGM ISO-1 CDL   
./runTransform.sh DataOne EML ISO-1 CLOEBIRD
./runTransform.sh DataOne DryadPackage ISO-1 Dryad
./runTransform.sh DataOne DryadFile ISO-1 Dryad
./runTransform.sh DataOne CSDGM ISO-1 EDACGSTORE
./runTransform.sh DataOne Mercury ISO-1 EDORA
./runTransform.sh DataOne EML ISO-1 ESA
./runTransform.sh DataOne EML ISO-1 GLEON
./runTransform.sh DataOne EML ISO-1 GOA
./runTransform.sh DataOne Onedcx ISO-1 IARC
./runTransform.sh DataOne EML ISO-1 IOE
./runTransform.sh DataOne ISO ISO-1 KNB
./runTransform.sh DataOne ISO ISO-1 KUBI
./runTransform.sh DataOne ISO ISO-1 LTER
./runTransform.sh DataOne ISO ISO-1 LTER_EUROPE
./runTransform.sh DataOne ISO ISO-1 NMEPSCOR
./runTransform.sh DataOne ISO ISO-1 ONEShare
./runTransform.sh DataOne ISO ISO-1 ORNLDAAC
./runTransform.sh DataOne ISO ISO-1 PISCO
./runTransform.sh DataOne ISO ISO-1 RGD
./runTransform.sh DataOne ISO ISO-1 SANPARKS
./runTransform.sh DataOne ISO ISO-1 SEAD
./runTransform.sh DataOne ISO ISO-1 TERN
./runTransform.sh DataOne ISO ISO-1 TFRI
./runTransform.sh DataOne ISO ISO-1 USANPN
./runTransform.sh DataOne ISO ISO-1 USGSCSAS
