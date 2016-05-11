<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:gmi="http://www.isotc211.org/2005/gmi" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:mri="http://www.isotc211.org/namespace/mri/1.0/2014-07-11" xmlns:gex="http://www.isotc211.org/namespace/gex/1.0/2014-07-11" xmlns:dif="http://gcmd.gsfc.nasa.gov/Aboutus/xml/dif/" xmlns:echo="http://www.echo.nasa.gov/ingest/schemas/operations/" xmlns:eos="http://earthdata.nasa.gov/schema/eos" xmlns:serf="http://gcmd.gsfc.nasa.gov/xml/serf" xmlns:cw="http://www.ngdc.noaa.gov/metadata/published/xsd/crosswalk.xsd" xmlns:thredds="http://www.unidata.ucar.edu/namespaces/thredds/InvCatalog/v1.0" xmlns:hdf5="http://hdfgroup.org/HDF5/XML/schema/HDF5-File" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:csdgm="http://www.fgdc.gov/metadata/csdgm" xmlns:dryad="http://purl.org/dryad/schema/terms/v3.1" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dwc="http://rs.tdwg.org/dwc/terms/" xmlns:eml="eml://ecoinformatics.org/eml-2.1.1" xmlns:onedcx="http://ns.dataone.org/metadata/schema/onedcx/v1.0" xmlns:mercury="http://purl.org/ornl/schema/mercury/terms/v1.0" xmlns:bdp="https://www.fgdc.gov/standards/projects/FGDC-standards-projects/metadata/biometadata" version="2.0"><xsl:param name="recordSetPath"></xsl:param><xsl:param name="fileNamePattern"></xsl:param><xsl:output method="text"></xsl:output><xsl:template match="/"><xsl:variable name="xmlFilesSelect" select="concat($recordSetPath, '?select=',$fileNamePattern)"></xsl:variable><xsl:text>{"records": [</xsl:text><xsl:for-each select="collection(iri-to-uri($xmlFilesSelect))"><xsl:call-template name="writeSpirals"></xsl:call-template></xsl:for-each><xsl:text>]}</xsl:text></xsl:template><xsl:template name="writeSpirals"><xsl:if test="position()!=1"><xsl:text>,</xsl:text></xsl:if><xsl:text>{"spirals": [</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"Attribute Convention for Data Discovery - Highly Recommended",</xsl:text><xsl:text>"code":"ACDD_highlyRecommended",</xsl:text><xsl:text>"description":"These attributes are highly recommended by the Attribute Convention for Data Discovery",</xsl:text><xsl:text>"maximum":"3",</xsl:text><xsl:variable name="ACDD_highlyRecommended.itemExists" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/title)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/keywordSet/keyword)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_highlyRecommended.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_highlyRecommended.itemCounts" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/title)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/abstract) + count(/eml:eml/dataset/abstract)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/keywordSet/keyword)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_highlyRecommended.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Title",</xsl:text><xsl:variable name="ACDD_highlyRecommended.itemExists.d1e314" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/title)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_highlyRecommended.itemExists.d1e314)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_highlyRecommended.itemCounts.d1e314" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/title)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_highlyRecommended.itemCounts.d1e314)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/title",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/title)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/title)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A short description of the resource. The title should be descriptive enough so that when a user is presented with a list of titles the general content of the data set can be determined."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Abstract",</xsl:text><xsl:variable name="ACDD_highlyRecommended.itemExists.d1e573" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_highlyRecommended.itemExists.d1e573)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_highlyRecommended.itemCounts.d1e573" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_highlyRecommended.itemCounts.d1e573)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/abstract",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/abstract)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/abstract)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/abstract",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/abstract)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/abstract)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Desciption in Catalog Services for the Web.",</xsl:text><xsl:text>"description":"A paragraph describing the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Keyword",</xsl:text><xsl:variable name="ACDD_highlyRecommended.itemExists.d1e12800" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/keywordSet/keyword)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_highlyRecommended.itemExists.d1e12800)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_highlyRecommended.itemCounts.d1e12800" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/keywordSet/keyword)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_highlyRecommended.itemCounts.d1e12800)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/keywordSet/keyword",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/keywordSet/keyword)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/keywordSet/keyword)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A word or phrase that describes some aspect of a resource. Can be one of several types."</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"Attribute Convention for Data Discovery - Recommended",</xsl:text><xsl:text>"code":"ACDD_recommended",</xsl:text><xsl:text>"description":"These attributes are recommended by the Attribute Convention for Data Discovery",</xsl:text><xsl:text>"maximum":"27",</xsl:text><xsl:variable name="ACDD_recommended.itemExists" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/@packageId)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/contact)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/creator/organizationName)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/southBoundingCoordinate)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/northBoundingCoordinate)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/westBoundingCoordinate)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/eastBoundingCoordinate)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/beginDate/calendarDate)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/endDate)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/temporalCoverage)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/access)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts" as="xs:integer+"><xsl:sequence select="count(/eml:eml/@packageId)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/contact)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/creator/organizationName)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/southBoundingCoordinate)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/northBoundingCoordinate)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/westBoundingCoordinate)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/eastBoundingCoordinate)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/beginDate/calendarDate)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/endDate)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/coverage/temporalCoverage)"></xsl:sequence><xsl:sequence select="count(/eml:eml/access)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Identifier",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e2746" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/@packageId)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e2746)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e2746" as="xs:integer+"><xsl:sequence select="count(/eml:eml/@packageId)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e2746)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/@packageId",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/@packageId)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/@packageId)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Identifier for the resource described by the metadata"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Naming Authority",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"note":"DIF and ECHO use the Global Change Master Directory (GCMD) keywords. In DCAT this is a controlled vocabulary with only one value (DOI)",</xsl:text><xsl:text>"description":"The organization responsible for the maintenance of the identifier (namespace)"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Keyword Vocabulary",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"note":"DIF, ECHO and ECS require that theme keywords come from the Global Change Master Directory list.",</xsl:text><xsl:text>"description":"If you are following a guideline or using a shared vocabulary for the words/phrases in your 'keywords' attribute, put the name of that guideline here."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Common Data Model Datatype",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"note":"Current values: vector, grid, textTable, tin, stereoModel, video.",</xsl:text><xsl:text>"description":"The THREDDS data type for this resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Lineage Statement",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Information and references for sources and processes that were used to create the dataset and an audit trail for modifications to the original data."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Supplemental Information",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Miscellaneous information about the data."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Creation/Revision Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The date the resource was created"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Contact",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e1055" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/contact)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e1055)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e1055" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/contact)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e1055)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/contact",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/contact)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/contact)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The organization or person responsible for answering questions about the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Author / Originator World Wide Web Address",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The World Wide Web mail address of the principal author of the cited resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Author / Originator Email Address",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The electronic mail address of the principal author of the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Originating Organization",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e4060" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/creator/organizationName)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e4060)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e4060" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/creator/organizationName)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e4060)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/creator/organizationName",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/creator/organizationName)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/creator/organizationName)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The organization responsible for creating the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Project Name",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The name of the project that the resource was associated with."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Processing Level",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A code that indicates the extent of processing done in the creation of a dataset."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Acknowledgement",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Provides a place to acknowledge various types of support for the project that produced the data."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Bounding Box",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e4489" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e4489)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e4489" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e4489)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Coverage in the CSW Specification",</xsl:text><xsl:text>"description":"A bounding box for identifying a geographic area of interest"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Southernmost Latitude",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e3178" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/southBoundingCoordinate)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e3178)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e3178" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/southBoundingCoordinate)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e3178)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/southBoundingCoordinate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/southBoundingCoordinate)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/southBoundingCoordinate)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"OGC-SOS offering lists may not include the entire dataset. A gml:id attribute can be used to identify the bounding offering.",</xsl:text><xsl:text>"description":"The southernmost latitude of the bounding rectangle."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Northernmost Latitude",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e3247" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/northBoundingCoordinate)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e3247)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e3247" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/northBoundingCoordinate)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e3247)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/northBoundingCoordinate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/northBoundingCoordinate)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/northBoundingCoordinate)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"OGC-SOS offering lists may not include the entire dataset. A gml:id attribute (e.g. gml:id=network-all) can be used to identify the bounding offering.",</xsl:text><xsl:text>"description":"The northernmost latitude of the bounding rectangle."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Westernmost Longitude",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e3334" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/westBoundingCoordinate)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e3334)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e3334" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/westBoundingCoordinate)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e3334)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/westBoundingCoordinate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/westBoundingCoordinate)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/westBoundingCoordinate)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"OGC-SOS offering lists may not include the entire dataset. A gml:id attribute can be used to identify the bounding offering.",</xsl:text><xsl:text>"description":"The westernmost longitude of the bounding rectangle."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Easternmost Longitude",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e3406" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/eastBoundingCoordinate)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e3406)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e3406" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/eastBoundingCoordinate)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e3406)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/eastBoundingCoordinate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/eastBoundingCoordinate)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates/eastBoundingCoordinate)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"OGC-SOS offering lists may not include the entire dataset. A gml:id attribute can be used to identify the bounding offering.",</xsl:text><xsl:text>"description":"The easternmost longitude of the bounding rectangle."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Start Time",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e3497" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/beginDate/calendarDate)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e3497)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e3497" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/beginDate/calendarDate)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e3497)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/beginDate/calendarDate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/beginDate/calendarDate)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/beginDate/calendarDate)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The start of the bounding time period"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"End Time",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e3576" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/endDate)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e3576)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e3576" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/endDate)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e3576)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/endDate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/endDate)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/temporalCoverage/rangeOfDates/endDate)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The end of the bounding time period"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Vertical Minimum",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The minimum height of the bounding rectangle"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Temporal Extent",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e6497" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/coverage/temporalCoverage)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e6497)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e6497" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/coverage/temporalCoverage)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e6497)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/temporalCoverage",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/coverage/temporalCoverage)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/temporalCoverage)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The temporal extent of the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Temporal Resolution",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The smallest time step included in the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Standard Name Vocabulary",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The name of the shared vocabulary from which variable standard names are taken."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Vertical Maximum",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The maximum height of the bounding rectangle"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Access Constraints",</xsl:text><xsl:variable name="ACDD_recommended.itemExists.d1e5017" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/access)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemExists.d1e5017)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_recommended.itemCounts.d1e5017" as="xs:integer+"><xsl:sequence select="count(/eml:eml/access)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_recommended.itemCounts.d1e5017)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/access",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/access)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/access)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Information about any constraints for accessing the data set. This includes any special restrictions, legal prerequisites, limitations and/or warnings on obtaining the data set. Some words that may be used in this field include: Public, In-house, Limited, Additional detailed instructions on how to access the data can be entered in this field."</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"Attribute Convention for Data Discovery - Suggested",</xsl:text><xsl:text>"code":"ACDD_suggested",</xsl:text><xsl:text>"description":"These attributes are suggested by the Attribute Convention for Data Discovery",</xsl:text><xsl:text>"maximum":"5",</xsl:text><xsl:variable name="ACDD_suggested.itemExists" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/associatedParty)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/eml:eml/dataset/publisher)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_suggested.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_suggested.itemCounts" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/associatedParty)"></xsl:sequence><xsl:sequence select="count(/eml:eml/dataset/publisher)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_suggested.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Contributor Name",</xsl:text><xsl:variable name="ACDD_suggested.itemExists.d1e4650" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/associatedParty)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_suggested.itemExists.d1e4650)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_suggested.itemCounts.d1e4650" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/associatedParty)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_suggested.itemCounts.d1e4650)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/associatedParty",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/associatedParty)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/associatedParty)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Contributor to the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Contributor Role",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The role of any individuals or institutions that contributed to the creation of the data."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Publisher",</xsl:text><xsl:variable name="ACDD_suggested.itemExists.d1e2221" as="xs:integer+"><xsl:sequence select="if(exists(/eml:eml/dataset/publisher)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_suggested.itemExists.d1e2221)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="ACDD_suggested.itemCounts.d1e2221" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/publisher)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($ACDD_suggested.itemCounts.d1e2221)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/publisher",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/eml:eml/dataset/publisher)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/publisher)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Publisher of the cited resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Publisher URL",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"World Wide Web address associated with the publisher of the cited resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Publisher E-Mail",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Email associated with the publisher of the cited resource"</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>],</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Record'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="document-uri(.)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Date'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="current-date()"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"rubricType":"ACDD",</xsl:text><xsl:text>"rubricVersion":"0.1",</xsl:text><xsl:text>"rubricMax":"35",</xsl:text><xsl:variable name="rubricExists" as="xs:integer+"><xsl:sequence select="$ACDD_highlyRecommended.itemExists"></xsl:sequence><xsl:sequence select="$ACDD_recommended.itemExists"></xsl:sequence><xsl:sequence select="$ACDD_suggested.itemExists"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricExists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($rubricExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="rubricCounts" as="xs:integer+"><xsl:sequence select="$ACDD_highlyRecommended.itemCounts"></xsl:sequence><xsl:sequence select="$ACDD_recommended.itemCounts"></xsl:sequence><xsl:sequence select="$ACDD_suggested.itemCounts"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricCounts'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="sum($rubricCounts)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text></xsl:template></xsl:stylesheet>