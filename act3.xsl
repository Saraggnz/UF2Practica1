 <!-- archivo xsl de la actividad 3 -->
<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <!-- Ponemos el titulo y con style definimos un color-->
  <h2 style="color:#086A87">Juegos de pc</h2>
    <!-- Creamos una tabla con borde -->
  <table border="1">
   <!-- Ponemos los nombres de cada columna y un color de fondo -->
    <tr bgcolor="#F7BE81">
      <th>Nombre</th>
      <th>Fecha de salida</th>
      <th>Precio</th>
      <th>Genero</th>
      <th>Desarrollador</th>
      <th>Editor</th>
    </tr>
     <!-- Con el for-each seleccionamos que parte del xml queremos que salga -->
    <xsl:for-each select="juegos_de_pc/juego">
     <!-- Usamos un if para indicar que los juegos que valgan menos de 10e no aparezcan en la tabla -->
    <xsl:if test="precio>10">
    <tr>
     <!-- Indicamos que queremos los datos de nombre, fecha, precio, genero, desarrollador y editor -->
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="fecha_de_salida"/></td>
      <td><xsl:value-of select="precio"/></td>
      <td><xsl:value-of select="genero"/></td>
      <td><xsl:value-of select="desarrollador"/></td>
      <td><xsl:value-of select="editor"/></td>
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
