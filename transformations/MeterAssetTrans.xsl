<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
    xmlns:cim="http://iec.ch/TC57/2007/CIM-schema-cim12#"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <xsl:for-each select="rdf:RDF/cim:Analog">
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimMetering:MeterAsset</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'PMUMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="mRID">
                    <xsl:value-of select="concat(@rdf:ID,'PMUMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:value-of select="concat(@rdf:ID,'PMUMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="Measurements">
                    <xsl:value-of select="@rdf:ID"/>
                </xsl:attribute>
            </IDobject>
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimCommon:Location</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="mRID">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="Assets">
                    <xsl:value-of select="concat(@rdf:ID,'PMUMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="Position">
                    <xsl:value-of select="concat(@rdf:ID,'Pos')"/>
                </xsl:attribute>
            </IDobject>
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimCommon:PositionPoint</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'Pos')"/>
                </xsl:attribute>
                
                <xsl:attribute name="Location">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="xPosition">
                    <xsl:text>x</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="yPosition">
                    <xsl:text>y</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="zPosition">
                    <xsl:text>z</xsl:text>
                </xsl:attribute>
            </IDobject>
        </xsl:for-each>
        <xsl:for-each select="rdf:RDF/cim:Discrete">
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimMetering:MeterAsset</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'PMUMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="mRID">
                    <xsl:value-of select="concat(@rdf:ID,'PMUMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:value-of select="concat(@rdf:ID,'PMUMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="Measurements">
                    <xsl:value-of select="@rdf:ID"/>
                </xsl:attribute>
            </IDobject>
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimCommon:Location</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="mRID">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="Assets">
                    <xsl:value-of select="concat(@rdf:ID,'PMUMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="Position">
                    <xsl:value-of select="concat(@rdf:ID,'Pos')"/>
                </xsl:attribute>
            </IDobject>
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimCommon:PositionPoint</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'Pos')"/>
                </xsl:attribute>
                
                <xsl:attribute name="Location">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="xPosition">
                    <xsl:text>x</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="yPosition">
                    <xsl:text>y</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="zPosition">
                    <xsl:text>z</xsl:text>
                </xsl:attribute>
            </IDobject>
        </xsl:for-each>
        <xsl:for-each select="rdf:RDF/cim:ConformLoad">
          <IDobject>
            <xsl:attribute name="xsi:type">
                <xsl:text>cimMetering:ServiceDeliveryPoint</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="UUID">
                <xsl:value-of select="concat(@rdf:ID,'SDL')"/>
            </xsl:attribute>
            <xsl:attribute name="mRID">
                <xsl:value-of select="concat(@rdf:ID,'SDL')"/>
            </xsl:attribute>
              <xsl:attribute name="name">
                  <xsl:value-of select="concat(@rdf:ID,'SDL')"/>
              </xsl:attribute>
            <xsl:attribute name="EnergyConsumer">
                <xsl:value-of select="@rdf:ID"/>
            </xsl:attribute>
            <xsl:attribute name="EndDeviceAssets">
                <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
            </xsl:attribute>
         </IDobject>
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimMetering:MeterAsset</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="mRID">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="ServiceDeliveryPoint">
                    <xsl:value-of select="concat(@rdf:ID,'SDL')"/>
                </xsl:attribute>
            </IDobject>
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimCommon:Location</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="mRID">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="Assets">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="Position">
                    <xsl:value-of select="concat(@rdf:ID,'Pos')"/>
                </xsl:attribute>
            </IDobject>
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimCommon:PositionPoint</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'Pos')"/>
                </xsl:attribute>
                
                <xsl:attribute name="Location">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="xPosition">
                    <xsl:text>x</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="yPosition">
                    <xsl:text>y</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="zPosition">
                    <xsl:text>z</xsl:text>
                </xsl:attribute>
            </IDobject>
        </xsl:for-each>
        <xsl:for-each select="rdf:RDF/cim:NonConformLoad">
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimMetering:ServiceDeliveryPoint</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'SDL')"/>
                </xsl:attribute>
                <xsl:attribute name="mRID">
                    <xsl:value-of select="concat(@rdf:ID,'SDL')"/>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:value-of select="concat(@rdf:ID,'SDLMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="EnergyConsumer">
                    <xsl:value-of select="@rdf:ID"/>
                </xsl:attribute>
                <xsl:attribute name="EndDeviceAssets">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
            </IDobject>
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimMetering:MeterAsset</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="mRID">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="ServiceDeliveryPoint">
                    <xsl:value-of select="concat(@rdf:ID,'SDL')"/>
                </xsl:attribute>
            </IDobject>
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimCommon:Location</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="mRID">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="Assets">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
                <xsl:attribute name="Position">
                    <xsl:value-of select="concat(@rdf:ID,'Pos')"/>
                </xsl:attribute>
            </IDobject>
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimCommon:PositionPoint</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="concat(@rdf:ID,'Pos')"/>
                </xsl:attribute>
                
                <xsl:attribute name="Location">
                    <xsl:value-of select="concat(@rdf:ID,'Loc')"/>
                </xsl:attribute>
                <xsl:attribute name="xPosition">
                    <xsl:text>x</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="yPosition">
                    <xsl:text>y</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="zPosition">
                    <xsl:text>z</xsl:text>
                </xsl:attribute>
            </IDobject>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>