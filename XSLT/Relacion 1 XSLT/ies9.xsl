<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 9</title>
            </head>
            <style>
                    .rojo{color:red}
                    .amarillo{color:yellow}
                    .verde{color:green}
            </style>
            <body>
                <xsl:apply-templates/>
                <xsl:for-each select="ciclos"></xsl:for-each>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <xsl:choose>
            <xsl:when test="decretoTitulo/@año = 2008">
                <p class="rojo">
                    <xsl:value-of select="nombre"/>
                </p>
            </xsl:when>
            <xsl:when test="decretoTitulo/@año = 2009">
                <p class="amarillo">
                    <xsl:value-of select="nombre"/>
                </p>
            </xsl:when>
            <xsl:otherwise>
                <p class="verde">
                    <xsl:value-of select="nombre"/>
                </p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
<!-- @id='DAW' para mostrar solo los que tengan id daw
esto se pone en el test
<xsl:if test="decretoTitulo/@año &lt; 2009"> 
            <p>
                <xsl:value-of select="nombre"/>
            </p>
</xsl:if>
-->