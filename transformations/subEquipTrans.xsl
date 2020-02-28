<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
    xmlns:cim="http://iec.ch/TC57/2007/CIM-schema-cim12#" 
    version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">

            <xsl:for-each select="rdf:RDF/cim:ACLineSegment">
                    <LN>
                            <xsl:attribute name="xsi:type">
                                    <xsl:text>groupz:ZLIN</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="NamePlt">
                                    <xsl:text>//@LPL.0</xsl:text>
                            </xsl:attribute>
                    </LN>
                    <LPL>
                            <xsl:attribute name="IdNs">
                                    <xsl:value-of select="@rdf:ID"/>
                            </xsl:attribute>
                    </LPL>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:Breaker">
                    <LN>
                            <xsl:attribute name="xsi:type">
                                    <xsl:text>groupx:XCBR</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="NamePlt">
                                    <xsl:text>//@LPL.0</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="SwitchControl">
                                    <xsl:text>//@LN.0</xsl:text>
                            </xsl:attribute>
                    </LN>
                    <LN>
                            <xsl:attribute name="xsi:type">
                                    <xsl:text>groupc:CSWI</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="NamePlt">
                                    <xsl:text>//@LPL.0</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="Pos">
                                  <xsl:text>//@DPC.0</xsl:text>  
                            </xsl:attribute>
                            <xsl:attribute name="PosA">
                                    <xsl:text>//@DPC.0</xsl:text>  
                            </xsl:attribute>
                            <xsl:attribute name="PosB">
                                    <xsl:text>//@DPC.0</xsl:text>  
                            </xsl:attribute>
                            <xsl:attribute name="PosC">
                                    <xsl:text>//@DPC.0</xsl:text>  
                            </xsl:attribute>
                            <xsl:attribute name="OpOpn">
                                    <xsl:text>//@ACT.0</xsl:text>  
                            </xsl:attribute>
                            <xsl:attribute name="OpCls">
                                    <xsl:text>//@ACT.0</xsl:text>  
                            </xsl:attribute>
                            
                    </LN>
                    <LPL>
                            <xsl:attribute name="IdNs">
                                    <xsl:value-of select="@rdf:ID"/>
                            </xsl:attribute>
                    </LPL>
                    <DPC>
                            <xsl:attribute name="ctlVal">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </DPC>
                    <DPC>
                            <xsl:attribute name="ctlVal">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </DPC>
                    <DPC>
                            <xsl:attribute name="ctlVal">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </DPC>
                    <DPC>
                            <xsl:attribute name="ctlVal">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </DPC>
                    <ACT>
                            <xsl:attribute name="general">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </ACT>
                    <ACT>
                            <xsl:attribute name="general">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </ACT>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:Disconnector">
                    <LN>
                            <xsl:attribute name="xsi:type">
                                    <xsl:text>groupx:XSWI</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="NamePlt">
                                    <xsl:text>//@LPL.0</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="SwitchControl">
                                    <xsl:text>//@LN.0</xsl:text>
                            </xsl:attribute>
                    </LN>
                    <LN>
                            <xsl:attribute name="xsi:type">
                                    <xsl:text>groupc:CSWI</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="NamePlt">
                                    <xsl:text>//@LPL.0</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="Pos">
                                    <xsl:text>//@DPC.0</xsl:text>  
                            </xsl:attribute>
                            <xsl:attribute name="PosA">
                                    <xsl:text>//@DPC.0</xsl:text>  
                            </xsl:attribute>
                            <xsl:attribute name="PosB">
                                    <xsl:text>//@DPC.0</xsl:text>  
                            </xsl:attribute>
                            <xsl:attribute name="PosC">
                                    <xsl:text>//@DPC.0</xsl:text>  
                            </xsl:attribute>
                            <xsl:attribute name="OpOpn">
                                    <xsl:text>//@ACT.0</xsl:text>  
                            </xsl:attribute>
                            <xsl:attribute name="OpCls">
                                    <xsl:text>//@ACT.0</xsl:text>  
                            </xsl:attribute>
                            
                    </LN>
                    <LPL>
                            <xsl:attribute name="IdNs">
                                    <xsl:value-of select="@rdf:ID"/>
                            </xsl:attribute>
                    </LPL>
                    <DPC>
                            <xsl:attribute name="ctlVal">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </DPC>
                    <DPC>
                            <xsl:attribute name="ctlVal">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </DPC>
                    <DPC>
                            <xsl:attribute name="ctlVal">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </DPC>
                    <DPC>
                            <xsl:attribute name="ctlVal">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </DPC>
                    <ACT>
                            <xsl:attribute name="general">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </ACT>
                    <ACT>
                            <xsl:attribute name="general">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </ACT>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:PowerTransformer">
                    <LN>
                            <xsl:attribute name="xsi:type">
                                    <xsl:text>groupY:YPTR</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="NamePlt">
                                    <xsl:text>//@LPL.0</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="PwrRtg">
                                    <xsl:text>//@ASG.0</xsl:text>
                            </xsl:attribute>
                    </LN>
                    <LPL>
                            <xsl:attribute name="IdNs">
                                    <xsl:value-of select="@rdf:ID"/>
                            </xsl:attribute>
                    </LPL>
                    <ASG>
                            <xsl:attribute name="setMag">
                                    <xsl:text>//@AnalogueValue.0</xsl:text>
                            </xsl:attribute>   
                    </ASG>
                    <AnalogueValue>
                            <xsl:attribute name="f">
                                    <xsl:text>100.0</xsl:text>
                            </xsl:attribute>
                    </AnalogueValue>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:ShuntCompensator">
                    <LN>
                            <xsl:attribute name="xsi:type">
                                    <xsl:text>groupz:ZCAP</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="NamePlt">
                                    <xsl:text>//@LPL.0</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="CapDS">
                                    <xsl:text>//@SPC.0</xsl:text>
                            </xsl:attribute>
                    </LN>
                    <LPL>
                            <xsl:attribute name="IdNs">
                                    <xsl:value-of select="@rdf:ID"/>
                            </xsl:attribute>
                    </LPL>
                    <SPC>
                            <xsl:attribute name="ctlVal">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="stVal">
                                    <xsl:text>true</xsl:text>
                            </xsl:attribute>
                    </SPC>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:GeneratingUnit">
                    <LN>
                            <xsl:attribute name="xsi:type">
                                    <xsl:text>groupz:ZGEN</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="NamePlt">
                                    <xsl:text>//@LPL.0</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="DmdPwr">
                                    <xsl:text>//@ASG.0</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="PwrRtg">
                                    <xsl:text>//@ASG.0</xsl:text>
                            </xsl:attribute>
                            
                    </LN>
                    <LPL>
                            <xsl:attribute name="IdNs">
                                    <xsl:value-of select="@rdf:ID"/>
                            </xsl:attribute>
                    </LPL>
                    <ASG>
                            <xsl:attribute name="setMag">
                                    <xsl:text>//@AnalogueValue.0</xsl:text>
                            </xsl:attribute>   
                    </ASG>
                    <AnalogueValue>
                            <xsl:attribute name="f">
                                    <xsl:text>150.0</xsl:text>
                            </xsl:attribute>
                    </AnalogueValue>
                    <ASG>
                            <xsl:attribute name="setMag">
                                    <xsl:text>//@AnalogueValue.0</xsl:text>
                            </xsl:attribute>   
                    </ASG>
                    <AnalogueValue>
                            <xsl:attribute name="f">
                                    <xsl:text>200.0</xsl:text>
                            </xsl:attribute>
                    </AnalogueValue>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:TapChanger">
                    <LN>
                            <xsl:attribute name="xsi:type">
                                    <xsl:text>groupy:YLTC</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="NamePlt">
                                    <xsl:text>//@LPL.0</xsl:text>
                            </xsl:attribute>
                    </LN>
                    <LPL>
                            <xsl:attribute name="IdNs">
                                    <xsl:value-of select="@rdf:ID"/>
                            </xsl:attribute>
                    </LPL>
            </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>   