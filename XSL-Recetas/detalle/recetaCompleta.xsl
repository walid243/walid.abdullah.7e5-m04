<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
       
    <!-- CóDIGO DE LA PRÁCTICA ANTERIRO  -->
        <xsl:apply-templates select="recepta"/>
    </xsl:template>
    <xsl:template match="recepta">
        <main>

            <div class="receta titulo_receta">
                <h1>Recetas de <xsl:value-of select="categoria"/></h1>
                <h2><xsl:value-of select="nom"/></h2>
                <xsl:element name="img">
                    <xsl:attribute name="class">imagen</xsl:attribute>
                    <xsl:attribute name="src"><xsl:value-of select="informacio_general/foto"/></xsl:attribute>
                    <xsl:attribute name="alt">pasta.jpg</xsl:attribute>
                </xsl:element>
                <p class="fecha_receta"><xsl:value-of select="@fecha"/></p>

            </div>
            <div class="receta Intro_receta">
                <div>
                    <p>Començals:</p>
                    <p><xsl:value-of select="informacio_general/comensals"/></p>
                    <p>Temps:</p>
                    <p><xsl:value-of select="informacio_general/temps"/><xsl:value-of select="temps/@unitat"/></p>
                    <p>Dificultat:</p>
                    <p><xsl:value-of select="informacio_general/dificultat"/></p>
                </div>
                <p><xsl:value-of select="informacio_general/resum"/></p>
            </div>
            <div class="receta ingredientes_receta">
                <h2>Ingredientes:</h2>
                <xsl:for-each select="ingredients/ingredient">
                    <p><xsl:value-of select="./@quantitat"/> <xsl:value-of select="./@unitat"/> <xsl:value-of select="."/></p>
                </xsl:for-each>
            </div>
            <div class="receta preparacion_receta">
                <h2>Preparación:</h2>
                <div class="parrafos">
                    <xsl:for-each select="preparacio/pas">
                        <p><xsl:value-of select="."/></p>
                    </xsl:for-each>
                </div>
            </div>
        </main>
    </xsl:template>
</xsl:stylesheet>