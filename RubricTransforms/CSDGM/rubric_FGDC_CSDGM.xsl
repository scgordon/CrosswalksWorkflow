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
{</xsl:text><xsl:text>"title":"FGDC for Data Discovery - Mandatory",</xsl:text><xsl:text>"code":"FGDC_Mandatory",</xsl:text><xsl:text>"description":"The FGDC Content Standard for Digital Geospatial Metadata includes fields in the Identification Information and Metadata Reference Sections that are mandatory for data discovery. In the graphical representation of the standard, these are yellow fields included in yellow sections.",</xsl:text><xsl:text>"maximum":"20",</xsl:text><xsl:variable
            name="FGDC_Mandatory.itemExists" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/idinfo/citation/citeinfo/title)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/idinfo/citation/citeinfo/origin)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/idinfo/citation/citeinfo/pubdate)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/idinfo/descript/abstract)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/idinfo/descript/purpose)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/idinfo/status)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/idinfo/status/update)) then
                        1
                    else
                        0"
                /><xsl:sequence select="
                    if (exists(/metadata/idinfo/timeperd/timeinfo/rngdates)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/idinfo/spdom/bounding)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/idinfo/accconst)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/idinfo/useconst)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/idinfo/keywords/theme/themekey)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/distinfo/distliab)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/distinfo/distrib/cntinfo)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/metainfo/metc/cntinfo)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/metainfo/metstdn)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/metainfo/metstdv)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/distinfo/distrib/storder/ordinst)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/distinfo/distrib/storder/fees)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/distinfo/distrib/storder/turnaro)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/title)"
                /><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/origin)"/><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/pubdate)"/><xsl:sequence select="count(/metadata/idinfo/descript/abstract)"/><xsl:sequence select="count(/idinfo/descript/purpose)"/><xsl:sequence select="count(/metadata/idinfo/status)"/><xsl:sequence select="count(/metadata/idinfo/status/update)"/><xsl:sequence select="count(/metadata/idinfo/timeperd/timeinfo/rngdates)"/><xsl:sequence
                select="count(/metadata/idinfo/spdom/bounding)"/><xsl:sequence select="count(/metadata/idinfo/accconst)"/><xsl:sequence select="count(/metadata/idinfo/useconst)"/><xsl:sequence select="count(/metadata/idinfo/keywords/theme/themekey)"/><xsl:sequence select="count(/metadata/distinfo/distliab)"/><xsl:sequence select="count(/metadata/distinfo/distrib/cntinfo)"/><xsl:sequence select="count(/metadata/metainfo/metc/cntinfo)"/><xsl:sequence select="count(/metadata/metainfo/metstdn)"
                /><xsl:sequence select="count(/metadata/metainfo/metstdv)"/><xsl:sequence select="count(/metadata/distinfo/distrib/storder/ordinst)"/><xsl:sequence select="count(/metadata/distinfo/distrib/storder/fees)"/><xsl:sequence select="count(/metadata/distinfo/distrib/storder/turnaro)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts)"
            /><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Resource Title",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e314" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/idinfo/citation/citeinfo/title)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($FGDC_Mandatory.itemExists.d1e314)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e314" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/title)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e314)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/citation/citeinfo/title",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/idinfo/citation/citeinfo/title)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/citation/citeinfo/title)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A short description of the resource. The title should be descriptive enough so that when a user is presented with a list of titles the general content of the data set can be determined."</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Originating Organization",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e4060" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/idinfo/citation/citeinfo/origin)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e4060)"
            /><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e4060" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/citation/citeinfo/origin)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e4060)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/citation/citeinfo/origin",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/idinfo/citation/citeinfo/origin)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/citation/citeinfo/origin)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The organization responsible for creating the resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Publication Date",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e2098" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/idinfo/citation/citeinfo/pubdate)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e2098)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e2098" as="xs:integer+"><xsl:sequence
                select="count(/metadata/idinfo/citation/citeinfo/pubdate)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e2098)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/citation/citeinfo/pubdate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/idinfo/citation/citeinfo/pubdate)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/citation/citeinfo/pubdate)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Date of publication of the cited resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Abstract",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e573" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/idinfo/descript/abstract)) then
                        1
                    else
                        0"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e573)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e573" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/descript/abstract)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e573)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/descript/abstract",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/idinfo/descript/abstract)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/descript/abstract)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Desciption in Catalog Services for the Web.",</xsl:text><xsl:text>"description":"A paragraph describing the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Purpose",</xsl:text><xsl:variable
            name="FGDC_Mandatory.itemExists.d1e3010" as="xs:integer+"><xsl:sequence select="
                    if (exists(/idinfo/descript/purpose)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e3010)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e3010" as="xs:integer+"
                ><xsl:sequence select="count(/idinfo/descript/purpose)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e3010)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/idinfo/descript/purpose",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/idinfo/descript/purpose)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/idinfo/descript/purpose)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A paragraph describing the original purpose for collecting the dataset."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Status",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e9698" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/idinfo/status)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e9698)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e9698" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/status)"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e9698)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/status",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/idinfo/status)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/status)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The status of the resource"</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Update Frequency",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e6964" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/idinfo/status/update)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e6964)"
            /><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e6964" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/status/update)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e6964)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/status/update",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/idinfo/status/update)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/status/update)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The frequency with which changes and additions are made to the data set after the initial data set is completed"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Temporal Extent",</xsl:text><xsl:variable
            name="FGDC_Mandatory.itemExists.d1e6497" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/idinfo/timeperd/timeinfo/rngdates)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e6497)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e6497"
            as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/timeperd/timeinfo/rngdates)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e6497)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/timeperd/timeinfo/rngdates",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/idinfo/timeperd/timeinfo/rngdates)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/timeperd/timeinfo/rngdates)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The temporal extent of the resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Bounding Box",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e4489" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/idinfo/spdom/bounding)) then
                        1
                    else
                        0"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e4489)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e4489" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/spdom/bounding)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e4489)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/spdom/bounding",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/idinfo/spdom/bounding)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/spdom/bounding)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"note":"This concept is called Coverage in the CSW Specification",</xsl:text><xsl:text>"description":"A bounding box for identifying a geographic area of interest"</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Access Constraints",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e5017" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/idinfo/accconst)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e5017)"
            /><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e5017" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/accconst)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e5017)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/accconst",</xsl:text><xsl:text>"</xsl:text><xsl:value-of
            select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/idinfo/accconst)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/accconst)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Information about any constraints for accessing the data set. This includes any special restrictions, legal prerequisites, limitations and/or warnings on obtaining the data set. Some words that may be used in this field include: Public, In-house, Limited, Additional detailed instructions on how to access the data can be entered in this field."</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Use Constraints",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e5086" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/idinfo/useconst)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e5086)"
            /><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e5086" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/useconst)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e5086)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/useconst",</xsl:text><xsl:text>"</xsl:text><xsl:value-of
            select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/idinfo/useconst)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/useconst)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Information about how the data may or may not be used after access is granted to assure the protection of privacy or intellectual property. This includes any special restrictions, legal prerequisites, terms and conditions, and/or limitations on using the data set. Data providers may request acknowledgement of the data from users and claim no responsibility for quality and completeness of data."</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Keyword",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e12800" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/idinfo/keywords/theme/themekey)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e12800)"
            /><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e12800" as="xs:integer+"><xsl:sequence select="count(/metadata/idinfo/keywords/theme/themekey)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e12800)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/idinfo/keywords/theme/themekey",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/idinfo/keywords/theme/themekey)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/idinfo/keywords/theme/themekey)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"A word or phrase that describes some aspect of a resource. Can be one of several types."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Distribution Liability",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e7016"
            as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/distinfo/distliab)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e7016)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e7016" as="xs:integer+"><xsl:sequence
                select="count(/metadata/distinfo/distliab)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e7016)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/distinfo/distliab",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/distinfo/distliab)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/distinfo/distliab)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Statement of the liability assumed by the distributor."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Distribution Contact",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e5416" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/distinfo/distrib/cntinfo)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e5416)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e5416" as="xs:integer+"><xsl:sequence select="count(/metadata/distinfo/distrib/cntinfo)"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e5416)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/distinfo/distrib/cntinfo",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/distinfo/distrib/cntinfo)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/distinfo/distrib/cntinfo)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Contact information for the organization or individual that distributes the resource."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Contact",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e980" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/metainfo/metc/cntinfo)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e980)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e980" as="xs:integer+"><xsl:sequence select="count(/metadata/metainfo/metc/cntinfo)"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e980)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/metainfo/metc/cntinfo",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/metainfo/metc/cntinfo)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/metainfo/metc/cntinfo)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The organization or person currently responsible for the metadata."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Standard Citation",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e6756" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/metainfo/metstdn)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e6756)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e6756" as="xs:integer+"><xsl:sequence select="count(/metadata/metainfo/metstdn)"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e6756)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/metainfo/metstdn",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/metainfo/metstdn)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/metainfo/metstdn)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The name of the standard to which the metadata conforms"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Metadata Standard Version",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e6790" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/metainfo/metstdv)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e6790)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e6790" as="xs:integer+"><xsl:sequence select="count(/metadata/metainfo/metstdv)"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e6790)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/metainfo/metstdv ",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/metainfo/metstdv)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/metainfo/metstdv)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The name of the standard to which the metadata conforms"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Ordering Instructions",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e5266" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/distinfo/distrib/storder/ordinst)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e5266)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e5266" as="xs:integer+"><xsl:sequence
                select="count(/metadata/distinfo/distrib/storder/ordinst)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e5266)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/distinfo/distrib/storder/ordinst",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/distinfo/distrib/storder/ordinst)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/distinfo/distrib/storder/ordinst)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"General instructions, terms and services provided by the distributor"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Resource Cost or Fees",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e5292" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/distinfo/distrib/storder/fees)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e5292)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e5292" as="xs:integer+"><xsl:sequence
                select="count(/metadata/distinfo/distrib/storder/fees)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e5292)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/distinfo/distrib/storder/fees",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/distinfo/distrib/storder/fees)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/distinfo/distrib/storder/fees)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Cost associated with access to the resource"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Turnaround",</xsl:text><xsl:variable name="FGDC_Mandatory.itemExists.d1e7044" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/distinfo/distrib/storder/turnaro)) then
                        1
                    else
                        0"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemExists.d1e7044)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_Mandatory.itemCounts.d1e7044" as="xs:integer+"><xsl:sequence select="count(/metadata/distinfo/distrib/storder/turnaro)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_Mandatory.itemCounts.d1e7044)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/distinfo/distrib/storder/turnaro",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/distinfo/distrib/storder/turnaro)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/distinfo/distrib/storder/turnaro)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Typical turnaround time for the filling of an order."</xsl:text><xsl:text>}</xsl:text>
        <xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>,</xsl:text><xsl:text>
{</xsl:text><xsl:text>"title":"FGDC for Data Discovery - Mandatory if Applicable",</xsl:text><xsl:text>"code":"FGDC_MandatoryIfApplicable",</xsl:text><xsl:text>"description":"The FGDC Content Standard for Digital Geospatial Metadata includes many fields related to data understanding. These are generally labeled 'Mandatory if Applicable'. In the graphical representation of the standard, these are green fields included in yellow or green sections.",</xsl:text><xsl:text>"maximum":"20",</xsl:text><xsl:variable
            name="FGDC_MandatoryIfApplicable.itemExists" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/dataqual/ataccy/attarp)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/dataqual/ataccy/quan/attval)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/ataccy/quan/attexp)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/dataqual/logcon)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/comprep)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyv)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyx)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/dataqual/posaccy/vpaccy/vpaccyr)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyv)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyx)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/srcinfo/srccite)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/dataqual/lineage/sinfo/type)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/sinfo/stime)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/dataqual/lineage/sinfo/abbr)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/sinfo/contrib)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/dataqual/lineage/procstep/procdesc)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/procstep/srcused)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/dataqual/lineage/procstep/procdate)) then
                        1
                    else
                        0"/><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/procstep/srcprod)) then
                        1
                    else
                        0"/><xsl:sequence select="
                    if (exists(/metadata/dataqual/lineage/procstep/proccont)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'existTotal'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($FGDC_MandatoryIfApplicable.itemExists)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts" as="xs:integer+"><xsl:sequence select="count(/metadata/dataqual/ataccy/attarp)"/><xsl:sequence select="count(/metadata/dataqual/ataccy/quan/attval)"/><xsl:sequence select="count(/metadata/dataqual/ataccy/quan/attexp)"/><xsl:sequence select="count(/metadata/dataqual/logcon)"/><xsl:sequence select="count(/metadata/dataqual/comprep)"/><xsl:sequence
                select="count(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyv)"/><xsl:sequence select="count(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyx)"/><xsl:sequence select="count(/metadata/dataqual/posaccy/vpaccy/vpaccyr)"/><xsl:sequence select="count(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyv)"/><xsl:sequence select="count(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyx)"/><xsl:sequence select="count(/metadata/dataqual/lineage/srcinfo/srccite)"/><xsl:sequence
                select="count(/metadata/dataqual/lineage/sinfo/type)"/><xsl:sequence select="count(/metadata/dataqual/lineage/sinfo/stime)"/><xsl:sequence select="count(/metadata/dataqual/lineage/sinfo/abbr)"/><xsl:sequence select="count(/metadata/dataqual/lineage/sinfo/contrib)"/><xsl:sequence select="count(/metadata/dataqual/lineage/procstep/procdesc)"/><xsl:sequence select="count(/metadata/dataqual/lineage/procstep/srcused)"/><xsl:sequence
                select="count(/metadata/dataqual/lineage/procstep/procdate)"/><xsl:sequence select="count(/metadata/dataqual/lineage/procstep/srcprod)"/><xsl:sequence select="count(/metadata/dataqual/lineage/procstep/proccont)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'countTotal'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts)"
            /><xsl:text>",
</xsl:text><xsl:text>
"items" : [
</xsl:text><xsl:text>{
</xsl:text><xsl:text>"name":"Attribute Accuracy Report",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7078" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/dataqual/ataccy/attarp)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7078)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7078" as="xs:integer+"><xsl:sequence select="count(/metadata/dataqual/ataccy/attarp)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7078)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/ataccy/attarp",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/dataqual/ataccy/attarp)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/ataccy/attarp)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"An explanation of the accuracy of the identification of the entities and assignments of values in the data set and a description of the tests used"</xsl:text><xsl:text>}</xsl:text>,
            <xsl:text>{
</xsl:text><xsl:text>"name":"Attribute Accuracy Value",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7100" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/dataqual/ataccy/quan/attval)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7100)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7100" as="xs:integer+"><xsl:sequence select="count(/metadata/dataqual/ataccy/quan/attval)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7100)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/ataccy/quan/attval",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/dataqual/ataccy/quan/attval)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/ataccy/quan/attval)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"An estimate of the accuracy of the identification of the entities and assignments of attribute values in the data set"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Attribute Accuracy Explanation",</xsl:text><xsl:variable
            name="FGDC_MandatoryIfApplicable.itemExists.d1e7122" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/dataqual/ataccy/quan/attexp)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7122)"/><xsl:text>",
