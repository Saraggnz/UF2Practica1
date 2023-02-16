<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
   <!-- Ponemos el titulo con un estilo para añadir color -->
  <h2 style="color:#96039E">Libros</h2>
   <!-- Creamos una tabla con borde -->
  <table border="1">
   <!-- Ponemos el titulo de cada columna con un color de fondo -->
    <tr bgcolor="#0CD3BF">
      <th>Nombre</th>
      <th>Autor</th>
    </tr>
     <!-- Indicamos la ruta del xml donde estan los datos que queremos poner en la tabla -->
    <xsl:for-each select="libreria/libro">
    <tr>
     <!-- Indicamos que queremos los datos de nombre y autor -->
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="autor"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
