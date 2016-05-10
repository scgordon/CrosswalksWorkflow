<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:gmi="http://www.isotc211.org/2005/gmi" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:mri="http://www.isotc211.org/namespace/mri/1.0/2014-07-11" xmlns:gex="http://www.isotc211.org/namespace/gex/1.0/2014-07-11" xmlns:dif="http://gcmd.gsfc.nasa.gov/Aboutus/xml/dif/" xmlns:echo="http://www.echo.nasa.gov/ingest/schemas/operations/" xmlns:eos="http://earthdata.nasa.gov/schema/eos" xmlns:serf="http://gcmd.gsfc.nasa.gov/xml/serf" xmlns:cw="http://www.ngdc.noaa.gov/metadata/published/xsd/crosswalk.xsd"
    xmlns:thredds="http://www.unidata.ucar.edu/namespaces/thredds/InvCatalog/v1.0" xmlns:hdf5="http://hdfgroup.org/HDF5/XML/schema/HDF5-File" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:csdgm="http://www.fgdc.gov/metadata/csdgm" xmlns:dryad="http://purl.org/dryad/schema/terms/v3.1" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dwc="http://rs.tdwg.org/dwc/terms/" xmlns:eml="eml://ecoinformatics.org/eml-2.1.1" xmlns:onedcx="http://ns.dataone.org/metadata/schema/onedcx/v1.0"
    xmlns:mercury="http://purl.org/ornl/schema/mercury/terms/v1.0" xmlns:bdp="https://www.fgdc.gov/standards/projects/FGDC-standards-projects/metadata/biometadata" version="2.0">
    <xsl:param name="recordSetPath"/>                                                                                                                                                                                                                                                                                                                     
    <xsl:param name="fileNamePattern"/>
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:variable name="xmlFilesSelect" select="concat($recordSetPath, '?select=', $fileNamePattern)"/>
        <xsl:text>{"records": [</xsl:text>
        <xsl:for-each select="collection(iri-to-uri($xmlFilesSelect))">
            <xsl:call-template name="writeSpirals"/>
        </xsl:for-each>
        <xsl:text>]}</xsl:text>
    </xsl:template>
    <xsl:template name="writeSpirals"><xsl:if test="position() != 1"
            ><xsl:text>,</xsl:text></xsl:if><xsl:text>{"spirals": [</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"ISO-1 for Data Discovery - Mandatory",</xsl:text><xsl:text>"code":"ISO-1_Discovery-Mandatory",</xsl:text><xsl:text>"description":"This spiral includes mandatory ISO 19115-1 attributes for data discovery. This list of attributes was obtained from table F.1 of the ISO 19115-1 Specification.",</xsl:text><xsl:text>"maximum":"6",</xsl:text><xsl:variable
            name="ISO-1_Discovery-Mandatory.itemExists" as="xs:integer+"><xsl:sequence select="
                    if (exists(/dryad:DryadDataPackage/dcterms:title)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/dryad:DryadDataPackage/dcterms:description)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of
            select="'existTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Mandatory.itemExists)"/><xsl:text>",
</xsl:text><xsl:variable name="ISO-1_Discovery-Mandatory.itemCounts" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataPackage/dcterms:title)"/><xsl:sequence select="count(/dryad:DryadDataPackage/dcterms:description)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($ISO-1_Discovery-Mandatory.itemCounts)"/><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Title",</xsl:text><xsl:variable name="ISO-1_Discovery-Mandatory.itemExists.d1e314" as="xs:integer+"><xsl:sequence select="
                    if (exists(/dryad:DryadDataPackage/dcterms:title)) then
                        1
                    else
                        0"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Mandatory.itemExists.d1e314)"/><xsl:text>",
</xsl:text><xsl:variable name="ISO-1_Discovery-Mandatory.itemCounts.d1e314" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataPackage/dcterms:title)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($ISO-1_Discovery-Mandatory.itemCounts.d1e314)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataPackage/dcterms:title",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/dryad:DryadDataPackage/dcterms:title)) then
                    1
                else
                    0"
            /><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataPackage/dcterms:title)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A short description of the resource. The title should be descriptive enough so that when a user is presented with a list of titles the general content of the data set can be determined."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Abstract",</xsl:text><xsl:variable name="ISO-1_Discovery-Mandatory.itemExists.d1e573" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/dryad:DryadDataPackage/dcterms:description)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Mandatory.itemExists.d1e573)"/><xsl:text>",