</xsl:text><xsl:variable
            name="FGDC_MandatoryIfApplicable.itemCounts.d1e7122" as="xs:integer+"><xsl:sequence select="count(/metadata/dataqual/ataccy/quan/attexp)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7122)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/ataccy/quan/attexp",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/dataqual/ataccy/quan/attexp)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/ataccy/quan/attexp)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The identification of the test that yielded the Attribute Accuracy Value. "</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Logical Consistency Report",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7140"
            as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/dataqual/logcon)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7140)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7140" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/logcon)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7140)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/logcon",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/logcon)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/logcon)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"An explanation of the fidelity of relationships in the data set and tests used."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Horizontal Positional Accuracy Report",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7173" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/comprep)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7173)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7173" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/comprep)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7173)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/comprep",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/comprep)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/comprep)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"An explanation of the accuracy of the horizontal coordinate measurements and a description of the tests used."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Horizontal Positional Accuracy Value",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7191" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyv)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7191)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7191" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyv)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7191)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyv",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyv)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyv)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"An estimate of the accuracy of the horizontal coordinate measurements in the data set expressed in (ground) meters."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Horizontal Positional Accuracy Explanation",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7209" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyx)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7209)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7209" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyx)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7209)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyx",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyx)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/posaccy/hpaccy/qhpaccy/hpaccyx)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The identification of the test that yielded the Horizontal Positional Accuracy Value."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Vertical Positional Accuracy Report",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7227" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/posaccy/vpaccy/vpaccyr)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7227)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7227" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/posaccy/vpaccy/vpaccyr)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7227)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/posaccy/vpaccy/vpaccyr",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/posaccy/vpaccy/vpaccyr)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/posaccy/vpaccy/vpaccyr)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"An explanation of the accuracy of the vertical coordinate measurements and a description of the tests used."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Vertical Positional Accuracy Value",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7245" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyv)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7245)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7245" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyv)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7245)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyv",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyv)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyv)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"an estimate of the accuracy of the vertical coordinate measurement in the data set expressed in (ground) meters."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Vertical Positional Accuracy Explanation",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7263" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyx)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7263)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7263" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyx)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7263)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyx",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"
            /><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyx)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/posaccy/vpaccy/qvpaccy/vpaccyx)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The identification of the test that yielded the Vertical Positional Accuracy Value."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Source Citation",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e9320" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/srcinfo/srccite)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e9320)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e9320" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/lineage/srcinfo/srccite)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e9320)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/lineage/srcinfo/srccite",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/lineage/srcinfo/srccite)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/lineage/srcinfo/srccite)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Reference to the processing input source."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Media",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e5232" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/dataqual/lineage/sinfo/type)) then
                        1
                    else
                        0"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e5232)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e5232" as="xs:integer+"><xsl:sequence select="count(/metadata/dataqual/lineage/sinfo/type)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e5232)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/lineage/sinfo/type",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/dataqual/lineage/sinfo/type)) then
                    1
                else
                    0"
            /><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/lineage/sinfo/type)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Media on which the resource is available"</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Source Time Period",</xsl:text><xsl:variable
            name="FGDC_MandatoryIfApplicable.itemExists.d1e7286" as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/dataqual/lineage/sinfo/stime)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7286)"/><xsl:text>",
