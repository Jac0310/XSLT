<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="quote">"</xsl:param>
    <xsl:template match="proceedings">
        <html>
            <h1>
                <xsl:value-of select="name"/>
            </h1>
            <xsl:for-each select="contents/article">
                <p>
                    <xsl:value-of select="$quote"/>
                    <xsl:value-of select= "title"/>
                    <xsl:value-of select="$quote"/>
                </p>
            </xsl:for-each>
        </html>
    </xsl:template>
</xsl:stylesheet>


<!--1. Write a stylesheet to extract the value of the name element which is a child of the proceedings element in the XML document. -->
<!--The output should be in HTML with the value of the name element being the contents of an h1 heading.-->

<!--2. Modify the stylesheet in (1) to extract, in addition, the titles of papers presented at the symposium.-->
<!--Each paper title should be inserted inside double quote marks and should constitute a separate paragraph in the HTML,-->
<!--after the h1 heading.-->

