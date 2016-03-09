#This is an example batch script required to run runTransform.sh to create the json scorecards for each record in the organizations collections.

#CSDGM collections
./runTransform.sh USGSCSAS FGDC CSDGM DataOne
./runTransform.sh SEAD FGDC CSDGM DataOne
./runTransform.sh RGD FGDC CSDGM DataOne
./runTransform.sh ORNLDAAC FGDC CSDGM DataOne
./runTransform.sh NMEPSCOR FGDC CSDGM DataOne
./runTransform.sh CDL FGDC CSDGM DataOne
./runTransform.sh EDACGSTORE FGDC CSDGM DataOne
./runTransform.sh EDORA FGDC CSDGM DataOne

#EML collections
./runTransform.sh ESA FGDC EML DataOne
./runTransform.sh GLEON FGDC EML DataOne
./runTransform.sh GOA FGDC EML DataOne
./runTransform.sh IOE FGDC EML DataOne
./runTransform.sh KNB FGDC EML DataOne
./runTransform.sh KUBI FGDC EML DataOne
./runTransform.sh LTER FGDC EML DataOne
./runTransform.sh LTER_EUROPE FGDC EML DataOne
./runTransform.sh ONEShare FGDC EML DataOne
./runTransform.sh TERN FGDC EML DataOne
./runTransform.sh TFRI FGDC EML DataOne
./runTransform.sh USANPN FGDC EML DataOne
./runTransform.sh CLOEBIRD FGDC EML DataOne

#Dryad collections
./runTransform.sh Dryad FGDC Dryad DataOne

#Onedcx collections
./runTransform.sh IARC FGDC Onedcx DataOne
./runTransform.sh US_MPC FGDC Onedcx DataOne

#BDP collections
./runTransform.sh USGSCSAS FGDC BDP DataOne