<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
    xmlns:cim="http://iec.ch/TC57/2007/CIM-schema-cim12#" 
    version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <CIM>
            <xsl:for-each select="rdf:RDF/cim:ACLineSegment">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:Breaker">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:BusbarSection">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:Disconnector">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:HydroGeneratingUnit">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:PowerTransformer">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:ShuntCompensator">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:StaticVarCompensator">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:SynchronousMachine">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:TapChanger">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:ThermalGeneratingUnit">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
            <xsl:for-each select="rdf:RDF/cim:TransformerWinding">
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
                    <xsl:attribute name="PowerSystemResources">
                        <xsl:value-of select="@rdf:ID"/>
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
        </CIM>
    </xsl:template>
</xsl:stylesheet>   

