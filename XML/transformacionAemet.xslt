<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <xsl:apply-templates select="root/prediccion"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="root/prediccion">
        <table style="border: 1px solid black;">
            <tr>
                <th>Fecha</th>
                <th>Maxima</th>
                <th>Minima</th>
                <th>Prediccion</th>
            </tr>
            <xsl:apply-templates/>
        </table>
    </xsl:template>
    <xsl:template match="dia">
        <tr>
            <td><xsl:value-of select="@fecha"></xsl:value-of></td>
            <td><xsl:value-of select="temperatura/maxima"></xsl:value-of></td>
            <td><xsl:value-of select="temperatura/minima"></xsl:value-of></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
