<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
     <body>
   <!-- Creamos un h2 y ponemos la ruta que queremos del xml, en este caso queremos el texto. Tambien le ponemos color -->
       <h2 style="color:#9acd32"><xsl:value-of select="title/text"/></h2>
     </body>
  </html>
</xsl:template>
</xsl:stylesheet>