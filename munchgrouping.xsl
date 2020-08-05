<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:key name="keysearch" match="city" use="@country"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Grouping by Munch</title>
            </head>
            <body>
        <xsl:variable name="uniques"
                      select="cities/city[generate-id(.)=generate-id(key('keysearch',@country))]/@country"/>

        <xsl:for-each select="$uniques">
            <b> <xsl:value-of select="."/></b><br/>
            <xsl:for-each select="key('keysearch',.)">
                <xsl:value-of select="@name"/><br/>
            </xsl:for-each>
        </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>