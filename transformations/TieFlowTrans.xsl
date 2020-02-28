<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
    xmlns:cim="http://iec.ch/TC57/2007/CIM-schema-cim12#" 
    version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
            <xsl:for-each select="rdf:RDF/cim:Terminal">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimControlArea:TieFlow</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="concat(@rdf:ID,'tieFlow')"/>
                    </xsl:attribute>
                    <xsl:attribute name="Terminal">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'AMHE')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5593"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'CLAR')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5593"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'BOWM')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5593"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'MONR')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5593"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'WAUT')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5594"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'WINL')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5594"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'MARC')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5594"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'TROY')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5594"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'MAPL')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5595"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'JUNE')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5595"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'BLOO')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5595"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'CROS')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5596"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'GRAN')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5596"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:if test="contains(cim:IdentifiedObject.name,'LANS')">
                        <xsl:attribute name="ControlArea">
                            <xsl:text>"//@IDobject.5596"/</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                </IDobject>
            </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>   


