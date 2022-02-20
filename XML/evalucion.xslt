<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table * {
                    text-align: center;
                    border: 1px solid black;
                    }
                    .head{ background-color:green;}
                    .sobre{color:blue;}
                    .suspend{color:red;}
                    img{ width:5em;}

                </style>
            </head>
            <body>
                <xsl:apply-templates select="evaluacion"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="evaluacion">
        <h1>M04 - Notas</h1>
        
        <table>
            <tr class="head">
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Telefono</th>
                <th>Repetidor</th>
                <th>Nota Practica</th>
                <th>Nota Examen</th>
                <th>Nota Total</th>
            </tr>
            <xsl:apply-templates select="alumno"/>
        </table>
    </xsl:template>
    
    <xsl:template match="alumno">
        <tr>
            <td>
                <xsl:value-of select="nombre"/>
            </td>
            <td>
                <xsl:value-of select="apellidos"/>
            </td>
            <td>
                <xsl:value-of select="telefono"/>
            </td>
            <td>
                <xsl:value-of select="@repite"/>
            </td>

            <xsl:apply-templates select="notas"/>
            <xsl:choose>
                <xsl:when test="foto"></xsl:when>
                <xsl:otherwise>
                    <td>
                        <img src="./../Media/imagen.jpg"/>
                    </td>
                </xsl:otherwise>
            </xsl:choose>
        </tr>

    </xsl:template>
    <xsl:template match="notas">
        <td>
            <xsl:value-of select="practicas"/>
        </td>
        <td>
            <xsl:value-of select="examen"/>
        </td>
        <xsl:element name="td">
            <xsl:attribute name="class">
                <xsl:choose>
                    <xsl:when test="(practicas + examen) div 2 &gt;=8">
                            sobre
                    </xsl:when>
                    <xsl:when test="(practicas + examen) div 2 &lt;5">
                        suspend
                    </xsl:when>
                    <xsl:otherwise>
                        aprobado
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:value-of select="(practicas+examen) div 2"/>

        </xsl:element>
    </xsl:template>
</xsl:stylesheet>