<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>

            </head>
            <body>
                <h1>M04 - Notas</h1>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Telefono</th>
                        <th>repetidor</th>
                        <th>Nota Practica</th>
                        <th>Nota Examen</th>
                        <th>Nota FInal</th>
                    </tr>
                    <xsl:apply-templates select="evaluacion"></xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="evaluacion">
        <xsl:for-each select="alumno">
            <xsl:sort select="apellidos"></xsl:sort>
                <tr>
                    <td><xsl:value-of select="nombre"></xsl:value-of></td>
                    <td><xsl:value-of select="apellidos"></xsl:value-of></td>
                    <td><xsl:value-of select="telefono"></xsl:value-of></td>
                    <td><xsl:value-of select="@repite"></xsl:value-of></td>
                    <xsl:apply-templates select="notas"></xsl:apply-templates>
                </tr>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="alumno/notas">
        <td><xsl:value-of select="practicas"></xsl:value-of></td>
        <td><xsl:value-of select="examen"></xsl:value-of></td>
        <td><xsl:value-of select="(practicas + examen) div 2"></xsl:value-of></td>
        <xsl:choose>
            <xsl:when test="practicas &gt;=8"></xsl:when>
            <xsl:when test="practicas &lt;5"></xsl:when>

        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
