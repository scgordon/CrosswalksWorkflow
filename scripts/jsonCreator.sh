#This is an example batch script required to run runTransform.sh DataOne to create the json scorecards for each record in the organizations collections.
#orgName=$1
#dialectCode=$2
#recTag=$3
#collectionName=$4

# ISO collections
./runTransform.sh DataOne CSDGM CSW CDL   
./runTransform.sh DataOne EML CSW CLOEBIRD
./runTransform.sh DataOne DryadPackage CSW Dryad
./runTransform.sh DataOne DryadFile CSW Dryad
./runTransform.sh DataOne CSDGM CSW EDACGSTORE
./runTransform.sh DataOne Mercury CSW EDORA
./runTransform.sh DataOne EML CSW ESA
./runTransform.sh DataOne EML CSW GLEON
./runTransform.sh DataOne EML CSW GOA
./runTransform.sh DataOne Onedcx CSW IARC
./runTransform.sh DataOne EML CSW IOE
./runTransform.sh DataOne EML CSW KNB
./runTransform.sh DataOne EML CSW KUBI
./runTransform.sh DataOne EML CSW LTER
./runTransform.sh DataOne EML CSW LTER_EUROPE
./runTransform.sh DataOne CSDGM CSW NMEPSCOR
./runTransform.sh DataOne EML CSW ONEShare
./runTransform.sh DataOne Mercury CSW ORNLDAAC
./runTransform.sh DataOne EML CSW PISCO
./runTransform.sh DataOne Mercury CSW RGD
./runTransform.sh DataOne EML CSW SANPARKS
./runTransform.sh DataOne CSDGM CSW SEAD
./runTransform.sh DataOne EML CSW TERN
./runTransform.sh DataOne EML CSW TFRI
./runTransform.sh DataOne Onedcx CSW US_MPC
./runTransform.sh DataOne EML CSW USANPN
./runTransform.sh DataOne BDP CSW USGSCSAS
./runTransform.sh DataOne CSDGM CSW USGSCSAS
