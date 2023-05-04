<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion</title>
            </head>
        </html>
        <body>
            <h1>Títulos (Fecha publicación) - Autor (Fecha Nacimiento) de todos los libros</h1>
            <ul>
                <xsl:apply-templates/>
            </ul>
        </body>
    </xsl:template>

    <xsl:template match="libro">
        <li><xsl:value-of select="titulo"/> (<xsl:value-of select="fechaPublicacion/@anyo"/>) - <xsl:value-of select="autor"/> (<xsl:value-of select="autor/@fechaNacimiento"/>)</li>
    </xsl:template>


</xsl:stylesheet>