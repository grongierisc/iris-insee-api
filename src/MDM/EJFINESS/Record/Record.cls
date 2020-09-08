/// RECORDMAP: Generated from RecordMap 'MDM.EJFINESS.Record'
/// on 2020-09-08 at 17:05:44.337 [2020-09-08 17:05:44.337 UTC]
/// by user SuperUser
Class MDM.EJFINESS.Record.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property NuméroFINESSEJ As %String [ SqlColumnNumber = 2 ];

Property Raisonsociale As %String [ SqlColumnNumber = 3 ];

Property Raisonsocialelongue As %String [ SqlColumnNumber = 4 ];

Property Complémentraisonsociale As %String [ SqlColumnNumber = 5 ];

Property Codestatutjuridique As %String [ SqlColumnNumber = 6 ];

Property Libelléstatutjuridique As %String [ SqlColumnNumber = 7 ];

Property Libellécourtstatutjuridique As %String [ SqlColumnNumber = 8 ];

Property CodecatégorieEtablissement As %String [ SqlColumnNumber = 9 ];

Property LibellécatégorieEtablissement As %String [ SqlColumnNumber = 10 ];

Property LibellécourtcatégorieEtablissement As %String [ SqlColumnNumber = 11 ];

Property NuméroSIREN As %String [ SqlColumnNumber = 12 ];

Property DatemodificationSIREN As %String [ SqlColumnNumber = 13 ];

Property OriginemodificationSIREN As %String [ SqlColumnNumber = 14 ];

Property CodeAPE As %String [ SqlColumnNumber = 15 ];

Property LibelléAPE As %String [ SqlColumnNumber = 16 ];

Property Datecréation As %String [ SqlColumnNumber = 17 ];

Property Datemàjstructure As %String [ SqlColumnNumber = 18 ];

Property Datefermeture As %String [ SqlColumnNumber = 19 ];

Property Typefermeture As %String [ SqlColumnNumber = 20 ];

Property Qualificationcréation As %String [ SqlColumnNumber = 21 ];

Property Complémentdestinataire As %String [ SqlColumnNumber = 22 ];

Property Complémentpointgéographique As %String [ SqlColumnNumber = 23 ];

Property Numérovoie As %String [ SqlColumnNumber = 24 ];

Property Indicerépétitionvoie As %String [ SqlColumnNumber = 25 ];

Property Codetypedevoie As %String [ SqlColumnNumber = 26 ];

Property Libellétypedevoie As %String [ SqlColumnNumber = 27 ];

Property Libellévoie As %String [ SqlColumnNumber = 28 ];

Property Mentiondistribution As %String [ SqlColumnNumber = 29 ];

Property CodePostal As %String [ SqlColumnNumber = 30 ];

Property Bureaucedex As %String [ SqlColumnNumber = 31 ];

Property Codecommune As %String [ SqlColumnNumber = 32 ];

Property Libellécommune As %String [ SqlColumnNumber = 33 ];

Property Libellécourtcommune As %String [ SqlColumnNumber = 34 ];

Property Codedépartement As %String [ SqlColumnNumber = 35 ];

Property Libellédépartement As %String [ SqlColumnNumber = 36 ];

Property Codepays As %String [ SqlColumnNumber = 37 ];

Property Libellépays As %String [ SqlColumnNumber = 38 ];

Property Téléphone As %String [ SqlColumnNumber = 39 ];

Property Téléphone2 As %String [ SqlColumnNumber = 40 ];

Property Télécopie As %String [ SqlColumnNumber = 41 ];

Property Adressemail As %String [ SqlColumnNumber = 42 ];

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As MDM.EJFINESS.Batch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>NuméroFINESSEJ</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>Raisonsocialelongue</Value>
</Value>
<Value name="5">
<Value>Complémentraisonsociale</Value>
</Value>
<Value name="6">
<Value>Codestatutjuridique</Value>
</Value>
<Value name="7">
<Value>Libelléstatutjuridique</Value>
</Value>
<Value name="8">
<Value>Libellécourtstatutjuridique</Value>
</Value>
<Value name="9">
<Value>CodecatégorieEtablissement</Value>
</Value>
<Value name="10">
<Value>LibellécatégorieEtablissement</Value>
</Value>
<Value name="11">
<Value>LibellécourtcatégorieEtablissement</Value>
</Value>
<Value name="12">
<Value>NuméroSIREN</Value>
</Value>
<Value name="13">
<Value>DatemodificationSIREN</Value>
</Value>
<Value name="14">
<Value>OriginemodificationSIREN</Value>
</Value>
<Value name="15">
<Value>CodeAPE</Value>
</Value>
<Value name="16">
<Value>LibelléAPE</Value>
</Value>
<Value name="17">
<Value>Datecréation</Value>
</Value>
<Value name="18">
<Value>Datemàjstructure</Value>
</Value>
<Value name="19">
<Value>Datefermeture</Value>
</Value>
<Value name="20">
<Value>Typefermeture</Value>
</Value>
<Value name="21">
<Value>Qualificationcréation</Value>
</Value>
<Value name="22">
<Value>Complémentdestinataire</Value>
</Value>
<Value name="23">
<Value>Complémentpointgéographique</Value>
</Value>
<Value name="24">
<Value>Numérovoie</Value>
</Value>
<Value name="25">
<Value>Indicerépétitionvoie</Value>
</Value>
<Value name="26">
<Value>Codetypedevoie</Value>
</Value>
<Value name="27">
<Value>Libellétypedevoie</Value>
</Value>
<Value name="28">
<Value>Libellévoie</Value>
</Value>
<Value name="29">
<Value>Mentiondistribution</Value>
</Value>
<Value name="30">
<Value>CodePostal</Value>
</Value>
<Value name="31">
<Value>Bureaucedex</Value>
</Value>
<Value name="32">
<Value>Codecommune</Value>
</Value>
<Value name="33">
<Value>Libellécommune</Value>
</Value>
<Value name="34">
<Value>Libellécourtcommune</Value>
</Value>
<Value name="35">
<Value>Codedépartement</Value>
</Value>
<Value name="36">
<Value>Libellédépartement</Value>
</Value>
<Value name="37">
<Value>Codepays</Value>
</Value>
<Value name="38">
<Value>Libellépays</Value>
</Value>
<Value name="39">
<Value>Téléphone</Value>
</Value>
<Value name="40">
<Value>Téléphone2</Value>
</Value>
<Value name="41">
<Value>Télécopie</Value>
</Value>
<Value name="42">
<Value>Adressemail</Value>
</Value>
<Value name="43">
<Value>Raisonsociale</Value>
</Value>
<Value name="44">
<Value>%ParentBatch</Value>
</Value>
</Data>
<DataLocation>^MDM.EJFINESS.Record.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^MDM.EJFINESS.Record.RecordD</IdLocation>
<IndexLocation>^MDM.EJFINESS.Record.RecordI</IndexLocation>
<StreamLocation>^MDM.EJFINESS.Record.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
