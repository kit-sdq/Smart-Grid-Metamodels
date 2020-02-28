<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
    xmlns:cosem="cosem"
    xmlns:cim="http://iec.ch/TC57/2007/CIM-schema-cim12#"
    xsi:schemaLocation="cosem COSEM.ecore"
    version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <xsl:for-each select="rdf:RDF/cim:ConformLoad">
            <PhysicalDevice>
                <xsl:attribute name="ID">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
                <AutoConnect>
                    <xsl:attribute name="Connection">
                        <xsl:text>true</xsl:text>
                    </xsl:attribute>
                </AutoConnect>
                <ElectricityValues>
                    <xsl:attribute name="ActivePowerpL1">
                        <xsl:text>45</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerpall">
                        <xsl:text>45</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerpL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>  
                    <xsl:attribute name="ActivePowerpL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowermL1">
                        <xsl:text>230</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowermL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowermL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowermall">
                        <xsl:text>230</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerpL1">
                        <xsl:text>10</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerpL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerpL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerpall">
                        <xsl:text>10</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowermL1">
                        <xsl:text>32</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowermL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowermL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowermall">
                        <xsl:text>32</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIL1">
                        <xsl:text>22</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIall">
                        <xsl:text>22</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIL1">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIall">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIIL1">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIIL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIIL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIIall">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIVL1">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIVL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIVL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIVall">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowerpL1">
                        <xsl:text>68</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowerpL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowerpL3">
                        <xsl:text></xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowerpAll">
                        <xsl:text>68</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowermL1">
                        <xsl:text>300</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowermL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowermL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowermAll">
                        <xsl:text>300</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="CurrentL1">
                        <xsl:text>382</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="CurrentL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="CurrentL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="CurrentAll">
                        <xsl:text>382</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="VoltageL1">
                        <xsl:text>40</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="VoltageL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="VoltageL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="VoltageAll">
                        <xsl:text>40</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="PowerFactorL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="PowerFactorL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="PowerFactorL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="PowerFactorAll">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="SupplyFrequencyL1">
                        <xsl:text>50</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="SupplyFrequencyL2">
                        <xsl:text>50</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="SupplyFrequencyL3">
                        <xsl:text>50</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="SupplyFrequencyAll">
                        <xsl:text>50</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsPL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsPL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsPL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsPAll">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsML1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsML2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsML3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsMAll">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIall">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIall">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIIL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIIL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIIL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIIall">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIVL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIVL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIVL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIVall">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="Angles">
                        <xsl:text>90</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="Pulses">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="Ampere_squaredHours">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="Volt_squaredHours">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="NeutralCurrent">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="NeutralVoltage">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                </ElectricityValues>
            </PhysicalDevice>
        </xsl:for-each>
        <xsl:for-each select="rdf:RDF/cim:NonConformLoad">
            <PhysicalDevice>
                <xsl:attribute name="ID">
                    <xsl:value-of select="concat(@rdf:ID,'SmartMeter')"/>
                </xsl:attribute>
                <AutoConnect>
                    <xsl:attribute name="Connection">
                        <xsl:text>true</xsl:text>
                    </xsl:attribute>
                </AutoConnect>
                <ElectricityValues>
                    <xsl:attribute name="ActivePowerpL1">
                        <xsl:text>45</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerpall">
                        <xsl:text>45</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerpL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>  
                    <xsl:attribute name="ActivePowerpL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowermL1">
                        <xsl:text>230</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowermL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowermL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowermall">
                        <xsl:text>230</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerpL1">
                        <xsl:text>10</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerpL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerpL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerpall">
                        <xsl:text>10</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowermL1">
                        <xsl:text>32</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowermL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowermL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowermall">
                        <xsl:text>32</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIL1">
                        <xsl:text>22</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIall">
                        <xsl:text>22</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIL1">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIall">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIIL1">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIIL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIIL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIIIall">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIVL1">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIVL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIVL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ReactivePowerQIVall">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowerpL1">
                        <xsl:text>68</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowerpL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowerpL3">
                        <xsl:text></xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowerpAll">
                        <xsl:text>68</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowermL1">
                        <xsl:text>300</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowermL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowermL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ApparentPowermAll">
                        <xsl:text>300</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="CurrentL1">
                        <xsl:text>382</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="CurrentL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="CurrentL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="CurrentAll">
                        <xsl:text>382</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="VoltageL1">
                        <xsl:text>40</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="VoltageL2">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="VoltageL3">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="VoltageAll">
                        <xsl:text>40</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="PowerFactorL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="PowerFactorL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="PowerFactorL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="PowerFactorAll">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="SupplyFrequencyL1">
                        <xsl:text>50</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="SupplyFrequencyL2">
                        <xsl:text>50</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="SupplyFrequencyL3">
                        <xsl:text>50</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="SupplyFrequencyAll">
                        <xsl:text>50</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsPL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsPL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsPL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsPAll">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsML1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsML2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsML3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerAbsMAll">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIall">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIall">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIIL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIIL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIIL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIIIall">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIVL1">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIVL2">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIVL3">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="ActivePowerQIVall">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="Angles">
                        <xsl:text>90</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="Pulses">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="Ampere_squaredHours">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="Volt_squaredHours">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="NeutralCurrent">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="NeutralVoltage">
                        <xsl:text>1.0</xsl:text>
                    </xsl:attribute>
                </ElectricityValues>
            </PhysicalDevice>
        </xsl:for-each>        
    </xsl:template>
</xsl:stylesheet>

