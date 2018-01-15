<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <head>
      <div id="info" style="display:inline-block;float:right;vertical-align:top">
   <p>
   	      <b> Report reference no. : </b>
   	      <xsl:value-of select="root/report-reference-number"/>
   </p>
   
   <p>
      	  <b> Report status : </b>
   	      <xsl:value-of select="root/report-status"/>
   </p>
   
   <p>
      	  <b> Trading venue identifier : </b>
   	      <xsl:value-of select="root/trading-venue-identifier"/>
   </p>
   </div>
   
  </head>
  <table id="report">
    <tr>
      <xsl:for-each select="root/records/record[1]/*">
	    <th>
	      <xsl:value-of select="local-name()"/>
	    </th>
	    </xsl:for-each>  
    </tr>	
	  <xsl:for-each select="root/records/record">
      <tr>
	      <xsl:for-each select="*">
	        <td>  
		        <xsl:value-of select="."/>
	        </td>
	      </xsl:for-each>  
      </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
