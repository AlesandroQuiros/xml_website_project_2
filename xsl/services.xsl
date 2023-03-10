<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:variable name="page" select="document('../xml/store.xml')"/>
    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>Services - WebsiteName</title>
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
                            <a href="../index.html">Home Page</a>
                            <a href="../xml/productsWeb.xml">Products</a>
                            <a href="#">Services</a>
                            <a href="../web/contact.html">Contact</a>
                        </nav>
                    </div>
                </header>
                <a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                
                <!-- Main -->
                <section id="main" >
                    <div class="inner">
                        <header>
                            <h1 style="text-align:center">Service catalogue</h1>
                        </header>
                        <xsl:for-each select="$page/store/services/service">
                            <div class="box">
                                <a href="{current()/image}" target="_blank" class="image fit"><img height="300" src="../images/{current()/image}" alt="Image of {current()/name}" style="filter: grayscale(100%)"/></a>				
                                <h3><xsl:value-of select="current()/name"/></h3>
                                <strong>Descripción de <xsl:value-of select="current()/name"/>:</strong>
                                <ul>
                                    <xsl:for-each select="current()/description">
                                        <li><xsl:value-of select="current()"/></li>
                                    </xsl:for-each>
                                </ul>
                                <span >Price: <xsl:value-of select="format-number(current()/price,'#.00')"/> 
                                    <xsl:choose>
                                        <xsl:when test="current()/price[@currency='dollar']">
                                            $ | <xsl:value-of select="format-number(current()/price * 0.94,'#.00')"/> €
                                        </xsl:when>
                                        <xsl:otherwise>
                                            € | <xsl:value-of select="format-number(current()/price * 1.06,'#.00')"/> $
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </span>
                                <a href="{current()/url}" class="button fit">Más información</a>
                            </div>
                        </xsl:for-each>
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
                            <xsl:value-of select="$page/store/business/name"/>
                            <xsl:value-of select="$page/store/business/location"/> 
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
