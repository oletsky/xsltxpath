<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
        <xsl:variable name="fact">
            <xsl:call-template name="factor">
                <xsl:with-param name="i" select="value"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="concat('The factorial of ',value,' is ',$fact)"/>
        </html>

    </xsl:template>

    <xsl:template name="factor">
        <xsl:param name="i"/>
        <xsl:choose>
            <xsl:when test="$i=0">1</xsl:when>
            <xsl:otherwise>
                <xsl:variable name="fact">
                    <xsl:call-template name="factor">
                        <xsl:with-param name="i" select="$i - 1"/>
                    </xsl:call-template>
                </xsl:variable>
                <xsl:value-of select="$i*$fact"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>


</xsl:stylesheet>