</xsl:text><xsl:variable name="ISO-1_Discovery-Mandatory.itemCounts.d1e573" as="xs:integer+"><xsl:sequence
                select="count(/dryad:DryadDataPackage/dcterms:description)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Mandatory.itemCounts.d1e573)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataPackage/dcterms:description",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/dryad:DryadDataPackage/dcterms:description)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataPackage/dcterms:description)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Desciption in Catalog Services for the Web.",</xsl:text><xsl:text>"description":"A paragraph describing the resource."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Modified Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Date on which the metadata record (not the resource) was created or updated within the catalogue."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Contact",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The organization or person currently responsible for the metadata."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Bounding Box",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"note":"This concept is called Coverage in the CSW Specification",</xsl:text><xsl:text>"description":"A bounding box for identifying a geographic area of interest"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Topic Category",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"High level category enumeration used in ISO"</xsl:text><xsl:text>}</xsl:text>
        <xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"ISO-1 for Data Discovery - Conditional",</xsl:text><xsl:text>"code":"ISO-1_Discovery-Conditional",</xsl:text><xsl:text>"description":"This spiral includes conditional ISO 19115-1 attributes for data discovery. This list of attributes was obtained from table F.1 of the ISO 19115-1 Specification.",</xsl:text><xsl:text>"maximum":"2",</xsl:text><xsl:variable
            name="ISO-1_Discovery-Conditional.itemExists" as="xs:integer+"><xsl:sequence select="
                    if (exists(/dryad:DryadDataPackage/dcterms:type)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Conditional.itemExists)"/><xsl:text>",
</xsl:text><xsl:variable
            name="ISO-1_Discovery-Conditional.itemCounts" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataPackage/dcterms:type)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Conditional.itemCounts)"
        /><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Language",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The language of the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Type",</xsl:text><xsl:variable name="ISO-1_Discovery-Conditional.itemExists.d1e6379" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/dryad:DryadDataPackage/dcterms:type)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Conditional.itemExists.d1e6379)"/><xsl:text>",
</xsl:text><xsl:variable name="ISO-1_Discovery-Conditional.itemCounts.d1e6379" as="xs:integer+"><xsl:sequence
                select="count(/dryad:DryadDataPackage/dcterms:type)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Conditional.itemCounts.d1e6379)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataPackage/dcterms:type",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/dryad:DryadDataPackage/dcterms:type)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataPackage/dcterms:type)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A resource code identifying the type of resource; e.g. dataset, a collection, an application (See MD_ScopeCode) for which the metadata describes."</xsl:text><xsl:text>}</xsl:text>
        <xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"ISO-1 for Data Discovery - Optional",</xsl:text><xsl:text>"code":"ISO-1_Discovery-Optional",</xsl:text><xsl:text>"description":"This spiral includes optional ISO 19115-1 attributes for data discovery. This list of attributes was obtained from table F.1 of the ISO 19115-1 Specification.",</xsl:text><xsl:text>"maximum":"11",</xsl:text><xsl:variable
            name="ISO-1_Discovery-Optional.itemExists" as="xs:integer+"><xsl:sequence select="
                    if (exists(/dryad:DryadDataPackage/dcterms:subject)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/dryad:DryadDataPackage/dcterms:dateSubmitted | /dryad:DryadDataPackage/dcterms:available)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/dryad:DryadDataPackage/dcterms:identifier)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/dryad:DryadDataPackage/dcterms:temporal)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/dryad:DryadDataPackage/dcterms:relation)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemExists)"/><xsl:text>",
</xsl:text><xsl:variable name="ISO-1_Discovery-Optional.itemCounts" as="xs:integer+"><xsl:sequence
                select="count(/dryad:DryadDataPackage/dcterms:subject)"/><xsl:sequence select="count(/dryad:DryadDataPackage/dcterms:dateSubmitted) + count(/dryad:DryadDataPackage/dcterms:available)"/><xsl:sequence select="count(/dryad:DryadDataPackage/dcterms:identifier)"/><xsl:sequence select="count(/dryad:DryadDataPackage/dcterms:temporal)"/><xsl:sequence select="count(/dryad:DryadDataPackage/dcterms:relation)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemCounts)"/><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Identifier",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A phrase or string which uniquely identifies the metadata file/record."</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Keyword",</xsl:text><xsl:variable name="ISO-1_Discovery-Optional.itemExists.d1e12800" as="xs:integer+"><xsl:sequence select="
                    if (exists(/dryad:DryadDataPackage/dcterms:subject)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($ISO-1_Discovery-Optional.itemExists.d1e12800)"/><xsl:text>",
</xsl:text><xsl:variable name="ISO-1_Discovery-Optional.itemCounts.d1e12800" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataPackage/dcterms:subject)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemCounts.d1e12800)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataPackage/dcterms:subject",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/dryad:DryadDataPackage/dcterms:subject)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataPackage/dcterms:subject)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A word or phrase that describes some aspect of a resource. Can be one of several types."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Creation/Revision Date",</xsl:text><xsl:variable
            name="ISO-1_Discovery-Optional.itemExists.d1e447" as="xs:integer+"><xsl:sequence select="
                    if (exists(/dryad:DryadDataPackage/dcterms:dateSubmitted | /dryad:DryadDataPackage/dcterms:available)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemExists.d1e447)"
            /><xsl:text>",
