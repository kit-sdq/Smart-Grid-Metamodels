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
                        <xsl:text>cimWires:ACLineSegment</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="BaseVoltage">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource, '#')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="length">
                        <xsl:value-of select="cim:Conductor.length"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="x">
                        <xsl:value-of select="cim:Conductor.x"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="r">
                        <xsl:value-of select="cim:Conductor.r"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="bch">
                        <xsl:value-of select="cim:Conductor.bch"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="gch">
                        <xsl:value-of select="cim:Conductor.gch"></xsl:value-of>
                    </xsl:attribute>
                    </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:Analog">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimMeas:Analog</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="PowerSystemResource">
                        <xsl:value-of select="substring-after(cim:Measurement.MemberOf_PSR/@rdf:resource, '#')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="measurementType">
                        <xsl:value-of select="substring-after(cim:Measurement.MeasurementType/@rdf:resource, '#')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="normalValue">
                        <xsl:value-of select="cim:Analog.normalValue"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="positiveFlowIn">
                        <xsl:value-of select="cim:Analog.positiveFlowIn"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="Terminal">
                        <xsl:value-of select="substring-after(cim:Measurement.Terminal/@rdf:resource, '#')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="Unit">
                        <xsl:value-of select="substring-after(cim:Measurement.Unit/@rdf:resource, '#')"></xsl:value-of>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:AnalogLimit">
            <IDobject>
                <xsl:attribute name="xsi:type">
                    <xsl:text>cimMeas:AnalogLimit</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="UUID">
                    <xsl:value-of select="@rdf:ID"/>
                </xsl:attribute>
                <xsl:attribute name="mRID">
                    <xsl:value-of select="@rdf:ID"/>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:value-of select="cim:IdentifiedObject.name"/>
                </xsl:attribute>
                <xsl:attribute name="value">
                    <xsl:value-of select="cim:AnalogLimit.value"/>
                </xsl:attribute>
                <xsl:attribute name="LimitSet">
                    <xsl:value-of select="substring-after(cim:AnalogLimit.LimitSet/@rdf:resource, '#')"/>
                </xsl:attribute>
            </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:AnalogLimitSet">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimMeas:AnalogLimitSet</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="Measurements">
                        <xsl:value-of select="substring-after(cim:AnalogLimitSet.Measurements/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:AnalogValue">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimMeas:AnalogValue</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="value">
                        <xsl:value-of select="cim:AnalogValue.value"/>
                    </xsl:attribute>
                    <xsl:attribute name="MeasurementValueSource">
                        <xsl:value-of select="substring-after(cim:AnalogValue.MeasurementValueSource/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="Analog">
                        <xsl:value-of select="substring-after(cim:AnalogValue.MemberOf_Measurement/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>

            <xsl:for-each select="rdf:RDF/cim:Breaker">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:Breaker</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="ratedCurrent">
                        <xsl:value-of select="cim:Breaker.ratedCurrent"/>
                    </xsl:attribute>
                    <xsl:attribute name="normalOpen">
                        <xsl:value-of select="cim:Switch.normalOpen"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="BaseVoltage">
                        <xsl:value-of select="substring-after(cim:ConductingEquipment.BaseVoltage/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:BusbarSection">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:BusbarSection</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="BaseVoltage">
                        <xsl:value-of select="substring-after(cim:ConductingEquipment.BaseVoltage/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:ConformLoad">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimLoadModel:ConformLoad</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="BaseVoltage">
                        <xsl:value-of select="substring-after(cim:ConductingEquipment.BaseVoltage/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="pfixed">
                        <xsl:value-of select="cim:EnergyConsumer.pfixed"/>
                    </xsl:attribute>
                    <xsl:attribute name="pfixedPct">
                        <xsl:value-of select="cim:EnergyConsumer.pfixedPct"/>
                    </xsl:attribute>
                    <xsl:attribute name="qfixed">
                        <xsl:value-of select="cim:EnergyConsumer.qfixed"/>
                    </xsl:attribute>
                    <xsl:attribute name="qfixedPct">
                        <xsl:value-of select="cim:EnergyConsumer.qfixedPct"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="LoadGroup">
                        <xsl:value-of select="substring-after(cim:ConformLoad.LoadGroup/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:ConformLoadGroup">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimLoadModel:ConformLoadGroup</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="SubLoadArea">
                        <xsl:value-of select="substring-after(cim:LoadGroup.SubLoadArea/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:ConformLoadSchedule">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimLoadModel:ConformLoadSchedule</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="timeStep">
                        <xsl:value-of select="cim:RegularIntervalSchedule.timeStep"/>
                    </xsl:attribute>
                    <xsl:attribute name="value1Unit">
                        <xsl:value-of select="substring-after(cim:BasicIntervalSchedule.value1Unit/@rdf:resource,'Symbol.')"/>
                    </xsl:attribute>
                    <xsl:attribute name="value2Unit">
                        <xsl:value-of select="substring-after(cim:BasicIntervalSchedule.value2Unit/@rdf:resource,'Symbol.')"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="ConformLoadGroup">
                        <xsl:value-of select="substring-after(cim:ConformLoadSchedule.ConformLoadGroup/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="DayType">
                        <xsl:value-of select="substring-after(cim:SeasonDayTypeSchedule.DayType/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="Season">
                        <xsl:value-of select="substring-after(cim:SeasonDayTypeSchedule.Season/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:ConnectivityNode">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimCore:ConnectivityNode</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="ConnectivityNodeContainer">
                        <xsl:value-of select="substring-after(cim:ConnectivityNode.MemberOf_EquipmentContainer,'#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:DayType">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimLoadModel:DayType</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:Disconnector">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:Disconnector</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="BaseVoltage">
                        <xsl:value-of select="substring-after(cim:ConductingEquipment.BaseVoltage/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="normalOpen">
                        <xsl:value-of select="cim:Switch.normalOpen"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:Discrete">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimMeas:Discrete</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="PowerSystemResource">
                        <xsl:value-of select="substring-after(cim:Measurement.MemberOf_PSR/@rdf:resource, '#')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="measurementType">
                        <xsl:value-of select="substring-after(cim:Measurement.MeasurementType/@rdf:resource, '#')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="Unit">
                        <xsl:value-of select="substring-after(cim:Measurement.Unit/@rdf:resource, '#')"></xsl:value-of>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:DiscreteValue">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimMeas:DiscreteValue</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="value">
                        <xsl:value-of select="cim:DiscreteValue.value"/>
                    </xsl:attribute>
                    <xsl:attribute name="MeasurementValueSource">
                        <xsl:value-of select="substring-after(cim:DiscreteValue.MeasurementValueSource/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="Discrete">
                        <xsl:value-of select="substring-after(cim:DiscreteValue.MemberOf_Measurement/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            
            <xsl:for-each select="rdf:RDF/cim:HydroGeneratingUnit">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimProduction:HydroGeneratingUnit</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="initialP">
                        <xsl:value-of select="cim:GeneratingUnit.initialP"/>
                    </xsl:attribute>
                    <xsl:attribute name="maxEconomicP">
                        <xsl:value-of select="cim:GeneratingUnit.maxEconomicP"/>
                    </xsl:attribute>
                    <xsl:attribute name="minEconomicP">
                        <xsl:value-of select="cim:GeneratingUnit.minEconomicP"/>
                    </xsl:attribute>
                    <xsl:attribute name="maxOperatingP">
                        <xsl:value-of select="cim:GeneratingUnit.maxOperatingP"/>
                    </xsl:attribute>
                    <xsl:attribute name="minOperatingP">
                        <xsl:value-of select="cim:GeneratingUnit.minOperatingP"/>
                    </xsl:attribute>
                    <xsl:attribute name="genControlSource">
                        <xsl:text>onAGC</xsl:text>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:Line">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:Line</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="aliasName">
                        <xsl:value-of select="cim:IdentifiedObject.aliasName"/>
                    </xsl:attribute>
                    <xsl:attribute name="Region">
                        <xsl:value-of select="substring-after(cim:Line.Region/@rdf:resource,'#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:LoadArea">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimLoadModel:LoadArea</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:MeasurementValueSource">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimMeas:MeasurementValueSource</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:NonConformLoad">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimLoadModel:NonConformLoad</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="BaseVoltage">
                        <xsl:value-of select="substring-after(cim:ConductingEquipment.BaseVoltage/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="pfixed">
                        <xsl:value-of select="cim:EnergyConsumer.pfixed"/>
                    </xsl:attribute>
                    <xsl:attribute name="pfixedPct">
                        <xsl:value-of select="cim:EnergyConsumer.pfixedPct"/>
                    </xsl:attribute>
                    <xsl:attribute name="qfixed">
                        <xsl:value-of select="cim:EnergyConsumer.qfixed"/>
                    </xsl:attribute>
                    <xsl:attribute name="qfixedPct">
                        <xsl:value-of select="cim:EnergyConsumer.qfixedPct"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="LoadGroup">
                        <xsl:value-of select="substring-after(cim:ConformLoad.LoadGroup/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:NonConformLoadGroup">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimLoadModel:NonConformLoadGroup</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="SubLoadArea">
                        <xsl:value-of select="substring-after(cim:LoadGroup.SubLoadArea/@rdf:resource,'#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:NonConformLoadSchedule">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimLoadModel:NonConformLoadSchedule</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="timeStep">
                        <xsl:value-of select="cim:RegularIntervalSchedule.timeStep"/>
                    </xsl:attribute>
                    
                    <xsl:attribute name="value1Unit">
                        <xsl:value-of select="substring-after(cim:BasicIntervalSchedule.value1Unit/@rdf:resource,'Symbol.')"/>
                    </xsl:attribute>
                    <xsl:attribute name="value2Unit">
                        <xsl:value-of select="substring-after(cim:BasicIntervalSchedule.value2Unit/@rdf:resource,'Symbol.')"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="NonConformLoadGroup">
                        <xsl:value-of select="substring-after(cim:NonConformLoadSchedule.NonConformLoadGroup/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="DayType">
                        <xsl:value-of select="substring-after(cim:SeasonDayTypeSchedule.DayType/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="Season">
                        <xsl:value-of select="substring-after(cim:SeasonDayTypeSchedule.Season/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:PowerTransformer">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:PowerTransformer</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource, '#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:RegularTimePoint">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimCore:RegularTimePoint</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="sequenceNumber">
                        <xsl:value-of select="cim:RegularTimePoint.sequenceNumber"/>
                    </xsl:attribute>
                    <xsl:attribute name="value1">
                        <xsl:value-of select="cim:RegularTimepoint.value1"/>
                    </xsl:attribute>
                    <xsl:attribute name="value2">
                        <xsl:value-of select="cim:RegularTimePoint.value2"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:RegulationSchedule">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:RegulationSchedule</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="timeStep">
                        <xsl:value-of select="cim:RegularIntervalSchedule.timeStep"/>
                    </xsl:attribute>
                    
                    <xsl:attribute name="value1Unit">
                        <xsl:value-of select="substring-after(cim:BasicIntervalSchedule.value1Unit/@rdf:resource,'Symbol.')"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:Season">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimLoadModel:Season</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="substring-after(cim:Season.name/@rdf:resource,'SeasonName.')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:ShuntCompensator">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:ShuntCompensator</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="maximumSections">
                        <xsl:value-of select="cim:ShutCompensator.maximumSections"/>
                    </xsl:attribute>
                    <xsl:attribute name="reactivePerSection">
                        <xsl:value-of select="cim:ShuntCompensator.reactivePerSection"/>
                    </xsl:attribute>
                    <xsl:attribute name="nomU">
                        <xsl:value-of select="cim:ShuntCompensator.nomU"/>
                    </xsl:attribute>
                    <xsl:attribute name="normalSections">
                        <xsl:value-of select="cim:ShuntCompensator.normalSections"/>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="BaseVoltage">
                        <xsl:value-of select="substring-after(cim:ConductingEquipment.BaseVoltage/@rdf:resource,'#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:StaticVarCompensator">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:StaticVarCompensator</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="BaseVoltage">
                        <xsl:value-of select="substring-after(cim:ConductingEquipment.BaseVoltage/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="capacitiveRating">
                        <xsl:value-of select="cim:StaticVarCompensator.capacitiveRating"/>
                    </xsl:attribute>
                    <xsl:attribute name="inductiveRating">
                        <xsl:value-of select="cim:StaticVarCompensator.inductiveRating"/>
                    </xsl:attribute>
                    <xsl:attribute name="slope">
                        <xsl:value-of select="cim:StaticVarCompensator.slope"/>
                    </xsl:attribute>
                    <xsl:attribute name="voltageSetPoint">
                        <xsl:value-of select="cim:StaticVarCompensator.voltageSetPoint"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:SubLoadArea">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimLoadModel:SubLoadArea</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="LoadArea">
                        <xsl:value-of select="substring-after(cim:SubLoadArea.LoadArea/@rdf:resource,'#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:SynchronousMachine">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:SynchronousMachine</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="maxQ">
                        <xsl:value-of select="cim:SynchronousMachine.maxQ"/>
                    </xsl:attribute>
                    <xsl:attribute name="minQ">
                        <xsl:value-of select="cim:SynchronousMachine.minQ"/>
                    </xsl:attribute>
                    <xsl:attribute name="ratedS">
                        <xsl:value-of select="cim:SynchronousMachine.ratedS"/>
                    </xsl:attribute>
                    <xsl:attribute name="operatingMode">
                        <xsl:value-of select="substring-after(cim:SynchronousMachine.operatingMode/@rdf:resource,'MachineOperatingMode.')"/>
                    </xsl:attribute>
                    <xsl:attribute name="type">
                        <xsl:value-of select="substring-after(cim:SynchronousMachine.type/@rdf:resource,'MachineType.')"/>
                    </xsl:attribute>
                    <xsl:attribute name="referencePriority">
                        <xsl:value-of select="cim:SynchronousMachine.referencePriority"/>
                    </xsl:attribute>
                    <xsl:attribute name="GeneratingUnit">
                        <xsl:value-of select="substring-after(cim:SynchronousMachine.MemberOf_GeneratingUnit/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="BaseVoltage">
                        <xsl:value-of select="substring-after(cim:ConductingEquipment.BaseVoltage/@rdf:resource,'#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:TapChanger">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:PhaseTapChanger</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="highStep">
                        <xsl:value-of select="cim:TapChanger.highStep"/>
                    </xsl:attribute>
                    <xsl:attribute name="lowStep">
                        <xsl:value-of select="cim:TapChanger.lowStep"/>
                    </xsl:attribute>
                    <xsl:attribute name="neutralU">
                        <xsl:value-of select="cim:TapChanger.neutralU"/>
                    </xsl:attribute>
                    <xsl:attribute name="neutralStep">
                        <xsl:value-of select="cim:TapChanger.neutralStep"/>
                    </xsl:attribute>
                    <xsl:attribute name="normalStep">
                        <xsl:value-of select="cim:TapChanger.normalStep"/>
                    </xsl:attribute>
                    <xsl:attribute name="stepVoltageIncrement">
                        <xsl:value-of select="cim:TapChanger.stepVoltageIncrement"/>
                    </xsl:attribute>
                    <xsl:attribute name="TransformerWinding">
                        <xsl:value-of select="substring-after(cim:TapChanger.TransformerWinding/@rdf:resource,'#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:Terminal">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimCore:Terminal</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="ConductingEquipment">
                        <xsl:value-of select="substring-after(cim:Terminal.ConductingEquipment/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="ConnectivityNode">
                        <xsl:value-of select="substring-after(cim:Terminal.ConnectivityNode/@rdf:resource,'#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:ThermalGeneratingUnit">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimProduction:ThermalGeneratingUnit</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="EquipmentContainer">
                        <xsl:value-of select="substring-after(cim:Equipment.MemberOf_EquipmentContainer/@rdf:resource, '#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="initialP">
                        <xsl:value-of select="cim:GeneratingUnit.initialP"/>
                    </xsl:attribute>
                    <xsl:attribute name="maxEconomicP">
                        <xsl:value-of select="cim:GeneratingUnit.maxEconomicP"/>
                    </xsl:attribute>
                    <xsl:attribute name="minEconomicP">
                        <xsl:value-of select="cim:GeneratingUnit.minEconomicP"/>
                    </xsl:attribute>
                    <xsl:attribute name="maxOperatingP">
                        <xsl:value-of select="cim:GeneratingUnit.maxOperatingP"/>
                    </xsl:attribute>
                    <xsl:attribute name="minOperatingP">
                        <xsl:value-of select="cim:GeneratingUnit.minOperatingP"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:TransformerWinding">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimWires:TransformerWinding</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="Location">
                        <xsl:value-of select="concat(@rdf:ID,'Loc')"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                    <xsl:attribute name="localName">
                        <xsl:value-of select="cim:IdentifiedObject.localName"/>
                    </xsl:attribute>
                    <xsl:attribute name="g">
                        <xsl:value-of select="cim:TransformerWinding.g"/>
                    </xsl:attribute>
                    <xsl:attribute name="b">
                        <xsl:value-of select="cim:TransformerWinding.b"/>
                    </xsl:attribute>
                    <xsl:attribute name="r">
                        <xsl:value-of select="cim:TransformerWinding.r"/>
                    </xsl:attribute>
                    <xsl:attribute name="x">
                        <xsl:value-of select="cim:TransformerWinding.x"/>
                    </xsl:attribute>
                    <xsl:attribute name="ratedU">
                        <xsl:value-of select="cim:TransformerWinding.ratedU"/>
                    </xsl:attribute>
                    <xsl:attribute name="ratedS">
                        <xsl:value-of select="cim:TransformerWinding.ratedS"/>
                    </xsl:attribute>
                    <xsl:attribute name="connectionType">
                        <xsl:value-of select="substring-after(cim:TransformerWinding.connectionType/@rdf:resource,'Connection.')"/>
                    </xsl:attribute>
                    <xsl:attribute name="windingType">
                        <xsl:value-of select="substring-after(cim:TransformerWinding.windingType/@rdf:resource,'WindingType.')"/>
                    </xsl:attribute>
                    <xsl:attribute name="PowerTransformer">
                        <xsl:value-of select="substring-after(cim:TransformerWinding.MemberOf_PowerTransformer/@rdf:resource,'#')"/>
                    </xsl:attribute>
                    <xsl:attribute name="BaseVoltage">
                        <xsl:value-of select="substring-after(cim:ConductingEquipment.BaseVoltage/@rdf:resource,'#')"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
            <xsl:for-each select="rdf:RDF/cim:Unit">
                <IDobject>
                    <xsl:attribute name="xsi:type">
                        <xsl:text>cimCore:Unit</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="UUID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="mRID">
                        <xsl:value-of select="@rdf:ID"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:value-of select="cim:IdentifiedObject.name"/>
                    </xsl:attribute>
                </IDobject>
            </xsl:for-each>
        </CIM>
    </xsl:template>
</xsl:stylesheet>   