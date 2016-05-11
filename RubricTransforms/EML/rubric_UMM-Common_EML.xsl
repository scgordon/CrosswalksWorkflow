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
{</xsl:text><xsl:text>"title":"UMM-Common Required",</xsl:text><xsl:text>"code":"UMM-Common_Required",</xsl:text><xsl:text>"description":"The NASA Unified Metadata Model/Mapping (UMM) includes a profile for elements that are common to all of the UMM Profiles, the UMM-Common Profile. These are the elements required by that profile.",</xsl:text><xsl:text>"maximum":"23",</xsl:text><xsl:variable
            name="UMM-Common_Required.itemExists" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/title)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/contact)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/associatedParty/role[RoleType = 'distributor'])) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/keywordSet/keyword)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/coverage/geographicCoverage)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/coverage/temporalCoverage)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/distribution/online/url)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($UMM-Common_Required.itemExists)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Required.itemCounts" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/title)"/><xsl:sequence select="count(/eml:eml/dataset/abstract) + count(/eml:eml/dataset/abstract)"/><xsl:sequence select="count(/eml:eml/dataset/contact)"/><xsl:sequence select="count(/eml:eml/dataset/associatedParty/role[RoleType = 'distributor'])"/><xsl:sequence
                select="count(/eml:eml/dataset/keywordSet/keyword)"/><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage)"/><xsl:sequence select="count(/eml:eml/dataset/coverage/temporalCoverage)"/><xsl:sequence select="count(/eml:eml/dataset/distribution/online/url)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemCounts)"
        /><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Modified Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Date on which the metadata record (not the resource) was created or updated within the catalogue."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Future Metadata Review Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Anticipated date of a future metadata review."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Deletion Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Date of metadata deletion."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Creation Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Date of creation of the cited resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Revision Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Date of revision of the cited resource"</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Title",</xsl:text><xsl:variable name="UMM-Common_Required.itemExists.d1e314" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/title)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemExists.d1e314)"
            /><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Required.itemCounts.d1e314" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/title)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemCounts.d1e314)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/title",</xsl:text><xsl:text>"</xsl:text><xsl:value-of
            select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/title)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/title)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A short description of the resource. The title should be descriptive enough so that when a user is presented with a list of titles the general content of the data set can be determined."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Abstract",</xsl:text><xsl:variable name="UMM-Common_Required.itemExists.d1e573" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemExists.d1e573)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Required.itemCounts.d1e573" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/abstract | /eml:eml/dataset/abstract)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemCounts.d1e573)"/><xsl:text>",
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
</xsl:text><xsl:text>"name":"Resource Contact",</xsl:text><xsl:variable
            name="UMM-Common_Required.itemExists.d1e1055" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/contact)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemExists.d1e1055)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Required.itemCounts.d1e1055"
            as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/contact)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemCounts.d1e1055)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/contact",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/contact)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/contact)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The organization or person responsible for answering questions about the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Distribution Contact",</xsl:text><xsl:variable name="UMM-Common_Required.itemExists.d1e5416" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/associatedParty/role[RoleType = 'distributor'])) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemExists.d1e5416)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Required.itemCounts.d1e5416" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/associatedParty/role[RoleType = 'distributor'])"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemCounts.d1e5416)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/associatedParty/role[RoleType='distributor']",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/associatedParty/role[RoleType = 'distributor'])) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/associatedParty/role[RoleType = 'distributor'])"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Contact information for the organization or individual that distributes the resource."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Processing Level",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"A code that indicates the extent of processing done in the creation of a dataset."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Theme Keyword",</xsl:text><xsl:variable name="UMM-Common_Required.itemExists.d1e720" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/keywordSet/keyword)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemExists.d1e720)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Required.itemCounts.d1e720" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/keywordSet/keyword)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemCounts.d1e720)"/><xsl:text>",
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
</xsl:text><xsl:text>"note":"The general identification keywords usually have a type of theme and are refered to as theme keywords. Other types and vocabularies are used for other information. Service Entry Resource Format (SERF) requires a Science and a Service GCMD Keyword. This concept is called Subject in the CSW Specification. ",</xsl:text><xsl:text>"description":"A word or phrase that describes some aspect of a resource. Can be one of several types."</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Spatial Extent",</xsl:text><xsl:variable name="UMM-Common_Required.itemExists.d1e7908" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/coverage/geographicCoverage)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($UMM-Common_Required.itemExists.d1e7908)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Required.itemCounts.d1e7908" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/coverage/geographicCoverage)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemCounts.d1e7908)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/geographicCoverage",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/coverage/geographicCoverage)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/geographicCoverage)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The spatial extent of the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Temporal Extent",</xsl:text><xsl:variable name="UMM-Common_Required.itemExists.d1e6497" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/coverage/temporalCoverage)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemExists.d1e6497)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Required.itemCounts.d1e6497" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/coverage/temporalCoverage)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemCounts.d1e6497)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/coverage/temporalCoverage",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/coverage/temporalCoverage)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/coverage/temporalCoverage)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The temporal extent of the resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Project Name",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The name of the project that the resource was associated with."</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Resource on-line Link",</xsl:text><xsl:variable name="UMM-Common_Required.itemExists.d1e6629" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/distribution/online/url)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($UMM-Common_Required.itemExists.d1e6629)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Required.itemCounts.d1e6629" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/distribution/online/url)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Required.itemCounts.d1e6629)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/distribution/online/url",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/distribution/online/url)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/distribution/online/url)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Online link referencing additional information about the resource."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Browse URL",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Location of the browse file on the Web."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Browse File Name",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Name of the file holding the browse graphic."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Platform",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The platform used to collect the observations."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Platform Keyword",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Keywords that describe the platform used to collect the resource."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Platform Short Name",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The platform used to collect the observations."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Instrument",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Information about the instrument used to make the observations."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Instrument Keyword",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Keywords that describe the instrument used to collect the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Instrument Short Name",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Short name (abbreviation) for the Instrument used to collect the observations."</xsl:text><xsl:text>}</xsl:text>
        <xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"UMM-Common Optional",</xsl:text><xsl:text>"code":"UMM-Common_Optional",</xsl:text><xsl:text>"description":"The NASA Unified Metadata Model/Mapping (UMM) includes a profile for elements that are common to all of the UMM Profiles, the UMM-Common Profile. These are the optional elements included in that profile.",</xsl:text><xsl:text>"maximum":"15",</xsl:text><xsl:variable
            name="UMM-Common_Optional.itemExists" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/purpose)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/intellectualRights)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/eml:eml/access)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/eml:eml/dataset/distribution/online/url)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/dataTable/physical/dataFormat)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemExists)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Optional.itemCounts" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/purpose)"
                /><xsl:sequence select="count(/eml:eml/dataset/intellectualRights)"/><xsl:sequence select="count(/eml:eml/access)"/><xsl:sequence select="count(/eml:eml/dataset/distribution/online/url)"/><xsl:sequence select="count(/eml:eml/dataset/dataTable/physical/dataFormat)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemCounts)"
        /><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Language",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Language of the metadata"</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Language",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The language of the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Creation/Revision Date",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The date the resource was created"</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Purpose",</xsl:text><xsl:variable name="UMM-Common_Optional.itemExists.d1e3010" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/purpose)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemExists.d1e3010)"
            /><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Optional.itemCounts.d1e3010" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/purpose)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemCounts.d1e3010)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/purpose",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/dataset/purpose)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/purpose)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A paragraph describing the original purpose for collecting the dataset."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Citation",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Citation for the resource."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Quality Statement",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Information about the quality of the data or any quality assurance procedures followed in producing the data."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Use Constraints",</xsl:text><xsl:variable name="UMM-Common_Optional.itemExists.d1e5086" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/intellectualRights)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemExists.d1e5086)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Optional.itemCounts.d1e5086" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/intellectualRights)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemCounts.d1e5086)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/intellectualRights",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/intellectualRights)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/intellectualRights)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Information about how the data may or may not be used after access is granted to assure the protection of privacy or intellectual property. This includes any special restrictions, legal prerequisites, terms and conditions, and/or limitations on using the data set. Data providers may request acknowledgement of the data from users and claim no responsibility for quality and completeness of data."</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Access Constraints",</xsl:text><xsl:variable name="UMM-Common_Optional.itemExists.d1e5017" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/access)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemExists.d1e5017)"
            /><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Optional.itemCounts.d1e5017" as="xs:integer+"><xsl:sequence select="count(/eml:eml/access)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemCounts.d1e5017)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/access",</xsl:text><xsl:text>"</xsl:text><xsl:value-of
            select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/eml:eml/access)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/access)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Information about any constraints for accessing the data set. This includes any special restrictions, legal prerequisites, limitations and/or warnings on obtaining the data set. Some words that may be used in this field include: Public, In-house, Limited, Additional detailed instructions on how to access the data can be entered in this field."</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"Topic Category",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"High level category enumeration used in ISO"</xsl:text><xsl:text>}</xsl:text>,
        <xsl:text>{
</xsl:text><xsl:text>"name":"TwoDCoordinateSystem",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Bounding extent defined in two dimensions with min and max values."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource on-line Link",</xsl:text><xsl:variable name="UMM-Common_Optional.itemExists.d1e6629" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/eml:eml/dataset/distribution/online/url)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemExists.d1e6629)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Optional.itemCounts.d1e6629" as="xs:integer+"><xsl:sequence
                select="count(/eml:eml/dataset/distribution/online/url)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemCounts.d1e6629)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/eml:eml/dataset/distribution/online/url",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/eml:eml/dataset/distribution/online/url)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/eml:eml/dataset/distribution/online/url)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Online link referencing additional information about the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Browse URL",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Location of the browse file on the Web."</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Format",</xsl:text><xsl:variable name="UMM-Common_Optional.itemExists.d1e4713" as="xs:integer+"><xsl:sequence select="
                    if (exists(/eml:eml/dataset/dataTable/physical/dataFormat)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($UMM-Common_Optional.itemExists.d1e4713)"/><xsl:text>",
</xsl:text><xsl:variable name="UMM-Common_Optional.itemCounts.d1e4713" as="xs:integer+"><xsl:sequence select="count(/eml:eml/dataset/dataTable/physical/dataFormat)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($UMM-Common_Optional.itemCounts.d1e4713)"
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
</xsl:text><xsl:text>"name":"Project Name",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"The name of the project that the resource was associated with."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Project Keyword",</xsl:text><xsl:text>"exists":"-1",</xsl:text><xsl:text>"count":"-1",</xsl:text><xsl:text>"description":"Keywords that describe the Project used to collect the resource."</xsl:text><xsl:text>}</xsl:text>
        <xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>],</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Record'"/><xsl:text>":"</xsl:text><xsl:value-of select="document-uri(.)"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Date'"/><xsl:text>":"</xsl:text><xsl:value-of select="current-date()"/><xsl:text>",
</xsl:text><xsl:text>"rubricType":"UMM-Common",</xsl:text><xsl:text>"rubricVersion":"0.1",</xsl:text><xsl:text>"rubricMax":"38",</xsl:text><xsl:variable
            name="rubricExists" as="xs:integer+"><xsl:sequence select="$UMM-Common_Required.itemExists"/><xsl:sequence select="$UMM-Common_Optional.itemExists"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricExists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($rubricExists)"/><xsl:text>",
</xsl:text><xsl:variable name="rubricCounts" as="xs:integer+"><xsl:sequence select="$UMM-Common_Required.itemCounts"/><xsl:sequence select="$UMM-Common_Optional.itemCounts"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricCounts'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="sum($rubricCounts)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text></xsl:template>
</xsl:stylesheet>
