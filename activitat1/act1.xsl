<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"><!--Fitxer en xsl-->
<xsl:template match="/"><!--Plantilla de xsl-->
    <html><!--html-->
    <body><!--contingut-->
        <text style="color:green;"><!--Estils inline--><xsl:value-of select="title/text"/></text><!--Mostrar el valor-->
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>