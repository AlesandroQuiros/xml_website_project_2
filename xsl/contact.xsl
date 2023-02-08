<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>UD6: Proyecto dirigido a la validación, formateo y transformación de documentos XML</title>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
                <link rel="stylesheet" href="../assets/css/main.css" />
            </head>
            <body>
                
                <!-- Header -->
                <header id="header">
                    <div class="inner">
                        <a href="../index.html" class="logo">Nombre de la web</a>
                        <nav id="nav">
                            <a href="../index.html">Página Principal</a>
                            <a href="catalogo_1.html">Catálogo 1</a>
                            <a href="catalogo_2.html">Catálogo 2</a>
                            <a href="#">Contacto</a>
                        </nav>
                    </div>
                </header>
                <a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                
                <!-- Main -->
                <section id="main" >
                    <div class="inner">
                        <header>
                            <h1>Contacto</h1>
                        </header>
                        <form method="post" action="#">
                            <div class="field half first">
                                <label for="name">Nombre</label>
                                <input type="text" name="name" id="name" />
                            </div>
                            <div class="field half">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" />
                            </div>
                            <div class="field">
                                <label for="message">Mensaje</label>
                                <textarea name="message" id="message" rows="6"></textarea>
                            </div>
                            <ul class="actions">
                                <li><input type="submit" value="Enviar" class="alt" /></li>
                            </ul>
                        </form>
                    </div>
                </section>
                
                <!-- Footer -->
                <footer id="footer">
                    <div class="inner">
                        <div class="copyright">
                            ® 2023 Urtzi Alesandro
                            <ul class="icons">
                                <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                                <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                                <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                                <li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
                                <li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
                                <li><a href="#" class="icon fa-tumblr"><span class="label">Tumblr</span></a></li>
                            </ul>
                            Datos de la empresa o asosciación
                        </div>
                    </div>
                </footer>
                
                <!-- Scripts -->
                <script src="../assets/js/jquery.min.js"></script>
                <script src="../assets/js/skel.min.js"></script>
                <script src="../assets/js/util.js"></script>
                <script src="../assets/js/main.js"></script>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>