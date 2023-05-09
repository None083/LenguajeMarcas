<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 8</title>
            </head>
            <body>
                <h1> Ciclos formativos del <xsl:value-of select="ies/@nombre" />
                </h1>
                <ul>
                    <xsl:apply-templates />
                </ul>
                <style>
                    h1{margin-top: 20;}
                </style>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <li>
            <xsl:value-of select="@id"/><br/>
            <xsl:value-of select="nombre" />, Ciclo Formativo de Grado
            <xsl:value-of select="grado" /> creado en 
            <xsl:value-of select="decretoTitulo/@año" />
        </li>
    </xsl:template>

</xsl:stylesheet>
