<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 6</title>
                <meta charset="UTF-8"></meta>
                <style>
                    tr,th,td,table{border: 1px solid black;
                                    border-collapse: collapse;
                                    text-align:center}
                    .red{color:red}
                    .green{color:green}
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Precio</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="catalogo/cds/cd">
                        <tr>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="año &lt; 2000">
                                        <div class="red">
                                            <xsl:value-of select="titulo" />
                                        </div>
                                    </xsl:when>
                                    <xsl:when test="año > 2000">
                                        <div class="green">
                                            <xsl:value-of select="titulo" />
                                        </div>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="titulo" />
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <td><xsl:value-of select="precio" /></td>
                            <td><xsl:value-of select="año" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>