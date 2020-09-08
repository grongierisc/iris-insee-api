/// RECORDMAP: Modified during compilation of RecordMap 'MDM.EJFINESS.Record'
/// on 2020-09-08 at 17:05:44.416 [2020-09-08 17:05:44.416 UTC]
/// by user SuperUser
Class MDM.EJFINESS.Batch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "MDM_EJFINESS_Batch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader;

Parameter HeaderTerm;

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As MDM.EJFINESS.Record.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "MDM_EJFINESS_Batch";

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
<DataLocation>^MDM.EJFINESS.BatchD</DataLocation>
<DefaultData>BatchDefaultData</DefaultData>
<IdLocation>^MDM.EJFINESS.BatchD</IdLocation>
<IndexLocation>^MDM.EJFINESS.BatchI</IndexLocation>
<StreamLocation>^MDM.EJFINESS.BatchS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
