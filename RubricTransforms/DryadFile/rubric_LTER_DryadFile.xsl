<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:gmi="http://www.isotc211.org/2005/gmi" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:mri="http://www.isotc211.org/namespace/mri/1.0/2014-07-11" xmlns:gex="http://www.isotc211.org/namespace/gex/1.0/2014-07-11" xmlns:dif="http://gcmd.gsfc.nasa.gov/Aboutus/xml/dif/" xmlns:echo="http://www.echo.nasa.gov/ingest/schemas/operations/" xmlns:eos="http://earthdata.nasa.gov/schema/eos" xmlns:serf="http://gcmd.gsfc.nasa.gov/xml/serf" xmlns:cw="http://www.ngdc.noaa.gov/metadata/published/xsd/crosswalk.xsd" xmlns:thredds="http://www.unidata.ucar.edu/namespaces/thredds/InvCatalog/v1.0" xmlns:hdf5="http://hdfgroup.org/HDF5/XML/schema/HDF5-File" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:csdgm="http://www.fgdc.gov/metadata/csdgm" xmlns:dryad="http://purl.org/dryad/schema/terms/v3.1" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dwc="http://rs.tdwg.org/dwc/terms/" xmlns:eml="eml://ecoinformatics.org/eml-2.1.1" xmlns:onedcx="http://ns.dataone.org/metadata/schema/onedcx/v1.0" xmlns:mercury="http://purl.org/ornl/schema/mercury/terms/v1.0" xmlns:bdp="https://www.fgdc.gov/standards/projects/FGDC-standards-projects/metadata/biometadata" version="2.0"><xsl:param name="recordSetPath"></xsl:param><xsl:param name="fileNamePattern"></xsl:param><xsl:output method="text"></xsl:output><xsl:template match="/"><xsl:variable name="xmlFilesSelect" select="concat($recordSetPath, '?select=',$fileNamePattern)"></xsl:variable><xsl:text>{"records": [</xsl:text><xsl:for-each select="collection(iri-to-uri($xmlFilesSelect))"><xsl:call-template name="writeSpirals"></xsl:call-template></xsl:for-each><xsl:text>]}</xsl:text></xsl:template><xsl:template name="writeSpirals"><xsl:if test="position()!=1"><xsl:text>,</xsl:text></xsl:if><xsl:text>{"spirals": [</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"LTER Completeness-Identification",</xsl:text><xsl:text>"code":"LTER_Identification",</xsl:text><xsl:text>"description":"Minimum content for adequate data set discovery in a general cataloging system or repository (functionally equivalent to LTER DTOC)",</xsl:text><xsl:text>"maximum":"11",</xsl:text><xsl:variable name="LTER_Identification.itemExists" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:identifier)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:title)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:creator)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:available)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:description)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:subject)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Identification.itemCounts" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:identifier)"></xsl:sequence><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:title)"></xsl:sequence><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:creator)"></xsl:sequence><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:available)"></xsl:sequence><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:description)"></xsl:sequence><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:subject)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Identifier",</xsl:text><xsl:variable name="LTER_Identification.itemExists.d1e2746" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:identifier)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemExists.d1e2746)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Identification.itemCounts.d1e2746" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:identifier)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemCounts.d1e2746)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataFile/dcterms:identifier",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dryad:DryadDataFile/dcterms:identifier)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataFile/dcterms:identifier)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Identifier for the resource described by the metadata"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Title",</xsl:text><xsl:variable name="LTER_Identification.itemExists.d1e314" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:title)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemExists.d1e314)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Identification.itemCounts.d1e314" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:title)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemCounts.d1e314)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataFile/dcterms:title",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dryad:DryadDataFile/dcterms:title)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataFile/dcterms:title)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A short description of the resource. The title should be descriptive enough so that when a user is presented with a list of titles the general content of the data set can be determined."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Author / Originator",</xsl:text><xsl:variable name="LTER_Identification.itemExists.d1e3947" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:creator)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemExists.d1e3947)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Identification.itemCounts.d1e3947" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:creator)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemCounts.d1e3947)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataFile/dcterms:creator",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dryad:DryadDataFile/dcterms:creator)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataFile/dcterms:creator)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"In CSW this concept is called Creator",</xsl:text><xsl:text>"description":"The principal author of the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Contact",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The organization or person currently responsible for the metadata."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Contributor Name",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Contributor to the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Publisher",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Publisher of the cited resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Publication Date",</xsl:text><xsl:variable name="LTER_Identification.itemExists.d1e2098" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:available)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemExists.d1e2098)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Identification.itemCounts.d1e2098" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:available)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemCounts.d1e2098)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataFile/dcterms:available",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dryad:DryadDataFile/dcterms:available)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataFile/dcterms:available)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Date of publication of the cited resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Contact",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The organization or person responsible for answering questions about the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Abstract",</xsl:text><xsl:variable name="LTER_Identification.itemExists.d1e573" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:description)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemExists.d1e573)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Identification.itemCounts.d1e573" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:description)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemCounts.d1e573)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataFile/dcterms:description",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dryad:DryadDataFile/dcterms:description)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataFile/dcterms:description)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Desciption in Catalog Services for the Web.",</xsl:text><xsl:text>"description":"A paragraph describing the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Keyword",</xsl:text><xsl:variable name="LTER_Identification.itemExists.d1e12800" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:subject)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemExists.d1e12800)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Identification.itemCounts.d1e12800" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:subject)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Identification.itemCounts.d1e12800)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataFile/dcterms:subject",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dryad:DryadDataFile/dcterms:subject)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataFile/dcterms:subject)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A word or phrase that describes some aspect of a resource. Can be one of several types."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Distribution",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Information about how the resource is available, online, offline, inline."</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"LTER Completeness-Discovery",</xsl:text><xsl:text>"code":"LTER_Discovery",</xsl:text><xsl:text>"description":"Discovery level metadata should provide as much information as possible to support locating datasets by time, taxa, and/or geographic location in addition to basic identification information. Discovery level EML should include the coverage elements of temporalCoverage (when), taxonomicCoverage (what), and geographicCoverage (where) for the dataset as well as the change history in the maintenance element.",</xsl:text><xsl:text>"maximum":"4",</xsl:text><xsl:variable name="LTER_Discovery.itemExists" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dwc:scientificName)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:spatial)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:temporal | /dryad:DryadDataFile/dcterms:temporal)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Discovery.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Discovery.itemCounts" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dwc:scientificName)"></xsl:sequence><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:spatial)"></xsl:sequence><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:temporal) + count(/dryad:DryadDataFile/dcterms:temporal)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Discovery.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Taxonomic Extent",</xsl:text><xsl:variable name="LTER_Discovery.itemExists.d1e13096" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dwc:scientificName)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Discovery.itemExists.d1e13096)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Discovery.itemCounts.d1e13096" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dwc:scientificName)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Discovery.itemCounts.d1e13096)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataFile/dwc:scientificName",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dryad:DryadDataFile/dwc:scientificName)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataFile/dwc:scientificName)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The extent of the taxonomies coverage."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Spatial Extent",</xsl:text><xsl:variable name="LTER_Discovery.itemExists.d1e7908" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:spatial)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Discovery.itemExists.d1e7908)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Discovery.itemCounts.d1e7908" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:spatial)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Discovery.itemCounts.d1e7908)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataFile/dcterms:spatial",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dryad:DryadDataFile/dcterms:spatial)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataFile/dcterms:spatial)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The spatial extent of the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Temporal Extent",</xsl:text><xsl:variable name="LTER_Discovery.itemExists.d1e6497" as="xs:integer+"><xsl:sequence select="if(exists(/dryad:DryadDataFile/dcterms:temporal | /dryad:DryadDataFile/dcterms:temporal)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Discovery.itemExists.d1e6497)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Discovery.itemCounts.d1e6497" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataFile/dcterms:temporal | /dryad:DryadDataFile/dcterms:temporal)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Discovery.itemCounts.d1e6497)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataFile/dcterms:temporal",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dryad:DryadDataFile/dcterms:temporal)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataFile/dcterms:temporal)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataFile/dcterms:temporal",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dryad:DryadDataFile/dcterms:temporal)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataFile/dcterms:temporal)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The temporal extent of the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Maintenance",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Describes changes to the data tables or metadata, including update frequency."</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"LTER Completeness-Evaluation",</xsl:text><xsl:text>"code":"LTER_Evaluation",</xsl:text><xsl:text>"description":"Evaluation level metadata should include detailed descriptions of the project, methods, protocols, and intellectual rights in order for a potential user to evaluate the relevance of the data package for their research study or synthesis project.",</xsl:text><xsl:text>"maximum":"5",</xsl:text><xsl:variable name="LTER_Evaluation.itemExists" as="xs:integer+">0</xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Evaluation.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Evaluation.itemCounts" as="xs:integer+">0</xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Evaluation.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Use Constraints",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Information about how the data may or may not be used after access is granted to assure the protection of privacy or intellectual property. This includes any special restrictions, legal prerequisites, terms and conditions, and/or limitations on using the data set. Data providers may request acknowledgement of the data from users and claim no responsibility for quality and completeness of data."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Process Step",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A step in the processing that produced a resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Project Description",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Description of the project."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Entity Type Definition",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The description of the entity type"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Attribute Definition",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The description of the attribute"</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"LTER Completeness-Access",</xsl:text><xsl:text>"code":"LTER_Access",</xsl:text><xsl:text>"description":"Access-level metadata should provide a user with all the information needed to access and download the data tables, even if the tables’ attributes are not thoroughly described. The tags required at this level specify access control and the physical description of the table.",</xsl:text><xsl:text>"maximum":"2",</xsl:text><xsl:variable name="LTER_Access.itemExists" as="xs:integer+">0</xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Access.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Access.itemCounts" as="xs:integer+">0</xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Access.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Access Constraints",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Information about any constraints for accessing the data set. This includes any special restrictions, legal prerequisites, limitations and/or warnings on obtaining the data set. Some words that may be used in this field include: Public, In-house, Limited, Additional detailed instructions on how to access the data can be entered in this field."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Format",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The physical or digital manifestation of the resource"</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"LTER Completeness-Integration",</xsl:text><xsl:text>"code":"LTER_Integration",</xsl:text><xsl:text>"description":"Integration-level metadata should support computer-mediated access and processing of data, and therefore requires that all aspects of the data package be fully described. ",</xsl:text><xsl:text>"maximum":"3",</xsl:text><xsl:variable name="LTER_Integration.itemExists" as="xs:integer+">0</xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Integration.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="LTER_Integration.itemCounts" as="xs:integer+">0</xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($LTER_Integration.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Attribute List",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A description of the attributes a data table's entities have."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Attribute Constraints",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Describes constraints on attributes such as a foriegn key in a database."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Quality Description",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"note":"ISO-1 provides free text fields for describing quality information in the DQ_MeasureReference, DQ_EvaluationMethod, and DQ_DescriptiveResult objects.",</xsl:text><xsl:text>"description":"Description of the quality of the resource or any quality assurance procedures followed in producing the resource."</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>],</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Record'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="document-uri(.)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Date'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="current-date()"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"rubricType":"LTER",</xsl:text><xsl:text>"rubricVersion":"0.1",</xsl:text><xsl:text>"rubricMax":"25",</xsl:text><xsl:variable name="rubricExists" as="xs:integer+"><xsl:sequence select="$LTER_Identification.itemExists"></xsl:sequence><xsl:sequence select="$LTER_Discovery.itemExists"></xsl:sequence><xsl:sequence select="$LTER_Evaluation.itemExists"></xsl:sequence><xsl:sequence select="$LTER_Access.itemExists"></xsl:sequence><xsl:sequence select="$LTER_Integration.itemExists"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricExists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($rubricExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="rubricCounts" as="xs:integer+"><xsl:sequence select="$LTER_Identification.itemCounts"></xsl:sequence><xsl:sequence select="$LTER_Discovery.itemCounts"></xsl:sequence><xsl:sequence select="$LTER_Evaluation.itemCounts"></xsl:sequence><xsl:sequence select="$LTER_Access.itemCounts"></xsl:sequence><xsl:sequence select="$LTER_Integration.itemCounts"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricCounts'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="sum($rubricCounts)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text></xsl:template></xsl:stylesheet>