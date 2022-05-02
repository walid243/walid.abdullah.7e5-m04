<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html lang="cat">
            <head>
                <meta charset="utf-8"/>
                <link rel="stylesheet" href="../CSS/cabecera_pie.css"/>
                <link rel="stylesheet" href="../CSS/receta.css"/>
                <title>Receta</title>
            </head>
            <body>
                <header>
                    <img class="" src="../Media/imagenes/Logo-Delicias.png" alt="Logo-Delicias.png"/>
                </header>
                <nav>
                    <ul class="lista_fila">
                        <li><a href="../index.html">INICIO</a></li>
                        <li><a href="#sobre_mi">SOBRE MÍ</a></li>
                        <li><a href="../Listado/lista.html">RECETAS</a></li>
                        <li><a href="#contacto">CONTACTO</a></li>
                        <li><a href="../Registro/registro.html">OTRAS COSAS</a></li>
                    </ul>
                </nav>
                <div>
                    <aside>
                        <section id="sobre_mi" class="sobre_mi">
                            <h2 class="titulo_seccion">Sobre mi</h2>
                            <img src="../Media/imagenes/isagil.png" alt="isagil.png"/>
                            <p>Hola, bienvenid@ a mi blog, un espacio donde quiero compartir mis recetas vegetarianas y veganas favoritas...</p>
                        </section>
                        <section class="mi_libro">
                            <h3 class="titulo_seccion">Suscríbete a mi blog</h3>
                            <img src="../Media/imagenes/libro.png" alt="libro.png"/>
                            <p>Y consigue GRATIS mi eBook con 10 recetas exclusivas con superalimentos.</p>
                            <a class="" href="../Registro/registro.html">Apúntame</a>
                        </section>
                    </aside>
                    <xsl:apply-templates select="receptes"/>
                </div>
                <footer id="contacto" class="footer">
                    <ul class="lista_fila">
                        <li><a href="https://www.facebook.com">FACEBOOK</a></li>
                        <li><a href="https://twitter.com/">TWITTER</a></li>
                        <li><a href="https://www.instagram.com">INSTAGRAM</a></li>
                        <li><a href="https://pinterest.com">PINTEREST</a></li>
                        <li><a href="https://login.live.com">EMAIL</a></li>
                        <li>RSS</li>
                    </ul>
                </footer>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="receptes">
        <main>

            <div class="receta titulo_receta">
                <h1>Recetas de <xsl:value-of select="recepta[1]/categoria"/></h1>
                <h2><xsl:value-of select="recepta[1]/nom"/></h2>
                <xsl:element name="img">
                    <xsl:attribute name="class">imagen</xsl:attribute>
                    <xsl:attribute name="src"><xsl:value-of select="recepta[1]/informacio_general/foto"/></xsl:attribute>
                    <xsl:attribute name="alt">pasta.jpg</xsl:attribute>
                </xsl:element>
                <p class="fecha_receta"><xsl:value-of select="recepta[1]/@fecha"/></p>

            </div>
            <div class="receta Intro_receta">
                <div>
                    <p>Començals:</p>
                    <p><xsl:value-of select="recepta[1]/informacio_general/comensals"/></p>
                    <p>Temps:</p>
                    <p><xsl:value-of select="recepta[1]/informacio_general/temps"/><xsl:value-of select="recepta[1]/temps/@unitat"/></p>
                    <p>Dificultat:</p>
                    <p><xsl:value-of select="recepta[1]/informacio_general/dificultat"/></p>
                </div>
                <p><xsl:value-of select="recepta[1]/informacio_general/resum"/></p>
            </div>
            <div class="receta ingredientes_receta">
                <h2>Ingredientes:</h2>
                <xsl:for-each select="recepta[1]/ingredients/ingredient">
                    <p><xsl:value-of select="./@quantitat"/> <xsl:value-of select="./@unitat"/> <xsl:value-of select="."/></p>
                </xsl:for-each>
            </div>
            <div class="receta preparacion_receta">
                <h2>Preparación:</h2>
                <div class="parrafos">
                    <xsl:for-each select="recepta[1]/preparacio/pas">
                        <p><xsl:value-of select="."/></p>
                    </xsl:for-each>
                </div>
            </div>
        </main>
    </xsl:template>

</xsl:stylesheet>