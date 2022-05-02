<?xml version="1.0" encoding="ISO-8859-15"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/prediccion">
    <html>
    <body>
        <table style="border: 1px solid blue">
            <tr style="background-color:lightblue">
                <th>Fecha</th>
                <th>Maxima</th>
                <th>Minima</th>
                <th>prediccion</th>
            </tr>
            <xsl:for-each select="dia">
            <tr style="background-color:green">
                <td style="text-align:left"><xsl:value-of select="@fecha"></xsl:value-of></th>
                <td style="text-align:left">Artista</th>
                <td style="text-align:left">Disco</th>
            </tr>
            </xsl:for-each
            <xsl:for-each select="canciones/archivo">
            <tr>
                <th><xsl:value-of select="cancion"></xsl:value-of></th>
                <th><xsl:value-of select="artista"></xsl:value-of></th>
                <th><xsl:value-of select="disco"></xsl:value-of></th>
            </tr>
            </xsl:for-each>
        </table>
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>