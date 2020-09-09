/// RECORDMAP: Modified during compilation of RecordMap 'MDM.EJFINESS.RM.CSV'
/// on 2020-09-09 at 14:18:26.830 [2020-09-09 14:18:26.830 UTC]
/// by user SuperUser
Class MDM.EJFINESS.RM.CSV.Batch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "MDM_EJFINESS_RM_CSV_Batch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader;

Parameter HeaderTerm;

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
