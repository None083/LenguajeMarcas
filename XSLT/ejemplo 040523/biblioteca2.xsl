<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion</title>
            </head>
        </html>
        <body>
            <h1>Títulos - Autor de todos los libros</h1>
            <xsl:apply-templates/>
        </body>
    </xsl:template>

    <xsl:template match="libro">
        <p><xsl:value-of select="titulo"/> - <xsl:value-of select="autor"/></p>
    </xsl:template>

</xsl:stylesheet>