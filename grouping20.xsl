<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <HTML>
        <title>
<xsl:text>
List of partners
</xsl:text>
        </title>
        <body>
        <h3> Contacts by country </h3>
            <xsl:for-each-group select="contacts/contact" group-by="country">
                <xsl:sort select="current-grouping-key()"/>
                <p>Contacts who live in:
                    <b> <xsl:value-of select="current-grouping-key()"/> </b>
                    <ul>
                        <xsl:apply-templates select="current-group()">
                            <xsl:sort select="lastname"/>
                        </xsl:apply-templates>
                    </ul></p>
            </xsl:for-each-group>
        </body>
        </HTML>
    </xsl:template>

    <xsl:template match="contact">
        <li>
            <xsl:value-of select="lastname"/>,
            <xsl:value-of select="firstname"/>
        </li>
    </xsl:template>


</xsl:stylesheet>