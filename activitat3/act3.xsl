<?xml version="1.0" encoding="UTF-8"?><!--Codificació en
UTF-8-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"><!--Versió
  del xsl-->
  <xsl:template match="/"><!--Plantilla-->
<html> <!--Codi
      html-->
      <body><!--Contingut-->
        <h2>Biblioteca</h2><!--Títol-->
        <table border="1"><!--Taula-->
          <tr bgcolor="#9pca3da"><!--Color-->
            <th style="text-align:left">Nom</th><!--Columna-->
            <th style="text-align:left">Cognom</th>
            <th style="text-align:left">Nacionalitat</th>
            <th style="text-align:left">Antigüitat</th>
            <th style="text-align:left">Ciutat</th>
            <th style="text-align:left">Any de naixement</th>
          </tr><!--Files-->
          <xsl:for-each select="empresa/empleats"><!--Sel·lecció de valors-->
    <xsl:sort select="cognom" /><!--Ordenar alfàbeticament per el cognom-->
    <xsl:if test="naixement>1993"><!--Condició per el any de naixement-->
              <tr>
                <td>
                  <xsl:value-of select="nom" /><!--Mostrar els valors-->
                </td>
                <td>
                  <xsl:value-of select="cognom" />
                </td>
                <td>
                  <xsl:value-of select="nacionalitat" />
                </td>
                <td>
                  <xsl:value-of select="antiguitat" />
                </td>
                <td>
                  <xsl:value-of select="ciutat" />
                </td>
                <td>
                  <xsl:value-of select="naixement" />
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>