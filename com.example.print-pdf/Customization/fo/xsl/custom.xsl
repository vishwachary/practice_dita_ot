<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
  <!-- Move figure title to top and description to bottom -->
  <xsl:template match="*[contains(@class,' topic/fig ')]">
    <fo:block xsl:use-attribute-sets="fig">
      <xsl:call-template name="commonattributes"/>
      <xsl:if test="not(@id)">
        <xsl:attribute name="id">
          <xsl:call-template name="get-id"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:apply-templates select="*[contains(@class,' topic/title ')]"/>
      <xsl:apply-templates select="*[not(contains(@class,' topic/title ') or contains(@class,' topic/desc '))]"/>
      <xsl:apply-templates select="*[contains(@class,' topic/desc ')]"/>
    </fo:block>
  </xsl:template>
  <!-- Change page size to A4 -->
  <xsl:variable name="page-width">210mm</xsl:variable>
  <xsl:variable name="page-height">297mm</xsl:variable>
  
  <xsl:attribute-set name="common.border__bottom">
    <xsl:attribute name="border-after-style">solid</xsl:attribute>
    <xsl:attribute name="border-after-width">120pt</xsl:attribute>
    <xsl:attribute name="border-after-color">green</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-body__frontmatter.odd" use-attribute-sets="region-body.odd">

    <xsl:attribute name="background-image">url(Customization/OpenTopic/common/artwork/sample_front_cover.jpg)</xsl:attribute>

    <xsl:attribute name="background-repeat">repeat</xsl:attribute>

    <xsl:attribute name="background-position">150px 150px</xsl:attribute>

</xsl:attribute-set>
</xsl:stylesheet>
