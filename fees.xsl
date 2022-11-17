<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <center>
  <h2>FEES DETAILS</h2>
  <table border="2">
    <tr bgcolor="#9acd32">
      <th>Fid</th>
      <th>Category</th>
      <th>Type</th>
      <th>Price</th>
      <th>Duration</th>
      <th>Description</th>
    </tr>
    <xsl:for-each select="FEES/fees_details">
    <tr>
      <td bgcolor="#5F9EA0"><xsl:value-of select="fid"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="category"/></td>
      <td bgcolor="#5F9EA0"><xsl:value-of select="type"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="price"/></td>
      <td bgcolor="#5F9EA0"><xsl:value-of select="year"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="description"/></td>
    </tr>
    </xsl:for-each>
  </table>

<h2>FEES DETAILS SORTED BY TYPE</h2>
  <table border="2">
    <tr bgcolor="#9acd32">
      <th>Fid</th>
      <th>Category</th>
      <th>Type</th>
      <th>Price</th>
      <th>Duration</th>
      <th>Description</th>
    </tr>
    <xsl:for-each select="FEES/fees_details">
    <xsl:sort select="type"/>
    <tr>
      <td bgcolor="#5F9EA0"><xsl:value-of select="fid"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="category"/></td>
      <td bgcolor="#5F9EA0"><xsl:value-of select="type"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="price"/></td>
      <td bgcolor="#5F9EA0"><xsl:value-of select="year"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="description"/></td>
    </tr>
    </xsl:for-each>
  </table>

<h2>FEES > 10000</h2>
<table border="2">
    <tr bgcolor="#9acd32">
      <th>Fid</th>
      <th>Category</th>
      <th>Type</th>
      <th>Price</th>
      <th>Duration</th>
      <th>Description</th>
    </tr>
    <xsl:for-each select="FEES/fees_details">
    <xsl:if test="price>10000">
    <tr>
      <td bgcolor="#5F9EA0"><xsl:value-of select="fid"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="category"/></td>
      <td bgcolor="#5F9EA0"><xsl:value-of select="type"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="price"/></td>
      <td bgcolor="#5F9EA0"><xsl:value-of select="year"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="description"/></td>
    </tr>
    </xsl:for-each>
  </table>


<table border="2">
    <tr bgcolor="#9acd32">
      <th>Fid</th>
      <th>Category</th>
      <th>Type</th>
      <th>Price</th>
      <th>Duration</th>
      <th>Description</th>
    </tr>
    <xsl:for-each select="FEES/fees_details">
    <tr>
      <td bgcolor="#5F9EA0"><xsl:value-of select="fid"/></td>
     <xsl:choose>
      <xsl:when test="price>15000">
         <td bgcolor="#ff00ff">
         <xsl:value-of select="category"/>
         </td>
      </xsl:when>
      <xsl:otherwise>
         <td><xsl:value-of select="category"/></td>
      </xsl:otherwise>
      </xsl:choose>
      <td bgcolor="#5F9EA0"><xsl:value-of select="type"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="price"/></td>
      <td bgcolor="#5F9EA0"><xsl:value-of select="year"/></td>
      <td bgcolor="#A9A9A9"><xsl:value-of select="description"/></td>
    </tr>
    </xsl:for-each>
  </table>

  </center>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
