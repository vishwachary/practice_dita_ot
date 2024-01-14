<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" 
    xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
    xmlns:ot-placeholder="http://suite-sol.com/namespaces/ot-placeholder" version="2.0">
    
    <!--
        Front cover customization.
        A table with oXygen logo and product name 
    -->
    <xsl:template name="createFrontCoverContents">
        <fo:block 
            space-before="85mm" 
            space-before.conditionality="retain" 
            font-size="26pt"            
            font-family="Helvetica, Arial Unicode MS, Tahoma, Batang">            
            <!-- Table with logo and product name. -->
            <fo:table>
                <fo:table-column column-number="1" column-width="50mm"/>
                <fo:table-column column-number="2" column-width="160mm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="right" start-indent="20mm">
                            <fo:block>
							 <!-- set the cover image -->
                                <xsl:variable name="coverImageName" select="'sample_front_cover.jpg'">                                                   
                                </xsl:variable>                
                                <fo:external-graphic src="
                                    url({concat($artworkPrefix, '/Customization/OpenTopic/common/artwork/', $coverImageName)})"/>
                            </fo:block>
                        </fo:table-cell>                        
                    </fo:table-row>                    
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
