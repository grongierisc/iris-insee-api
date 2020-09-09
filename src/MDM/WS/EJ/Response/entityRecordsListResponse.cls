Class MDM.WS.EJ.Response.entityRecordsListResponse Extends Ens.Response [ ProcedureBlock ]
{

Property status As %String;

Property statusText As %String;

Property requestGUID As %String;

Property ts As %TimeStamp;

Property payloadList As list Of MDM.WS.EJ.tns.RecordSummary;

Storage Default
{
<Data name="entityRecordsListResponseDefaultData">
<Subscript>"entityRecordsListResponse"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>statusText</Value>
</Value>
<Value name="3">
<Value>requestGUID</Value>
</Value>
<Value name="4">
<Value>ts</Value>
</Value>
<Value name="5">
<Value>payloadList</Value>
</Value>
</Data>
<DefaultData>entityRecordsListResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
