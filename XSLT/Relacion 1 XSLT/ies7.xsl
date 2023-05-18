<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Transformación 7</title>
      </head>
      <body>
        <h1>
          <xsl:value-of select="ies/@nombre" />
        </h1>
        <p> Página web: <a>
          <xsl:attribute name="href">
            <xsl:value-of select="ies/@web" />
          </xsl:attribute>
          <xsl:value-of select="ies/@nombre" />
        </a>
      </p>
      <table>
        <tr>
          <th>Nombre del ciclo</th>
          <th>Grado</th>
          <th>Año del título</th>
        </tr>
        <xsl:apply-templates />
      </table>
      <style>
          table{border-collapse:collapse; text-align:center}
          table,td,th,tr{border: 1px solid black}
      </style>

    </body>
  </html>
</xsl:template>

<xsl:template match="ciclo">
  <tr>
    <td>
      <xsl:value-of select="nombre" />
    </td>
    <td>
      <xsl:value-of select="grado" />
    </td>
    <td>
      <xsl:value-of select="decretoTitulo/@año" />
    </td>
  </tr>
</xsl:template>

</xsl:stylesheet>