Class MDM.WS.EJ.Response.entityRecordCheckResponse Extends Ens.Response [ ProcedureBlock ]
{

Property status As %String;

Property statusText As %String;

Property hasDuplicates As %String;

Property payloadList As list Of MDM.WS.EJ.tns.DuplicateSummary;

Storage Default
{
<Data name="entityRecordCheckResponseDefaultData">
<Subscript>"entityRecordCheckResponse"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>statusText</Value>
</Value>
<Value name="3">
<Value>hasDuplicates</Value>
</Value>
<Value name="4">
<Value>payloadList</Value>
</Value>
</Data>
<DefaultData>entityRecordCheckResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
