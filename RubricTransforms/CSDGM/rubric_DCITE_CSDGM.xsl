<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:gmi="http://www.isotc211.org/2005/gmi" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:mri="http://www.isotc211.org/namespace/mri/1.0/2014-07-11" xmlns:gex="http://www.isotc211.org/namespace/gex/1.0/2014-07-11" xmlns:dif="http://gcmd.gsfc.nasa.gov/Aboutus/xml/dif/" xmlns:echo="http://www.echo.nasa.gov/ingest/schemas/operations/" xmlns:eos="http://earthdata.nasa.gov/schema/eos" xmlns:serf="http://gcmd.gsfc.nasa.gov/xml/serf" xmlns:cw="http://www.ngdc.noaa.gov/metadata/published/xsd/crosswalk.xsd" xmlns:thredds="http://www.unidata.ucar.edu/namespaces/thredds/InvCatalog/v1.0" xmlns:hdf5="http://hdfgroup.org/HDF5/XML/schema/HDF5-File" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:csdgm="http://www.fgdc.gov/metadata/csdgm" xmlns:dryad="http://purl.org/dryad/schema/terms/v3.1" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dwc="http://rs.tdwg.org/dwc/terms/" xmlns:eml="eml://ecoinformatics.org/eml-2.1.1" xmlns:onedcx="http://ns.dataone.org/metadata/schema/onedcx/v1.0" xmlns:mercury="http://purl.org/ornl/schema/mercury/terms/v1.0" xmlns:bdp="https://www.fgdc.gov/standards/projects/FGDC-standards-projects/metadata/biometadata" version="2.0"><xsl:param name="recordSetPath"></xsl:param><xsl:param name="fileNamePattern"></xsl:param><xsl:output method="text"></xsl:output><xsl:template match="/"><xsl:variable name="xmlFilesSelect" select="concat($recordSetPath, '?select=',$fileNamePattern)"></xsl:variable><xsl:text>{"records": [</xsl:text><xsl:for-each select="collection(iri-to-uri($xmlFilesSelect))"><xsl:call-template name="writeSpirals"></xsl:call-template></xsl:for-each><xsl:text>]}</xsl:text></xsl:template><xsl:template name="writeSpirals"><xsl:if test="position()!=1"><xsl:text>,</xsl:text></xsl:if><xsl:text>{"spirals": [</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"DataCite Metadata Schema for the Publication and Citation of Research Data - Mandatory",</xsl:text><xsl:text>"code":"DataCite3.1Mandatory",</xsl:text><xsl:text>"description":"The DataCite Metadata Schema is a list of core metadata properties chosen for the accurate and consistent identification of a resource for citation and retrieval purposes, along with recommended use instructions. The resource that is being identified can be of any kind, but it is typically a dataset. We use the term 'dataset' in its broadest sense. We mean it to include not only numerical data, but any other research data outputs.",</xsl:text><xsl:text>"maximum":"8",</xsl:text><xsl:variable name="DataCite3.1Mandatory.itemExists" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/citation/citeinfo/origin)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/idinfo/citation/citeinfo/title)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/idinfo/citation/citeinfo/pubinfo/publish)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/idinfo/citation/citeinfo/pubdate)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Mandatory.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Mandatory.itemCounts" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/origin)"></xsl:sequence><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/title)"></xsl:sequence><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/pubinfo/publish)"></xsl:sequence><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/pubdate)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Mandatory.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Identifier",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Identifier for the resource described by the metadata"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Identifier Type",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The type of identifier used to uniquely identify the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Author / Originator",</xsl:text><xsl:variable name="DataCite3.1Mandatory.itemExists.d1e3947" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/citation/citeinfo/origin)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Mandatory.itemExists.d1e3947)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Mandatory.itemCounts.d1e3947" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/origin)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Mandatory.itemCounts.d1e3947)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/citation/citeinfo/origin",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/citation/citeinfo/origin)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/citation/citeinfo/origin)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"In CSW this concept is called Creator",</xsl:text><xsl:text>"description":"The principal author of the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Author / Originator Identifier",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A unique identifier for a resource author or originator"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Author / Originator Identifier Type",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The type of unique identifier for a resource author or originator"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Title",</xsl:text><xsl:variable name="DataCite3.1Mandatory.itemExists.d1e314" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/citation/citeinfo/title)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Mandatory.itemExists.d1e314)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Mandatory.itemCounts.d1e314" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/title)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Mandatory.itemCounts.d1e314)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/citation/citeinfo/title",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/citation/citeinfo/title)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/citation/citeinfo/title)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A short description of the resource. The title should be descriptive enough so that when a user is presented with a list of titles the general content of the data set can be determined."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Publisher",</xsl:text><xsl:variable name="DataCite3.1Mandatory.itemExists.d1e2221" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/citation/citeinfo/pubinfo/publish)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Mandatory.itemExists.d1e2221)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Mandatory.itemCounts.d1e2221" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/pubinfo/publish)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Mandatory.itemCounts.d1e2221)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/citation/citeinfo/pubinfo/publish",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/citation/citeinfo/pubinfo/publish)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/citation/citeinfo/pubinfo/publish)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Publisher of the cited resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Creation/Revision Date",</xsl:text><xsl:variable name="DataCite3.1Mandatory.itemExists.d1e447" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/citation/citeinfo/pubdate)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Mandatory.itemExists.d1e447)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Mandatory.itemCounts.d1e447" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/pubdate)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Mandatory.itemCounts.d1e447)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/citation/citeinfo/pubdate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/citation/citeinfo/pubdate)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/citation/citeinfo/pubdate)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The date the resource was created"</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"DataCite Metadata Schema for the Publication and Citation of Research Data - Recommended",</xsl:text><xsl:text>"code":"DataCite3.1Recommended",</xsl:text><xsl:text>"description":"The DataCite Metadata Schema is a list of core metadata properties chosen for the accurate and consistent identification of a resource for citation and retrieval purposes, along with recommended use instructions. The resource that is being identified can be of any kind, but it is typically a dataset. We use the term 'dataset' in its broadest sense. We mean it to include not only numerical data, but any other research data outputs.",</xsl:text><xsl:text>"maximum":"11",</xsl:text><xsl:variable name="DataCite3.1Recommended.itemExists" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/keywords/theme/themekey)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/idinfo/keywords/theme/themekt)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/idinfo/datacred)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/idinfo/citation/citeinfo/pubdate)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/distinfo/resdesc)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/idinfo/descript/abstract)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/idinfo/spdom/bounding)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Recommended.itemCounts" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/keywords/theme/themekey)"></xsl:sequence><xsl:sequence select="count(/metadata/idinfo/keywords/theme/themekt)"></xsl:sequence><xsl:sequence select="count(/metadata/idinfo/datacred)"></xsl:sequence><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/pubdate)"></xsl:sequence><xsl:sequence select="count(/metadata/distinfo/resdesc)"></xsl:sequence><xsl:sequence select="count(/metadata/idinfo/descript/abstract)"></xsl:sequence><xsl:sequence select="count(/metadata/idinfo/spdom/bounding)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Keyword",</xsl:text><xsl:variable name="DataCite3.1Recommended.itemExists.d1e12800" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/keywords/theme/themekey)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemExists.d1e12800)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Recommended.itemCounts.d1e12800" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/keywords/theme/themekey)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemCounts.d1e12800)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/keywords/theme/themekey",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/keywords/theme/themekey)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/keywords/theme/themekey)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A word or phrase that describes some aspect of a resource. Can be one of several types."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Keyword Vocabulary",</xsl:text><xsl:variable name="DataCite3.1Recommended.itemExists.d1e919" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/keywords/theme/themekt)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemExists.d1e919)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Recommended.itemCounts.d1e919" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/keywords/theme/themekt)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemCounts.d1e919)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/keywords/theme/themekt",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/keywords/theme/themekt)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/keywords/theme/themekt)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"DIF, ECHO and ECS require that theme keywords come from the Global Change Master Directory list.",</xsl:text><xsl:text>"description":"If you are following a guideline or using a shared vocabulary for the words/phrases in your 'keywords' attribute, put the name of that guideline here."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Contributor Name",</xsl:text><xsl:variable name="DataCite3.1Recommended.itemExists.d1e4650" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/datacred)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemExists.d1e4650)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Recommended.itemCounts.d1e4650" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/datacred)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemCounts.d1e4650)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/datacred",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/datacred)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/datacred)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Contributor to the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Contributor Role",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The role of any individuals or institutions that contributed to the creation of the data."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Responsible Party Identifier Type",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The type of a unique identifier for a person or an organization"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Responsible Party Identifier",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A unique identifier for a person or an organization"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Creation/Revision Date",</xsl:text><xsl:variable name="DataCite3.1Recommended.itemExists.d1e447" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/citation/citeinfo/pubdate)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemExists.d1e447)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Recommended.itemCounts.d1e447" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/pubdate)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemCounts.d1e447)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/citation/citeinfo/pubdate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/citation/citeinfo/pubdate)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/citation/citeinfo/pubdate)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The date the resource was created"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Type",</xsl:text><xsl:variable name="DataCite3.1Recommended.itemExists.d1e6379" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/distinfo/resdesc)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemExists.d1e6379)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Recommended.itemCounts.d1e6379" as="xs:integer+"><xsl:sequence select="count(/metadata/distinfo/resdesc)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemCounts.d1e6379)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/distinfo/resdesc",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/distinfo/resdesc)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/distinfo/resdesc)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A resource code identifying the type of resource; e.g. dataset, a collection, an application (See MD_ScopeCode) for which the metadata describes."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Related Resource Identifier",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Identifier for a resource related to the resource being described."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Abstract",</xsl:text><xsl:variable name="DataCite3.1Recommended.itemExists.d1e573" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/descript/abstract)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemExists.d1e573)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Recommended.itemCounts.d1e573" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/descript/abstract)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemCounts.d1e573)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/descript/abstract",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/descript/abstract)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/descript/abstract)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Desciption in Catalog Services for the Web.",</xsl:text><xsl:text>"description":"A paragraph describing the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Spatial Extent",</xsl:text><xsl:variable name="DataCite3.1Recommended.itemExists.d1e7908" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/spdom/bounding)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemExists.d1e7908)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Recommended.itemCounts.d1e7908" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/spdom/bounding)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Recommended.itemCounts.d1e7908)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/spdom/bounding",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/spdom/bounding)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/spdom/bounding)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The spatial extent of the resource."</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"DataCite Metadata Schema for the Publication and Citation of Research Data - Optional",</xsl:text><xsl:text>"code":"DataCite3.1Optional",</xsl:text><xsl:text>"description":"The DataCite Metadata Schema is a list of core metadata properties chosen for the accurate and consistent identification of a resource for citation and retrieval purposes, along with recommended use instructions. The resource that is being identified can be of any kind, but it is typically a dataset. We use the term 'dataset' in its broadest sense. We mean it to include not only numerical data, but any other research data outputs.",</xsl:text><xsl:text>"maximum":"6",</xsl:text><xsl:variable name="DataCite3.1Optional.itemExists" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/distinfo/stdorder/digform/digtinfo/transize)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/distinfo/distributor/distorFormat/formatName | /metadata/distinfo/stdorder/digform/digtinfo/formname)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/metadata/idinfo/accconst | /metadata/idinfo/useconst | /metadata/metainfo/metac | /metadata/metainfo/metuc)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Optional.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Optional.itemCounts" as="xs:integer+"><xsl:sequence select="count(/metadata/distinfo/stdorder/digform/digtinfo/transize)"></xsl:sequence><xsl:sequence select="count(/metadata/distinfo/distributor/distorFormat/formatName) + count(/metadata/distinfo/stdorder/digform/digtinfo/formname)"></xsl:sequence><xsl:sequence select="count(/metadata/idinfo/accconst) + count(/metadata/idinfo/useconst) + count(/metadata/metainfo/metac) + count(/metadata/metainfo/metuc)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Optional.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Language",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The language of the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Identifier",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Identifier for the resource described by the metadata"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Transfer Size",</xsl:text><xsl:variable name="DataCite3.1Optional.itemExists.d1e5360" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/distinfo/stdorder/digform/digtinfo/transize)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Optional.itemExists.d1e5360)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Optional.itemCounts.d1e5360" as="xs:integer+"><xsl:sequence select="count(/metadata/distinfo/stdorder/digform/digtinfo/transize)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Optional.itemCounts.d1e5360)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/distinfo/stdorder/digform/digtinfo/transize",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/distinfo/stdorder/digform/digtinfo/transize)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/distinfo/stdorder/digform/digtinfo/transize)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The size of the digital resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Format",</xsl:text><xsl:variable name="DataCite3.1Optional.itemExists.d1e4713" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/distinfo/distributor/distorFormat/formatName | /metadata/distinfo/stdorder/digform/digtinfo/formname)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Optional.itemExists.d1e4713)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Optional.itemCounts.d1e4713" as="xs:integer+"><xsl:sequence select="count(/metadata/distinfo/distributor/distorFormat/formatName | /metadata/distinfo/stdorder/digform/digtinfo/formname)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Optional.itemCounts.d1e4713)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/distinfo/distributor/distorFormat/formatName",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/distinfo/distributor/distorFormat/formatName)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/distinfo/distributor/distorFormat/formatName)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/distinfo/stdorder/digform/digtinfo/formname",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/distinfo/stdorder/digform/digtinfo/formname)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/distinfo/stdorder/digform/digtinfo/formname)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The physical or digital manifestation of the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Version",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Version of the cited resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Rights",</xsl:text><xsl:variable name="DataCite3.1Optional.itemExists.d1e4842" as="xs:integer+"><xsl:sequence select="if(exists(/metadata/idinfo/accconst | /metadata/idinfo/useconst | /metadata/metainfo/metac | /metadata/metainfo/metuc)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Optional.itemExists.d1e4842)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="DataCite3.1Optional.itemCounts.d1e4842" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/accconst | /metadata/idinfo/useconst | /metadata/metainfo/metac | /metadata/metainfo/metuc)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($DataCite3.1Optional.itemCounts.d1e4842)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/accconst",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/accconst)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/accconst)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/useconst",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/idinfo/useconst)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/useconst)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/metainfo/metac",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/metainfo/metac)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/metainfo/metac)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/metainfo/metuc",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/metadata/metainfo/metuc)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/metainfo/metuc)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Information about rights held in and over the resource"</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>],</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Record'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="document-uri(.)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Date'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="current-date()"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"rubricType":"DCITE",</xsl:text><xsl:text>"rubricVersion":"0.1",</xsl:text><xsl:text>"rubricMax":"25",</xsl:text><xsl:variable name="rubricExists" as="xs:integer+"><xsl:sequence select="$DataCite3.1Mandatory.itemExists"></xsl:sequence><xsl:sequence select="$DataCite3.1Recommended.itemExists"></xsl:sequence><xsl:sequence select="$DataCite3.1Optional.itemExists"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricExists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($rubricExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="rubricCounts" as="xs:integer+"><xsl:sequence select="$DataCite3.1Mandatory.itemCounts"></xsl:sequence><xsl:sequence select="$DataCite3.1Recommended.itemCounts"></xsl:sequence><xsl:sequence select="$DataCite3.1Optional.itemCounts"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricCounts'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="sum($rubricCounts)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text></xsl:template></xsl:stylesheet>