<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
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
                <h1>Recetas de Pasta</h1>
                <h2>Risotto de calabaza y cúrcuma</h2>
                <img class="imagen" src="../Media/imagenes/risotto.png" alt="risotto.png"/>
                <p class="fecha_receta">11 de octubre de 2017 por patrimediolimon</p>
                <div>
                    <p>Començals:</p>
                    <p><xsl:value-of select="recepta[1]/comensals"/></p>
                    <p>Temps:</p>
                    <p><xsl:value-of select="recepta[1]/temps"/><xsl:value-of select="recepta[1]/temps/@unitat"/></p>
                    <p>Dificultat:</p>
                    <p><xsl:value-of select="recepta[1]/dificultat"/></p>
                </div>
                <div>
                    <xsl:for-each select="recepta[1]/ingredients/ingredient">
                    <p><xsl:value-of select="./@quantitat"/> <xsl:value-of select="./@unitat"/> <xsl:value-of select="."/></p>
                    </xsl:for-each>
                </div>
            </div>
            <div class="receta Intro_receta">
                <p>A ver, vayamos por partes: aquí no hay una receta, hay dos: el risotto y como hacer un buen puré de calabaza a lo americano, que se ve que lo usan para todo!</p>
                <p>Allí hay pure de calabaza en el supermercado, es como muy normal, pero aquí en la península ibérica de puré de calabaza nada de nada.</p>
                <p>Estuve buscando una buena receta americana de puré de calabaza, y la encontré!</p>
                <p>Pero si tuviese que hacerla tal cual la hace la moza esta americana y tuviese que meter una de las calabazas de mi huerta cortada a la mitad, con piel y todo(esto me dejó ojiplática), pues necesitaría un horno de 4 metros cuadrados, por que las calabazas de mi huerta sufren de gigantismo y tenemos que partirlas con un hacha, no con un cuchillito como hace ella…así somos los del norte de España!</p>
                <p>En fin, que para hacer un buen puré de calabaza sólo tienes que pelar y trocear en trozos grandes, hornear a 180ºC durante unos 45 minutos, escurrir el agua que suelte, triturar y santas pascuas!</p>
                <img class="imagen" src="../Media/imagenes/imagen_2.jpg" alt="imagen_2.jpg"/>
                <p>A partir de aquí puedes: usarla directamente, guardarla en el frigo un máximo de 4-5 días bien tapada o congelarla.</p>
                <p>Yo lo que te recomiendo es que hagas esta receta ya de ya y guardes un poquito para las galletas de calabaza del próximo post(espoileeeeeeeeeeeeerrr 😉 )</p>
            </div>
            <div class="receta ingredientes_receta">
                <h2>Ingredientes:</h2>
                <div class="parrafos">
                    <p>1 taza de arroz arbóreo</p>
                    <p>1 taza de puré de calabaza</p>
                    <p>1/2 cebolla</p>
                    <p>Levadura nutricional(si tienes levadura de cerveza, pues también vale)</p>
                    <p>Ajo en polvo</p>
                    <p>Agua, aceite de oliva y sal</p>
                    <p>Cebollino para decorar(opcional)</p>
                </div>
            </div>
            <div class="receta preparacion_receta">
                <h2>Preparación:</h2>
                <div class="parrafos">
                    <p>1.-Pica la cebolla muy finita y rehoga en aceite hasta pocharla, 8-10 minutos a fuego medio.</p>
                    <p>2.-Añade el arroz arbóreo y sigue rehogando otros 2 minutos sin dejar de remover, vierte el puré de calabaza, añade las dos tazas de agua y una pizca de sal, remueve, deja que comience a hervir y remueve de vez en cuando hasta que espese.</p>
                    <p>3.-Cuando empiece a espesar añade una cucharada de postre de cúrcuma, 2 cucharadas de levadura nutricional y una cucharadita de postre de ajo en polvo, remueve hasta conseguir el punto de cremosidad deseado y añade un poquito de agua si fuese necesario.</p>
                    <p>4.-Decora con cebollino picado y sirve inmediatamente para que no pierda cremosidad.</p>
                </div>
            </div>
        </main>
    </xsl:template>

</xsl:stylesheet>