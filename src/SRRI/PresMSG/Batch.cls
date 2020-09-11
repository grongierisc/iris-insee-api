/// RECORDMAP: Modified during compilation of RecordMap 'SRRI.PresMSG'
/// on 2020-09-11 at 15:58:39.050 [2020-09-11 15:58:39.050 UTC]
/// by user SuperUser
Class SRRI.PresMSG.Batch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "SRRI_PresMSG_Batch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "Identifiant fichier ; Prénom ; Nom ; Date de naissance ; sexe ; IPP Local;INS-C;Code FINESS; Adresse (rue – code postal – ville - Toulouse) ;Ville de naissance;Code postal de naissance;Pays de naissance; numéro de téléphone fixe ; numéro de téléphone portable ; adresse mail ";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As SRRI.PresMSG.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "SRRI_PresMSG_Batch";

Storage Default
{
<Data name="BatchDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>%Source</Value>
</Value>
<Value name="3">
<Value>BatchHeader</Value>
</Value>
<Value name="4">
<Value>BatchTrailer</Value>
</Value>
</Data>
<DataLocation>^SRRI.PresMSG.BatchD</DataLocation>
<DefaultData>BatchDefaultData</DefaultData>
<IdLocation>^SRRI.PresMSG.BatchD</IdLocation>
<IndexLocation>^SRRI.PresMSG.BatchI</IndexLocation>
<StreamLocation>^SRRI.PresMSG.BatchS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
