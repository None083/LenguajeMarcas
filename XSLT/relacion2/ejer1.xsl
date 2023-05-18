<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion1</title>
                <meta charset="UTF-8"></meta>
                <style>
                    tr,th,td,table{border: 1px solid black;
                    border-collapse: collapse}
                    .red{color:red}
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Autores</th>
                        <th>Editores/Afiliación</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="titulo" order="descending" />
                    <tr>
                        <td>
                            <xsl:choose>
                                <xsl:when test="precio > 100">
                                    <div class="red">
                                        <xsl:value-of select="titulo" /> (Caro) 
                                    </div>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="titulo" />
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td>
                            <xsl:for-each select="autor">
                                <xsl:value-of select="nombre" />&#160;
                                <xsl:value-of select="apellido" />
                                <br/>
                            </xsl:for-each>
                        </td>
                        <td>
                        <xsl:for-each select="editor">
                                <xsl:value-of select="nombre" />&#160;
                                <xsl:value-of select="apellido" />/
                                <xsl:value-of select="afiliacion"/>
                                <br/>
                            </xsl:for-each>
                        </td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>