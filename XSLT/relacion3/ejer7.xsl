<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 7</title>
                <meta charset="UTF-8"></meta>
                <style>
                    tr,th,td,table{border: 1px solid black;
                    border-collapse: collapse}
                    .verde{background-color:green}
                    .rojo{background-color:red}
                </style>
            </head>
            <body>
                <h1>Productos de la tienda</h1>
                <table>
                    <tr>
                        <th>Código</th>
                        <th>Artículo</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                        <th>Imagen</th>
                    </tr>
                    <xsl:for-each select="tienda/producto">
                        <xsl:choose>
                            <xsl:when test="precio &lt;= 100">
                                <tr class="verde">
                                    <td><xsl:value-of select="codigo" /></td>
                                    <td><xsl:value-of select="articulo" /></td>
                                    <td><xsl:value-of select="cantidad" /></td>
                                    <td><xsl:value-of select="precio" /></td>
                                    <td>
                                        <img>
                                            <xsl:attribute name="src">
                                                imagenes/<xsl:value-of select="imagen" />
                                            </xsl:attribute>
                                        </img>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="precio &gt; 1000">
                                <tr class="rojo">
                                    <td><xsl:value-of select="codigo" /></td>
                                    <td><xsl:value-of select="articulo" /></td>
                                    <td><xsl:value-of select="cantidad" /></td>
                                    <td><xsl:value-of select="precio" /></td>
                                    <td>
                                        <img>
                                            <xsl:attribute name="src">
                                                imagenes/<xsl:value-of select="imagen" />
                                            </xsl:attribute>
                                        </img>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td><xsl:value-of select="codigo" /></td>
                                    <td><xsl:value-of select="articulo" /></td>
                                    <td><xsl:value-of select="cantidad" /></td>
                                    <td><xsl:value-of select="precio" /></td>
                                    <td>
                                        <img>
                                            <xsl:attribute name="src">
                                                imagenes/<xsl:value-of select="imagen" />
                                            </xsl:attribute>
                                        </img>
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>