</xsl:text><xsl:variable name="ISO-1_Discovery-Optional.itemCounts.d1e447" as="xs:integer+"><xsl:sequence select="count(/dryad:DryadDataPackage/dcterms:dateSubmitted | /dryad:DryadDataPackage/dcterms:available)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemCounts.d1e447)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataPackage/dcterms:dateSubmitted",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/dryad:DryadDataPackage/dcterms:dateSubmitted)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataPackage/dcterms:dateSubmitted)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataPackage/dcterms:available",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/dryad:DryadDataPackage/dcterms:available)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataPackage/dcterms:available)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The date the resource was created"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Identifier",</xsl:text><xsl:variable name="ISO-1_Discovery-Optional.itemExists.d1e2746" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/dryad:DryadDataPackage/dcterms:identifier)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemExists.d1e2746)"/><xsl:text>",
</xsl:text><xsl:variable name="ISO-1_Discovery-Optional.itemCounts.d1e2746" as="xs:integer+"><xsl:sequence
                select="count(/dryad:DryadDataPackage/dcterms:identifier)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemCounts.d1e2746)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataPackage/dcterms:identifier",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/dryad:DryadDataPackage/dcterms:identifier)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataPackage/dcterms:identifier)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Identifier for the resource described by the metadata"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Contact",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The organization or person responsible for answering questions about the resource."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Spatial Resolution",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The nominal scale and/or spatial resolution of the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Temporal Extent",</xsl:text><xsl:variable name="ISO-1_Discovery-Optional.itemExists.d1e6497" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/dryad:DryadDataPackage/dcterms:temporal)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemExists.d1e6497)"/><xsl:text>",
</xsl:text><xsl:variable name="ISO-1_Discovery-Optional.itemCounts.d1e6497" as="xs:integer+"><xsl:sequence
                select="count(/dryad:DryadDataPackage/dcterms:temporal)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemCounts.d1e6497)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataPackage/dcterms:temporal",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/dryad:DryadDataPackage/dcterms:temporal)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataPackage/dcterms:temporal)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The temporal extent of the resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Vertical Extent",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The vertical extent of the resource"</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Lineage",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A description of the source(s) and production process(es) used in producing the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource on-line Link",</xsl:text><xsl:variable name="ISO-1_Discovery-Optional.itemExists.d1e6629" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/dryad:DryadDataPackage/dcterms:relation)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemExists.d1e6629)"/><xsl:text>",
</xsl:text><xsl:variable name="ISO-1_Discovery-Optional.itemCounts.d1e6629" as="xs:integer+"><xsl:sequence
                select="count(/dryad:DryadDataPackage/dcterms:relation)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($ISO-1_Discovery-Optional.itemCounts.d1e6629)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/dryad:DryadDataPackage/dcterms:relation",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/dryad:DryadDataPackage/dcterms:relation)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/dryad:DryadDataPackage/dcterms:relation)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Online link referencing additional information about the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Use Constraints",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Information about how the data may or may not be used after access is granted to assure the protection of privacy or intellectual property. This includes any special restrictions, legal prerequisites, terms and conditions, and/or limitations on using the data set. Data providers may request acknowledgement of the data from users and claim no responsibility for quality and completeness of data."</xsl:text><xsl:text>}</xsl:text>
        <xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>],</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Record'"/><xsl:text>":"</xsl:text><xsl:value-of select="document-uri(.)"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Date'"/><xsl:text>":"</xsl:text><xsl:value-of select="current-date()"/><xsl:text>",
</xsl:text><xsl:text>"rubricType":"ISO-1",</xsl:text><xsl:text>"rubricVersion":"0.1",</xsl:text><xsl:text>"rubricMax":"19",</xsl:text><xsl:variable
            name="rubricExists" as="xs:integer+"><xsl:sequence select="$ISO-1_Discovery-Mandatory.itemExists"/><xsl:sequence select="$ISO-1_Discovery-Conditional.itemExists"/><xsl:sequence select="$ISO-1_Discovery-Optional.itemExists"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricExists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($rubricExists)"/><xsl:text>",
</xsl:text><xsl:variable name="rubricCounts" as="xs:integer+"><xsl:sequence
                select="$ISO-1_Discovery-Mandatory.itemCounts"/><xsl:sequence select="$ISO-1_Discovery-Conditional.itemCounts"/><xsl:sequence select="$ISO-1_Discovery-Optional.itemCounts"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricCounts'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="sum($rubricCounts)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text></xsl:template>
</xsl:stylesheet>
