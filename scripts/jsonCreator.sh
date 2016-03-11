#This is an example batch script required to run runTransform.sh NASA_2 to create the json scorecards for each record in the organizations collections.
#orgName=$1
#dialectCode=$2
#recTag=$3
#collectionName=$4

# ISO collections
./runTransform.sh NASA_2 ISO UMM-C ASF   
./runTransform.sh NASA_2 ISO UMM-C CDDIS
./runTransform.sh NASA_2 ISO UMM-C GHRC  
./runTransform.sh NASA_2 ISO UMM-C GSFCS4PA 
./runTransform.sh NASA_2 ISO UMM-C LAADS 
./runTransform.sh NASA_2 ISO UMM-C LANCEMODIS  
./runTransform.sh NASA_2 ISO UMM-C LARC  
./runTransform.sh NASA_2 ISO UMM-C LARC_ASDC
./runTransform.sh NASA_2 ISO UMM-C LPDAAC_ECS
./runTransform.sh NASA_2 ISO UMM-C PODAAC
./runTransform.sh NASA_2 ISO UMM-C SEDAC
./runTransform.sh NASA_2 ISO UMM-C USGS_EROS

# DIF collections
#./runTransform.sh NASA_2 DIF UMM-C ASF   
#./runTransform.sh NASA_2 DIF UMM-C CDDIS
#./runTransform.sh NASA_2 DIF UMM-C GHRC  
#./runTransform.sh NASA_2 DIF UMM-C GSFCS4PA 
#./runTransform.sh NASA_2 DIF UMM-C LAADS 
#./runTransform.sh NASA_2 DIF UMM-C LANCEMODIS  
#./runTransform.sh NASA_2 DIF UMM-C LARC  
#./runTransform.sh NASA_2 DIF UMM-C LARC_ASDC
#./runTransform.sh NASA_2 DIF UMM-C LPDAAC_ECS
#./runTransform.sh NASA_2 DIF UMM-C PODAAC
#./runTransform.sh NASA_2 DIF UMM-C SEDAC
#./runTransform.sh NASA_2 DIF UMM-C USGS_EROS

#ECHO collections
./runTransform.sh NASA_2 ECHO UMM-C ASF   
./runTransform.sh NASA_2 ECHO UMM-C CDDIS
./runTransform.sh NASA_2 ECHO UMM-C GHRC  
./runTransform.sh NASA_2 ECHO UMM-C GSFCS4PA 
./runTransform.sh NASA_2 ECHO UMM-C LAADS 
./runTransform.sh NASA_2 ECHO UMM-C LANCEMODIS  
./runTransform.sh NASA_2 ECHO UMM-C LARC
./runTransform.sh NASA_2 ECHO UMM-C LPDAAC_ECS
./runTransform.sh NASA_2 ECHO UMM-C LARC_ASDC
./runTransform.sh NASA_2 ECHO UMM-C PODAAC
./runTransform.sh NASA_2 ECHO UMM-C SEDAC
./runTransform.sh NASA_2 ECHO UMM-C USGS_EROS
