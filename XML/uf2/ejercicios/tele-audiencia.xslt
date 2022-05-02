<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
        <xsl:template match="programacio">
            <cadena>
                <nom>un TV</nom>
                <programes>
                    <xsl:apply-templates select="audiencia"/>
                </programes>
            </cadena>
        </xsl:template>
    <xsl:template match="audiencia">
        <programa>
        <xsl:attribute name="hora"><xsl:value-of select="hora"/></xsl:attribute>
            <nom-programa><xsl:value-of select="cadenes/cadena[@nom = 'Un TV']"/></nom-programa>
            <audiencia><xsl:value-of select="cadenes/cadena[@nom = 'Un TV']/@percentatge"/></audiencia>
    </programa>
    </xsl:template>
</xsl:stylesheet>