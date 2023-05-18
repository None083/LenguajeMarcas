<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Transformación 4</title>
      </head>
      <body>
        <table><xsl:apply-templates/></table>
        <style>
            table{border-collapse:collapse}
            table,td{border: 1px solid black}
        </style>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="ciclo">
    <tr><td><xsl:value-of select="nombre"/></td></tr>
  </xsl:template>

</xsl:stylesheet>