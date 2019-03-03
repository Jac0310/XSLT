<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="delim">, </xsl:param>
    <xsl:param name="quote">"</xsl:param>
    <xsl:param name="pages"> pp. </xsl:param>
    <xsl:param name="fullstop">.</xsl:param>
    <xsl:template match="proceedings">
        <html>
            <ol>


            <xsl:for-each select="contents/article/author">
                <li>
                    <xsl:value-of select="."/>
                </li>

            </xsl:for-each>
            </ol>

            <xsl:for-each select="contents/article">
                <p>
                    <xsl:for-each select="author">
                        <xsl:value-of select="."/>
                        <xsl:if test="position() != last()">
                            <xsl:value-of select="$delim" />
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:apply-templates select="title"/>
                    <xsl:apply-templates select="pages"/>
                </p>
            </xsl:for-each>
        </html>
    </xsl:template>
    <xsl:template match="title">
            <b>
                <br></br>
                <xsl:value-of select="$quote" />
                <xsl:value-of select="."/>
                <xsl:value-of select="$quote" />
            </b>
    </xsl:template>
    <xsl:template match="pages">
            <xsl:value-of select="$pages" />
            <xsl:value-of select="."/>
            <xsl:value-of select="$fullstop" />
    </xsl:template>
</xsl:stylesheet>






        <!--3. Write a stylesheet to extract the authors, titles and page numbers of papers presented at the symposium. -->
<!--The output should be in HTML, each paper should constitute a separate paragraph, -->
<!-- with the author names listed on one line followed by commas,-->
<!--followed on the next line by the title emphasized and inside double quote marks, followed by a comma and then the characters "pp."-->
<!--(excluding the quotes) and the page numbers followed by a full-stop.-->