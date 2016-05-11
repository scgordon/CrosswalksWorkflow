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
{</xsl:text><xsl:text>"title":"Catalog Services for the Web (CSW) Core Queryables",</xsl:text><xsl:text>"code":"CSWCoreQueryables",</xsl:text><xsl:text>"description":"The Open Geospatial Consortium Catalog Services for the Web (CSW) standard defines 11 Core Queryables that must be supported in any compliant implementation. Profiles of CSW map these queryables to concepts and xPaths for particular metadata dialects. For additional reference information see the ISO Profile of CSW (Table 6).",</xsl:text><xsl:text>"maximum":"10",</xsl:text><xsl:variable
            name="CSWCoreQueryables.itemExists" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/keywordSet/keyword)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/title)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/dataTable/physical/dataFormat)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemExists)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreQueryables.itemCounts" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/keywordSet/keyword)"/><xsl:sequence select="count(/eml:eml/dataset/title)"/><xsl:sequence select="count(/eml:eml/dataset/abstract) + count(/eml:eml/dataset/abstract)"/><xsl:sequence select="count(/eml:eml/dataset/dataTable/physical/dataFormat)"/><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($CSWCoreQueryables.itemCounts)"/><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Keyword",</xsl:text><xsl:variable name="CSWCoreQueryables.itemExists.d1e12800" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/keywordSet/keyword)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemExists.d1e12800)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreQueryables.itemCounts.d1e12800" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/keywordSet/keyword)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemCounts.d1e12800)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/keywordSet/keyword",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/keywordSet/keyword)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/keywordSet/keyword)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A word or phrase that describes some aspect of a resource. Can be one of several types."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Title",</xsl:text><xsl:variable name="CSWCoreQueryables.itemExists.d1e314"
            as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/title)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemExists.d1e314)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreQueryables.itemCounts.d1e314" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/title)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemCounts.d1e314)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/title",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/title)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/title)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A short description of the resource. The title should be descriptive enough so that when a user is presented with a list of titles the general content of the data set can be determined."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Abstract",</xsl:text><xsl:variable name="CSWCoreQueryables.itemExists.d1e573" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemExists.d1e573)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreQueryables.itemCounts.d1e573" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemCounts.d1e573)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/abstract",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/abstract)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/abstract)"
            /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/abstract",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/abstract)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/abstract)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Desciption in Catalog Services for the Web.",</xsl:text><xsl:text>"description":"A paragraph describing the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Format",</xsl:text><xsl:variable
            name="CSWCoreQueryables.itemExists.d1e4713" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/dataTable/physical/dataFormat)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemExists.d1e4713)"/><xsl:text>",
