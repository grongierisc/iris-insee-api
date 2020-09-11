/// RECORDMAP: Generated from RecordMap 'MDM.EJFINESS.RM.CSV'
/// on 2020-09-11 at 15:57:24.099 [2020-09-11 15:57:24.099 UTC]
/// by user SuperUser
Class MDM.EJFINESS.RM.CSV.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property NuméroFINESSEJ As %VarString;

Property Raisonsociale As %VarString;

Property Raisonsocialelongue As %VarString;

Property Complémentraisonsociale As %VarString;

Property Codestatutjuridique As %VarString;

Property Libelléstatutjuridique As %VarString;

Property Libellécourtstatutjuridique As %VarString;

Property CodecatégorieEtablissement As %VarString;

Property LibellécatégorieEtablissement As %VarString;

Property LibellécourtcatégorieEtablissement As %VarString;

Property NuméroSIREN As %VarString;

Property DatemodificationSIREN As %VarString;

Property OriginemodificationSIREN As %VarString;

Property CodeAPE As %VarString;

Property LibelléAPE As %VarString;

Property Datecréation As %VarString;

Property Datemàjstructure As %VarString;

Property Datefermeture As %VarString;

Property Typefermeture As %VarString;

Property Qualificationcréation As %VarString;

Property Complémentdestinataire As %VarString;

Property Complémentpointgéographique As %VarString;

Property Numérovoie As %VarString;

Property Indicerépétitionvoie As %VarString;

Property Codetypedevoie As %VarString;

Property Libellétypedevoie As %VarString;

Property Libellévoie As %VarString;

Property Mentiondistribution As %VarString;

Property CodePostal As %VarString;

Property Bureaucedex As %VarString;

Property Codecommune As %VarString;

Property Libellécommune As %VarString;

Property Libellécourtcommune As %VarString;

Property Codedépartement As %VarString;

Property Libellédépartement As %VarString;

Property Codepays As %VarString;

Property Libellépays As %VarString;

Property Téléphone As %VarString;

Property Téléphone2 As %VarString;

Property Télécopie As %VarString;

Property Adressemail As %VarString;

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
<Value>%ParentBatch</Value>
</Value>
<Value name="44">
<Value>Raisonsociale</Value>
</Value>
</Data>
<DataLocation>^MDM.EJFINESS.RM.CSV.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^MDM.EJFINESS.RM.CSV.RecordD</IdLocation>
<IndexLocation>^MDM.EJFINESS.RM.CSV.RecordI</IndexLocation>
<StreamLocation>^MDM.EJFINESS.RM.CSV.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As MDM.EJFINESS.RM.CSV.Batch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

}
