<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" indent="yes"/>
    <xsl:template match="/discos">
        <lista>
            <xsl:for-each select="disco">
                    <disco>
                        <xsl:value-of select="title"/> interpretado por <xsl:if test=" interpreter/@id = $grupos/group/@id"><xsl:value-of
                            select="../group/name"/></xsl:if>
                    </disco>
            </xsl:for-each>
        </lista>
    </xsl:template>
    <xsl:variable name="grupos" select="/discos"/>
</xsl:stylesheet>