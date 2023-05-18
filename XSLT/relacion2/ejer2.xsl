<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 2</title>
                <meta charset="UTF-8"></meta>
                <style>
                    tr,th,td,table{border: 1px solid black;
                                border-collapse: collapse;
                                text-align:center}
                    .rojo{background-color: red;}
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Precio</th>
                        <th>Título</th>
                        <th>Año de publicación</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" data-type="number" order="descending" />
                        <tr>
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                                <xsl:choose>
                                    <xsl:when test="precio > 100">
                                        <td class="rojo">
                                            <xsl:value-of select="titulo" /> (Caro) 
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>
                                            <xsl:value-of select="titulo" />
                                        </td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            <td>
                                <em><xsl:value-of select="@año"/></em>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>