<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Horario</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <xsl:for-each select="horario/dia">
                <xsl:sort select="numdia" data-type="number" />
                    <xsl:choose>
                        <xsl:when test="numdia=1">
                            <p>Lunes</p>
                        </xsl:when>
                        <xsl:when test="numdia=2">
                            <p>Martes</p>
                        </xsl:when>
                        <xsl:when test="numdia=3">
                            <p>Miércoles</p>
                        </xsl:when>
                        <xsl:when test="numdia=4">
                            <p>Jueves</p>
                        </xsl:when>
                        <xsl:when test="numdia=5">
                            <p>Viernes</p>
                        </xsl:when>
                        <xsl:when test="numdia=6">
                            <p>Sábado</p>
                        </xsl:when>
                        <xsl:when test="numdia=7">
                            <p>Domingo</p>
                        </xsl:when>
                        <xsl:otherwise>
                            <p></p>
                        </xsl:otherwise>
                    </xsl:choose>
                    <ul>
                        <xsl:for-each select="tarea">
                            <li>
                                <strong><xsl:value-of select="nombre"/></strong> 
                                <xsl:if test="@prioridad">
                                    -Prioridad:<xsl:value-of select="@prioridad"/>
                                </xsl:if>
                                <br/>
                                De <xsl:value-of select="hora-ini"/> a <xsl:value-of select="hora-fin"/>
                                <br/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>