</xsl:text><xsl:variable
            name="CSWCoreQueryables.itemCounts.d1e4713" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/dataTable/physical/dataFormat)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemCounts.d1e4713)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/dataTable/physical/dataFormat",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/dataTable/physical/dataFormat)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/dataTable/physical/dataFormat)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The physical or digital manifestation of the resource"</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Identifier",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A phrase or string which uniquely identifies the metadata file/record."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Modified Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Date on which the metadata record (not the resource) was created or updated within the catalogue."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Type",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A resource code identifying the type of resource; e.g. dataset, a collection, an application (See MD_ScopeCode) for which the metadata describes."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Bounding Box",</xsl:text><xsl:variable name="CSWCoreQueryables.itemExists.d1e4489" as="xs:integer+"
                ><xsl:sequence select="
                    if (exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemExists.d1e4489)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreQueryables.itemCounts.d1e4489" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreQueryables.itemCounts.d1e4489)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Coverage in the CSW Specification",</xsl:text><xsl:text>"description":"A bounding box for identifying a geographic area of interest"</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Coordinate Reference System (CRS)",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Geographic Coordinate Reference System (Authority and ID) for the BoundingBox"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Association",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Complete statement of a one-to-one relationship"</xsl:text><xsl:text>}</xsl:text>
        <xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"Catalog Services for the Web (CSW) Core Returnable Properties",</xsl:text><xsl:text>"code":"CSWCoreReturnables",</xsl:text><xsl:text>"description":"The Open Geospatial Consortium Catalog Services for the Web (CSW) standard defines 15 Core Returnables that must be supported in any compliant implementation. Profiles of CSW map these queryables to concepts and xPaths for particular metadata dialects. For additional reference information see the ISO Profile of CSW (Table 9).",</xsl:text><xsl:text>"maximum":"15",</xsl:text><xsl:variable
            name="CSWCoreReturnables.itemExists" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/title)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/creator)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/keywordSet/keyword)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/publisher)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/associatedParty)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/dataTable/physical/dataFormat)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemExists)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreReturnables.itemCounts" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/title)"/><xsl:sequence select="count(/eml:eml/dataset/creator)"/><xsl:sequence select="count(/eml:eml/dataset/keywordSet/keyword)"/><xsl:sequence select="count(/eml:eml/dataset/abstract) + count(/eml:eml/dataset/abstract)"/><xsl:sequence
                select="count(/eml:eml/dataset/publisher)"/><xsl:sequence select="count(/eml:eml/dataset/associatedParty)"/><xsl:sequence select="count(/eml:eml/dataset/dataTable/physical/dataFormat)"/><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemCounts)"
            /><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Title",</xsl:text><xsl:variable name="CSWCoreReturnables.itemExists.d1e314" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/title)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($CSWCoreReturnables.itemExists.d1e314)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreReturnables.itemCounts.d1e314" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/title)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemCounts.d1e314)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/title",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/title)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/title)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A short description of the resource. The title should be descriptive enough so that when a user is presented with a list of titles the general content of the data set can be determined."</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Author / Originator",</xsl:text><xsl:variable name="CSWCoreReturnables.itemExists.d1e3947" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/creator)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemExists.d1e3947)"
            /><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreReturnables.itemCounts.d1e3947" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/creator)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemCounts.d1e3947)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/creator",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/creator)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/creator)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"In CSW this concept is called Creator",</xsl:text><xsl:text>"description":"The principal author of the resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Keyword",</xsl:text><xsl:variable name="CSWCoreReturnables.itemExists.d1e12800"
            as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/keywordSet/keyword)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemExists.d1e12800)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreReturnables.itemCounts.d1e12800" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/keywordSet/keyword)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemCounts.d1e12800)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/keywordSet/keyword",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/keywordSet/keyword)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/keywordSet/keyword)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A word or phrase that describes some aspect of a resource. Can be one of several types."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Abstract",</xsl:text><xsl:variable name="CSWCoreReturnables.itemExists.d1e573" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemExists.d1e573)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreReturnables.itemCounts.d1e573" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemCounts.d1e573)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/abstract",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/abstract)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/abstract)"
            /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/abstract",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/abstract)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/abstract)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Desciption in Catalog Services for the Web.",</xsl:text><xsl:text>"description":"A paragraph describing the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Publisher",</xsl:text><xsl:variable
            name="CSWCoreReturnables.itemExists.d1e2221" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/publisher)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemExists.d1e2221)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreReturnables.itemCounts.d1e2221"
            as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/publisher)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemCounts.d1e2221)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/publisher",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/publisher)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/publisher)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Publisher of the cited resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Contributor Name",</xsl:text><xsl:variable name="CSWCoreReturnables.itemExists.d1e4650" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/associatedParty)) then
                        1
                    else
                        0"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemExists.d1e4650)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreReturnables.itemCounts.d1e4650" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/associatedParty)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemCounts.d1e4650)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/associatedParty",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/associatedParty)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/associatedParty)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Contributor to the resource"</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Modified Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Date on which the metadata record (not the resource) was created or updated within the catalogue."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Type",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A resource code identifying the type of resource; e.g. dataset, a collection, an application (See MD_ScopeCode) for which the metadata describes."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Format",</xsl:text><xsl:variable name="CSWCoreReturnables.itemExists.d1e4713" as="xs:integer+"
                ><xsl:sequence select="
                    if (exists(/eml:eml/dataset/dataTable/physical/dataFormat)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemExists.d1e4713)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreReturnables.itemCounts.d1e4713" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/dataTable/physical/dataFormat)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemCounts.d1e4713)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/dataTable/physical/dataFormat",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/dataTable/physical/dataFormat)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/dataTable/physical/dataFormat)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The physical or digital manifestation of the resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Identifier",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A phrase or string which uniquely identifies the metadata file/record."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Source Citation",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Reference to the processing input source."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Language",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Language of the metadata"</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Related Resource Citation",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Citation information about the associated resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Bounding Box",</xsl:text><xsl:variable name="CSWCoreReturnables.itemExists.d1e4489" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemExists.d1e4489)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWCoreReturnables.itemCounts.d1e4489" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWCoreReturnables.itemCounts.d1e4489)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Coverage in the CSW Specification",</xsl:text><xsl:text>"description":"A bounding box for identifying a geographic area of interest"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Rights",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Information about rights held in and over the resource"</xsl:text><xsl:text>}</xsl:text>
        <xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"Catalog Service for the Web (CSW) Additional Queryable Properties",</xsl:text><xsl:text>"code":"CSWAdditionalQueryables",</xsl:text><xsl:text>"description":"The Open Geospatial Consortium Catalog Services for the Web (CSW) standard supports 10 Additional Queryable search parameters. Profiles of CSW map these queryables to concepts and xPaths for particular metadata dialects. For additional reference information see the ISO Profile of CSW (Table 10).",</xsl:text><xsl:text>"maximum":"9",</xsl:text><xsl:variable
            name="CSWAdditionalQueryables.itemExists" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/pubDate)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/@packageId)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWAdditionalQueryables.itemExists)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWAdditionalQueryables.itemCounts" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/pubDate)"/><xsl:sequence select="count(/eml:eml/@packageId)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWAdditionalQueryables.itemCounts)"
        /><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Revision Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Date of revision of the cited resource"</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Creation/Revision Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The date the resource was created"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Publication Date",</xsl:text><xsl:variable name="CSWAdditionalQueryables.itemExists.d1e2098" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/pubDate)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWAdditionalQueryables.itemExists.d1e2098)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWAdditionalQueryables.itemCounts.d1e2098" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/pubDate)"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWAdditionalQueryables.itemCounts.d1e2098)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/pubDate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/pubDate)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/pubDate)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Date of publication of the cited resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Organization Name",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Name of the organization"</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Security Constraints",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Handling restrictions imposed on the resource or metadata for national security or similar security concerns."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Language",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Language of the metadata"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Identifier",</xsl:text><xsl:variable name="CSWAdditionalQueryables.itemExists.d1e2746" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/@packageId)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWAdditionalQueryables.itemExists.d1e2746)"/><xsl:text>",
