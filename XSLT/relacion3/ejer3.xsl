<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 1</title>
                <meta charset="UTF-8"></meta>
            </head>
            <style>
                table,tr,td{border: 1px solid black;
                            border-collapse:collapse}
            </style>
            <body>
                <table>
                    <xsl:for-each select="tienda/producto">
                         <tr>
                             <td><xsl:value-of select="articulo" /></td>
                        4</tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>