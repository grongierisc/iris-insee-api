/// RECORDMAP: Modified during compilation of RecordMap 'MDM.EJFINESS.RM.CSV'
/// on 2020-09-11 at 15:57:24.132 [2020-09-11 15:57:24.132 UTC]
/// by user SuperUser
Class MDM.EJFINESS.RM.CSV.Batch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "MDM_EJFINESS_RM_CSV_Batch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "Numéro FINESS EJ;Raison sociale;Raison sociale longue;Complément raison sociale;Code statut juridique;Libellé statut juridique;Libellé court statut juridique;Code catégorie Etablissement;Libellé catégorie Etablissement;Libellé court catégorie Etablissement;Numéro SIREN;Date modification SIREN;Origine modification SIREN;Code APE;Libellé APE;Date création;Date màj structure;Date fermeture;Type fermeture;Qualification création;Complément destinataire;Complément point géographique;Numéro voie;Indice répétition voie;Code type de voie;Libellé type de voie;Libellé voie;Mention distribution;Code Postal;Bureau cedex;Code commune;Libellé commune;Libellé court commune;Code département;Libellé département;Code pays;Libellé pays;Téléphone;Téléphone 2;Télécopie;Adresse mail";

Parameter HeaderTerm = "\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As MDM.EJFINESS.RM.CSV.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "MDM_EJFINESS_RM_CSV_Batch";

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
<DataLocation>^MDM.EJFINESS.RM.CSV.BatchD</DataLocation>
<DefaultData>BatchDefaultData</DefaultData>
<IdLocation>^MDM.EJFINESS.RM.CSV.BatchD</IdLocation>
<IndexLocation>^MDM.EJFINESS.RM.CSV.BatchI</IndexLocation>
<StreamLocation>^MDM.EJFINESS.RM.CSV.BatchS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