</xsl:text><xsl:variable name="CSWAdditionalQueryables.itemCounts.d1e2746" as="xs:integer+"><xsl:sequence select="count(/eml:eml/@packageId)"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($CSWAdditionalQueryables.itemCounts.d1e2746)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/@packageId",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/@packageId)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/@packageId)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Identifier for the resource described by the metadata"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Parent Identifier",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A unique identifier for a parent dataset or collection"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Keyword Type",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Methods used to group similar keywords"</xsl:text><xsl:text>}</xsl:text>
        <xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>],</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Record'"/><xsl:text>":"</xsl:text><xsl:value-of select="document-uri(.)"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Date'"/><xsl:text>":"</xsl:text><xsl:value-of select="current-date()"/><xsl:text>",
</xsl:text><xsl:text>"rubricType":"CSW",</xsl:text><xsl:text>"rubricVersion":"0.1",</xsl:text><xsl:text>"rubricMax":"34",</xsl:text><xsl:variable
            name="rubricExists" as="xs:integer+"><xsl:sequence select="$CSWCoreQueryables.itemExists"/><xsl:sequence select="$CSWCoreReturnables.itemExists"/><xsl:sequence select="$CSWAdditionalQueryables.itemExists"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricExists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($rubricExists)"/><xsl:text>",
</xsl:text><xsl:variable name="rubricCounts" as="xs:integer+"><xsl:sequence select="$CSWCoreQueryables.itemCounts"
                /><xsl:sequence select="$CSWCoreReturnables.itemCounts"/><xsl:sequence select="$CSWAdditionalQueryables.itemCounts"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricCounts'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="sum($rubricCounts)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text></xsl:template>
</xsl:stylesheet>
