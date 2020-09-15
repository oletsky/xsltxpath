<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <HTML>
            <head><title> <xsl:text>
Практикум з XPath
</xsl:text> </title></head>
            <body>
                <xsl:for-each select="/catalog/node()">
                    <xsl:value-of select="name(.)"/>
                    <br/>
                </xsl:for-each>
            </body>
        </HTML>

    </xsl:template>

</xsl:stylesheet>
