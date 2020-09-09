Class MDM.WS.EJ.Request.entityRecordsListRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "MDM.WS.EJ.Response.entityRecordsListResponse";

Property systemGUID As %String;

Property isAsync As %Boolean;

Property statusText As %String;

Property requestGUID As %String;

Property ts As %TimeStamp;

Property query As %String;

Property payloadList As list Of MDM.WS.EJ.tns.RecordSummary;

Storage Default
{
<Data name="entityRecordsListRequestDefaultData">
<Subscript>"entityRecordsListRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>isAsync</Value>
</Value>
<Value name="3">
<Value>statusText</Value>
</Value>
<Value name="4">
<Value>requestGUID</Value>
</Value>
<Value name="5">
<Value>ts</Value>
</Value>
<Value name="6">
<Value>query</Value>
</Value>
<Value name="7">
<Value>payloadList</Value>
</Value>
</Data>
<DefaultData>entityRecordsListRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