</xsl:text><xsl:variable
            name="FGDC_MandatoryIfApplicable.itemCounts.d1e7286" as="xs:integer+"><xsl:sequence select="count(/metadata/dataqual/lineage/sinfo/stime)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7286)"
            /><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/lineage/sinfo/stime",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="
                if (exists(/metadata/dataqual/lineage/sinfo/stime)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"
            /><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/lineage/sinfo/stime)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Time period for which the source data set corresponds to the ground."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Source Citation Abbreviation",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7301"
            as="xs:integer+"><xsl:sequence select="
                    if (exists(/metadata/dataqual/lineage/sinfo/abbr)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7301)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7301" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/lineage/sinfo/abbr)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7301)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/lineage/sinfo/abbr",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/lineage/sinfo/abbr)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/lineage/sinfo/abbr)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Short-form alias for the source citation."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Source Description",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e8472" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/sinfo/contrib)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e8472)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e8472" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/lineage/sinfo/contrib)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e8472)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/lineage/sinfo/contrib",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/lineage/sinfo/contrib)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/lineage/sinfo/contrib)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Detailed description of the source."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Process Step Description",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e8324" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/procstep/procdesc)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e8324)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e8324" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/lineage/procstep/procdesc)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e8324)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/lineage/procstep/procdesc",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/lineage/procstep/procdesc)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/lineage/procstep/procdesc)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Description of the event, including related parameters or tolerances."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Source Used",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7321" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/procstep/srcused)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7321)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7321" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/lineage/procstep/srcused)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7321)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/lineage/procstep/srcused",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/lineage/procstep/srcused)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/lineage/procstep/srcused)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The source used in the processing step."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Process Step Time",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e8364" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/procstep/procdate)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e8364)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e8364" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/lineage/procstep/procdate)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e8364)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/lineage/procstep/procdate",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/lineage/procstep/procdate)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/lineage/procstep/procdate)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Date, time, range or period of process step."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Source Produced",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e7345" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/procstep/srcprod)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e7345)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e7345" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/lineage/procstep/srcprod)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e7345)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/lineage/procstep/srcprod",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/lineage/procstep/srcprod)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/lineage/procstep/srcprod)"
        /><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"The source produced from the process step."</xsl:text><xsl:text>}</xsl:text>, <xsl:text>{
</xsl:text><xsl:text>"name":"Processor",</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemExists.d1e8395" as="xs:integer+"><xsl:sequence
                select="
                    if (exists(/metadata/dataqual/lineage/procstep/proccont)) then
                        1
                    else
                        0"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemExists.d1e8395)"/><xsl:text>",
</xsl:text><xsl:variable name="FGDC_MandatoryIfApplicable.itemCounts.d1e8395" as="xs:integer+"><xsl:sequence
                select="count(/metadata/dataqual/lineage/procstep/proccont)"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($FGDC_MandatoryIfApplicable.itemCounts.d1e8395)"/><xsl:text>",
</xsl:text><xsl:text>
"paths" : [
</xsl:text><xsl:text>
{</xsl:text><xsl:text>"path":"/metadata/dataqual/lineage/procstep/proccont",</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'exists'"/><xsl:text>":"</xsl:text><xsl:value-of
            select="
                if (exists(/metadata/dataqual/lineage/procstep/proccont)) then
                    1
                else
                    0"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'count'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="count(/metadata/dataqual/lineage/procstep/proccont)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text><xsl:text>],
</xsl:text><xsl:text>"description":"Identification of, and means of communication with, person(s) and organisation(s) associated with the process step."</xsl:text><xsl:text>}</xsl:text>
        <xsl:text>]
