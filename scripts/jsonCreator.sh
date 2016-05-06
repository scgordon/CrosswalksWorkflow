#This is an example batch script required to run runTransform.sh NASA_2 to create the json scorecards for each record in the organizations collections.
#orgName=$1
#dialectCode=$2
#recTag=$3
#collectionName=$4

# ISO collections
./runTransform.sh NASA_2 ISO UMM-Common ASF   
./runTransform.sh NASA_2 ISO UMM-Common CDDIS
./runTransform.sh NASA_2 ISO UMM-Common GHRC  
./runTransform.sh NASA_2 ISO UMM-Common GSFCS4PA 
./runTransform.sh NASA_2 ISO UMM-Common LAADS 
./runTransform.sh NASA_2 ISO UMM-Common LANCEMODIS  
./runTransform.sh NASA_2 ISO UMM-Common LARC  
./runTransform.sh NASA_2 ISO UMM-Common LARC_ASDC
./runTransform.sh NASA_2 ISO UMM-Common LPDAAC_ECS
./runTransform.sh NASA_2 ISO UMM-Common PODAAC
./runTransform.sh NASA_2 ISO UMM-Common SEDAC
./runTransform.sh NASA_2 ISO UMM-Common USGS_EROS

# DIF collections
#./runTransform.sh NASA_2 DIF UMM-Common ASF   
#./runTransform.sh NASA_2 DIF UMM-Common CDDIS
#./runTransform.sh NASA_2 DIF UMM-Common GHRC  
#./runTransform.sh NASA_2 DIF UMM-Common GSFCS4PA 
#./runTransform.sh NASA_2 DIF UMM-Common LAADS 
#./runTransform.sh NASA_2 DIF UMM-Common LANCEMODIS  
#./runTransform.sh NASA_2 DIF UMM-Common LARC  
#./runTransform.sh NASA_2 DIF UMM-Common LARC_ASDC
#./runTransform.sh NASA_2 DIF UMM-Common LPDAAC_ECS
#./runTransform.sh NASA_2 DIF UMM-Common PODAAC
#./runTransform.sh NASA_2 DIF UMM-Common SEDAC
#./runTransform.sh NASA_2 DIF UMM-Common USGS_EROS

#ECHO collections
./runTransform.sh NASA_2 ECHO UMM-Common ASF   
./runTransform.sh NASA_2 ECHO UMM-Common CDDIS
./runTransform.sh NASA_2 ECHO UMM-Common GHRC  
./runTransform.sh NASA_2 ECHO UMM-Common GSFCS4PA 
./runTransform.sh NASA_2 ECHO UMM-Common LAADS 
./runTransform.sh NASA_2 ECHO UMM-Common LANCEMODIS  
./runTransform.sh NASA_2 ECHO UMM-Common LARC
./runTransform.sh NASA_2 ECHO UMM-Common LPDAAC_ECS
./runTransform.sh NASA_2 ECHO UMM-Common LARC_ASDC
./runTransform.sh NASA_2 ECHO UMM-Common PODAAC
./runTransform.sh NASA_2 ECHO UMM-Common SEDAC
./runTransform.sh NASA_2 ECHO UMM-Common USGS_EROS
