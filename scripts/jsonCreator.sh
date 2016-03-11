#This is an example batch script required to run runTransform.sh DataOne to create the json scorecards for each record in the organizations collections.
#orgName=$1
#dialectCode=$2
#recTag=$3
#collectionName=$4

# collections
./runTransform.sh DataOne CSDGM FGDC USGSCSAS   
./runTransform.sh DataOne CSDGM FGDC SEAD  
./runTransform.sh DataOne CSDGM FGDC RGD  
./runTransform.sh DataOne CSDGM FGDC ORNLDAAC 
./runTransform.sh DataOne CSDGM FGDC NMEPSCOR 
./runTransform.sh DataOne CSDGM FGDC CDL  
./runTransform.sh DataOne CSDGM FGDC EDACGSTORE  
./runTransform.sh DataOne CSDGM FGDC EDORA

# collections
./runTransform.sh DataOne EML FGDC ESA  
./runTransform.sh DataOne EML FGDC GLEON  
./runTransform.sh DataOne EML FGDC GOA  
./runTransform.sh DataOne EML FGDC IOE  
./runTransform.sh DataOne EML FGDC KNB  
./runTransform.sh DataOne EML FGDC KUBI  
./runTransform.sh DataOne EML FGDC LTER  
./runTransform.sh DataOne EML FGDC LTER_EUROPE  
./runTransform.sh DataOne EML FGDC ONEShare  
./runTransform.sh DataOne EML FGDC TERN  
./runTransform.sh DataOne EML FGDC TFRI  
./runTransform.sh DataOne EML FGDC USANPN  
./runTransform.sh DataOne EML FGDC CLOEBIRD  
./runTransform.sh DataOne EML FGDC PISCO  
./runTransform.sh DataOne EML FGDC SANPARKS  

#Dryad collections
./runTransform.sh DataOne Dryad FGDC Dryad 

#Onedcx collections
./runTransform.sh DataOne Onedcx FGDC IARC 
./runTransform.sh DataOne Onedcx FGDC US_MPC

#BDP collections
./runTransform.sh DataOne BDP FGDC USGSCSAS  