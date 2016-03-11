<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:gmi="http://www.isotc211.org/2005/gmi" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:mri="http://www.isotc211.org/namespace/mri/1.0/2014-07-11" xmlns:gex="http://www.isotc211.org/namespace/gex/1.0/2014-07-11" xmlns:dif="http://gcmd.gsfc.nasa.gov/Aboutus/xml/dif/" xmlns:echo="http://www.echo.nasa.gov/ingest/schemas/operations/" xmlns:eos="http://earthdata.nasa.gov/schema/eos" xmlns:serf="http://gcmd.gsfc.nasa.gov/xml/serf" xmlns:cw="http://www.ngdc.noaa.gov/metadata/published/xsd/crosswalk.xsd" xmlns:thredds="http://www.unidata.ucar.edu/namespaces/thredds/InvCatalog/v1.0" xmlns:hdf5="http://hdfgroup.org/HDF5/XML/schema/HDF5-File" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:fgdc="http://www.fgdc.gov/metadata/csdgm" version="2.0"><xsl:param name="recordSetPath"></xsl:param><xsl:param name="fileNamePattern"></xsl:param><xsl:output method="text"></xsl:output><xsl:template match="/"><xsl:variable name="xmlFilesSelect" select="concat($recordSetPath, '?select=',$fileNamePattern)"></xsl:variable><xsl:text>{"records": [</xsl:text><xsl:for-each select="collection(iri-to-uri($xmlFilesSelect))"><xsl:call-template name="writeSpirals"></xsl:call-template></xsl:for-each><xsl:text>]}</xsl:text></xsl:template><xsl:template name="writeSpirals"><xsl:if test="position()!=1"><xsl:text>,</xsl:text></xsl:if><xsl:text>{"spirals": [</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"FGDC for Data Discovery - Mandatory",</xsl:text><xsl:text>"code":"FGDC_Mandatory",</xsl:text><xsl:text>"description":"The FGDC Content Standard for Digital Geospatial Metadata includes fields in the Identification Information and Metadata Reference Sections that are mandatory for data discovery. In the graphical representation of the standard, these are yellow fields included in yellow sections.",</xsl:text><xsl:text>"maximum":"20",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Entry_Title | /dif:DIF/dif:Data_Set_Citation/dif:Dataset_Title)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Originating_Center)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Release_Date | /dif:DIF/dif:Reference/dif:Publication_Date)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Summary/dif:Abstract)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Summary/dif:Purpose)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Data_Set_Progress)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:TemporalCoverage//*)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Spatial_Coverage//*)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Access_Constraints)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Use_Constraints)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Parameters/dif:Category | /dif:DIF/dif:Parameters/dif:Topic | /dif:DIF/dif:Parameters/dif:Term | /dif:DIF/dif:Parameters/dif:Variable_Level_1 | /dif:DIF/dif:Parameters/dif:Variable_Level_2 | /dif:DIF/dif:Parameters/dif:Variable_Level_3 | /dif:DIF/dif:Parameters/dif:Detailed_Variable)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Data_Center/dif:Personnel/dif:Role)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Personnel[dif:Role='DIF AUTHOR'] | /dif:DIF/dif:Originating_Metadata_Node)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Metadata_Name)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Metadata_Version)) then 1 else 0"></xsl:sequence><xsl:sequence select="if(exists(/dif:DIF/dif:Distribution/dif:Fees)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Entry_Title) + count(/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Title)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Originating_Center)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Release_Date) + count(/dif:DIF/dif:Reference/dif:Publication_Date)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Summary/dif:Abstract)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Summary/dif:Purpose)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Data_Set_Progress)"></xsl:sequence><xsl:sequence select="count(/dif:TemporalCoverage//*)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Spatial_Coverage//*)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Access_Constraints)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Use_Constraints)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Parameters/dif:Category) + count(/dif:DIF/dif:Parameters/dif:Topic) + count(/dif:DIF/dif:Parameters/dif:Term) + count(/dif:DIF/dif:Parameters/dif:Variable_Level_1) + count(/dif:DIF/dif:Parameters/dif:Variable_Level_2) + count(/dif:DIF/dif:Parameters/dif:Variable_Level_3) + count(/dif:DIF/dif:Parameters/dif:Detailed_Variable)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Data_Center/dif:Personnel/dif:Role)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Personnel[dif:Role='DIF AUTHOR']) + count(/dif:DIF/dif:Originating_Metadata_Node)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Metadata_Name)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Metadata_Version)"></xsl:sequence><xsl:sequence select="count(/dif:DIF/dif:Distribution/dif:Fees)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Title",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e287" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Entry_Title | /dif:DIF/dif:Data_Set_Citation/dif:Dataset_Title)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e287)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e287" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Entry_Title | /dif:DIF/dif:Data_Set_Citation/dif:Dataset_Title)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e287)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Entry_Title",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Entry_Title)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Entry_Title)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Title",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Title)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Title)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A short description of the resource. The title should be descriptive enough so that when a user is presented with a list of titles the general content of the data set can be determined."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Originating Organization",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e4067" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Originating_Center)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e4067)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e4067" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Originating_Center)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e4067)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Originating_Center",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Originating_Center)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Originating_Center)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The organization responsible for creating the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Publication Date",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e2086" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Release_Date | /dif:DIF/dif:Reference/dif:Publication_Date)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e2086)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e2086" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Release_Date | /dif:DIF/dif:Reference/dif:Publication_Date)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e2086)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Release_Date",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Release_Date)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Data_Set_Citation/dif:Dataset_Release_Date)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Reference/dif:Publication_Date",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Reference/dif:Publication_Date)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Reference/dif:Publication_Date)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Date of publication of the cited resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Abstract",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e543" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Summary/dif:Abstract)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e543)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e543" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Summary/dif:Abstract)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e543)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Summary/dif:Abstract",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Summary/dif:Abstract)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Summary/dif:Abstract)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Desciption in Catalog Services for the Web.",</xsl:text><xsl:text>"description":"A paragraph describing the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Purpose",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e2981" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Summary/dif:Purpose)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e2981)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e2981" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Summary/dif:Purpose)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e2981)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Summary/dif:Purpose",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Summary/dif:Purpose)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Summary/dif:Purpose)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A paragraph describing the original purpose for collecting the dataset."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Status",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e9531" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Data_Set_Progress)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e9531)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e9531" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Data_Set_Progress)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e9531)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Data_Set_Progress",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Data_Set_Progress)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Data_Set_Progress)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The status of the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Update Frequency",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The frequency with which changes and additions are made to the data set after the initial data set is completed"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Temporal Extent",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e6449" as="xs:integer+"><xsl:sequence select="if(exists(/dif:TemporalCoverage//*)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e6449)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e6449" as="xs:integer+"><xsl:sequence select="count(/dif:TemporalCoverage//*)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e6449)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:TemporalCoverage//*",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:TemporalCoverage//*)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:TemporalCoverage//*)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The temporal extent of the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Bounding Box",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e4470" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Spatial_Coverage//*)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e4470)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e4470" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Spatial_Coverage//*)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e4470)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Spatial_Coverage//*",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Spatial_Coverage//*)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Spatial_Coverage//*)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Coverage in the CSW Specification",</xsl:text><xsl:text>"description":"A bounding box for identifying a geographic area of interest"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Access Constraints",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e4993" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Access_Constraints)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e4993)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e4993" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Access_Constraints)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e4993)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Access_Constraints",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Access_Constraints)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Access_Constraints)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Information about any constraints for accessing the data set. This includes any special restrictions, legal prerequisites, limitations and/or warnings on obtaining the data set. Some words that may be used in this field include: Public, In-house, Limited, Additional detailed instructions on how to access the data can be entered in this field."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Use Constraints",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e5065" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Use_Constraints)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e5065)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e5065" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Use_Constraints)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e5065)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Use_Constraints",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Use_Constraints)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Use_Constraints)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Information about how the data may or may not be used after access is granted to assure the protection of privacy or intellectual property. This includes any special restrictions, legal prerequisites, terms and conditions, and/or limitations on using the data set. Data providers may request acknowledgement of the data from users and claim no responsibility for quality and completeness of data."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Keyword",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e12070" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Parameters/dif:Category | /dif:DIF/dif:Parameters/dif:Topic | /dif:DIF/dif:Parameters/dif:Term | /dif:DIF/dif:Parameters/dif:Variable_Level_1 | /dif:DIF/dif:Parameters/dif:Variable_Level_2 | /dif:DIF/dif:Parameters/dif:Variable_Level_3 | /dif:DIF/dif:Parameters/dif:Detailed_Variable)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e12070)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e12070" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Parameters/dif:Category | /dif:DIF/dif:Parameters/dif:Topic | /dif:DIF/dif:Parameters/dif:Term | /dif:DIF/dif:Parameters/dif:Variable_Level_1 | /dif:DIF/dif:Parameters/dif:Variable_Level_2 | /dif:DIF/dif:Parameters/dif:Variable_Level_3 | /dif:DIF/dif:Parameters/dif:Detailed_Variable)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e12070)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Parameters/dif:Category",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Parameters/dif:Category)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Parameters/dif:Category)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Parameters/dif:Topic",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Parameters/dif:Topic)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Parameters/dif:Topic)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Parameters/dif:Term",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Parameters/dif:Term)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Parameters/dif:Term)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Parameters/dif:Variable_Level_1",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Parameters/dif:Variable_Level_1)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Parameters/dif:Variable_Level_1)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Parameters/dif:Variable_Level_2",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Parameters/dif:Variable_Level_2)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Parameters/dif:Variable_Level_2)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Parameters/dif:Variable_Level_3",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Parameters/dif:Variable_Level_3)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Parameters/dif:Variable_Level_3)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Parameters/dif:Detailed_Variable",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Parameters/dif:Detailed_Variable)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Parameters/dif:Detailed_Variable)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A word or phrase that describes some aspect of a resource. Can be one of several types."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Distribution Liability",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Statement of the liability assumed by the distributor."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Distribution Contact",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e5389" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Data_Center/dif:Personnel/dif:Role)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e5389)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e5389" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Data_Center/dif:Personnel/dif:Role)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e5389)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Data_Center/dif:Personnel/dif:Role",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Data_Center/dif:Personnel/dif:Role)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Data_Center/dif:Personnel/dif:Role)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Contact information for the organization or individual that distributes the resource."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Contact",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e981" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Personnel[dif:Role='DIF AUTHOR'] | /dif:DIF/dif:Originating_Metadata_Node)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e981)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e981" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Personnel[dif:Role='DIF AUTHOR'] | /dif:DIF/dif:Originating_Metadata_Node)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e981)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Personnel[dif:Role='DIF AUTHOR']",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Personnel[dif:Role='DIF AUTHOR'])) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Personnel[dif:Role='DIF AUTHOR'])"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Originating_Metadata_Node",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Originating_Metadata_Node)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Originating_Metadata_Node)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The organization or person currently responsible for the metadata."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Standard Citation",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e6686" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Metadata_Name)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e6686)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e6686" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Metadata_Name)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e6686)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Metadata_Name",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Metadata_Name)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Metadata_Name)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The name of the standard to which the metadata conforms"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Standard Version",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e6717" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Metadata_Version)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e6717)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e6717" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Metadata_Version)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e6717)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Metadata_Version",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Metadata_Version)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Metadata_Version)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The name of the standard to which the metadata conforms"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Ordering Instructions",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"General instructions, terms and services provided by the distributor"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Resource Cost or Fees",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e5271" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Distribution/dif:Fees)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e5271)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e5271" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Distribution/dif:Fees)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e5271)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Distribution/dif:Fees",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Distribution/dif:Fees)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Distribution/dif:Fees)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Cost associated with access to the resource"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Turnaround",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Typical turnaround time for the filling of an order."</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"FGDC for Data Discovery - Mandatory if Applicable",</xsl:text><xsl:text>"code":"FGDC_MandatoryIfApplicable",</xsl:text><xsl:text>"description":"The FGDC Content Standard for Digital Geospatial Metadata includes many fields related to data understanding. These are generally labeled 'Mandatory if Applicable'. In the graphical representation of the standard, these are green fields included in yellow or green sections.",</xsl:text><xsl:text>"maximum":"20",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Distribution/dif:Distribution_Media)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Distribution/dif:Distribution_Media)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Attribute Accuracy Report",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"An explanation of the accuracy of the identification of the entities and assignments of values in the data set and a description of the tests used"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Attribute Accuracy Value",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"An estimate of the accuracy of the identification of the entities and assignments of attribute values in the data set"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Attribute Accuracy Explanation",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The identification of the test that yielded the Attribute Accuracy Value. "</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Logical Consistency Report",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"An explanation of the fidelity of relationships in the data set and tests used."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Horizontal Positional Accuracy Report",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"An explanation of the accuracy of the horizontal coordinate measurements and a description of the tests used."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Horizontal Positional Accuracy Value",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"An estimate of the accuracy of the horizontal coordinate measurements in the data set expressed in (ground) meters."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Horizontal Positional Accuracy Explanation",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The identification of the test that yielded the Horizontal Positional Accuracy Value."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Vertical Positional Accuracy Report",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"An explanation of the accuracy of the vertical coordinate measurements and a description of the tests used."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Vertical Positional Accuracy Value",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"an estimate of the accuracy of the vertical coordinate measurement in the data set expressed in (ground) meters."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Vertical Positional Accuracy Explanation",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The identification of the test that yielded the Vertical Positional Accuracy Value."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Source Citation",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Reference to the processing input source."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Media",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e5211" as="xs:integer+"><xsl:sequence select="if(exists(/dif:DIF/dif:Distribution/dif:Distribution_Media)) then 1 else 0"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e5211)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e5211" as="xs:integer+"><xsl:sequence select="count(/dif:DIF/dif:Distribution/dif:Distribution_Media)"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e5211)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dif:DIF/dif:Distribution/dif:Distribution_Media",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="if(exists(/dif:DIF/dif:Distribution/dif:Distribution_Media)) then 1 else 0"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dif:DIF/dif:Distribution/dif:Distribution_Media)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Media on which the resource is available"</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Source Time Period",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Time period for which the source data set corresponds to the ground."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Source Citation Abbreviation",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Short-form alias for the source citation."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Source Description",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Detailed description of the source."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Process Step Description",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Description of the event, including related parameters or tolerances."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Source Used",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The source used in the processing step."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Process Step Time",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Date, time, range or period of process step."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Source Produced",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The source produced from the process step."</xsl:text><xsl:text>}</xsl:text>,
<xsl:text>{
</xsl:text><xsl:text>"name":"Processor",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Identification of, and means of communication with, person(s) and organisation(s) associated with the process step."</xsl:text><xsl:text>}</xsl:text>
<xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>],</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Record'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="document-uri(.)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Date'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="current-date()"></xsl:value-of><xsl:text>",
</xsl:text><xsl:text>"rubricType":"UMM-C",</xsl:text><xsl:text>"rubricVersion":"0.1",</xsl:text><xsl:text>"rubricMax":"40",</xsl:text><xsl:variable name="rubricExists" as="xs:integer+"><xsl:sequence select="$FGDC_Mandatory.itemExists"></xsl:sequence><xsl:sequence select="$FGDC_MandatoryIfApplicable.itemExists"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricExists'"></xsl:value-of><xsl:text>":"</xsl:text><xsl:value-of select="sum($rubricExists)"></xsl:value-of><xsl:text>",
</xsl:text><xsl:variable name="rubricCounts" as="xs:integer+"><xsl:sequence select="$FGDC_Mandatory.itemCounts"></xsl:sequence><xsl:sequence select="$FGDC_MandatoryIfApplicable.itemCounts"></xsl:sequence></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricCounts'"></xsl:value-of><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="sum($rubricCounts)"></xsl:value-of><xsl:text>"
</xsl:text><xsl:text>}</xsl:text></xsl:template></xsl:stylesheet>