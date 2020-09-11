/// RECORDMAP: Generated from RecordMap 'SRRI.PresMSG'
/// on 2020-09-11 at 15:58:39.039 [2020-09-11 15:58:39.039 UTC]
/// by user SuperUser
Class SRRI.PresMSG.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property Identifiantfichier As %String;

Property Prénom As %String;

Property Nom As %String;

Property Datedenaissance As %String;

Property sexe As %String;

Property IPPLocal As %String;

Property INSC As %String;

Property CodeFINESS As %String;

Property AdresseruecodepostalvilleToulouse As %String(MAXLEN = 250);

Property Villedenaissance As %String;

Property Codepostaldenaissance As %String;

Property Paysdenaissance As %String;

Property numérodetéléphonefixe As %String;

Property numérodetéléphoneportable As %String;

Property adressemail As %String;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Identifiantfichier</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>Nom</Value>
</Value>
<Value name="5">
<Value>Datedenaissance</Value>
</Value>
<Value name="6">
<Value>sexe</Value>
</Value>
<Value name="7">
<Value>IPPLocal</Value>
</Value>
<Value name="8">
<Value>INSC</Value>
</Value>
<Value name="9">
<Value>CodeFINESS</Value>
</Value>
<Value name="10">
<Value>AdresseruecodepostalvilleToulouse</Value>
</Value>
<Value name="11">
<Value>Villedenaissance</Value>
</Value>
<Value name="12">
<Value>Codepostaldenaissance</Value>
</Value>
<Value name="13">
<Value>Paysdenaissance</Value>
</Value>
<Value name="14">
<Value>numérodetéléphonefixe</Value>
</Value>
<Value name="15">
<Value>numérodetéléphoneportable</Value>
</Value>
<Value name="16">
<Value>adressemail</Value>
</Value>
<Value name="17">
<Value>Prénom</Value>
</Value>
<Value name="18">
<Value>%ParentBatch</Value>
</Value>
</Data>
<DataLocation>^SRRI.PresMSG.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^SRRI.PresMSG.RecordD</IdLocation>
<IndexLocation>^SRRI.PresMSG.RecordI</IndexLocation>
<StreamLocation>^SRRI.PresMSG.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As SRRI.PresMSG.Batch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

}