</xsl:text><xsl:text>}</xsl:text><xsl:text>],</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Record'"/><xsl:text>":"</xsl:text><xsl:value-of select="document-uri(.)"/><xsl:text>",
</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="'Date'"/><xsl:text>":"</xsl:text><xsl:value-of select="current-date()"/><xsl:text>",
</xsl:text><xsl:text>"rubricType":"FGDC",</xsl:text><xsl:text>"rubricVersion":"0.1",</xsl:text><xsl:text>"rubricMax":"40",</xsl:text><xsl:variable
            name="rubricExists" as="xs:integer+"><xsl:sequence select="$FGDC_Mandatory.itemExists"/><xsl:sequence select="$FGDC_MandatoryIfApplicable.itemExists"/></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricExists'"/><xsl:text>":"</xsl:text><xsl:value-of select="sum($rubricExists)"/><xsl:text>",
</xsl:text><xsl:variable name="rubricCounts" as="xs:integer+"><xsl:sequence select="$FGDC_Mandatory.itemCounts"/><xsl:sequence select="$FGDC_MandatoryIfApplicable.itemCounts"
            /></xsl:variable><xsl:text>"</xsl:text><xsl:value-of select="'rubricCounts'"/><xsl:text>"</xsl:text><xsl:text>:</xsl:text><xsl:text>"</xsl:text><xsl:value-of select="sum($rubricCounts)"/><xsl:text>"
</xsl:text><xsl:text>}</xsl:text></xsl:template>
</xsl:stylesheet>
