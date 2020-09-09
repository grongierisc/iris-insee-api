Class MDM.WS.TestDict.Response.entityRecordCheckResponse Extends Ens.Response [ ProcedureBlock ]
{

Property hasDuplicates As %String;

Property payloadList As list Of MDM.WS.TestDict.tns.DuplicateSummary;

Storage Default
{
<Data name="entityRecordCheckResponseDefaultData">
<Subscript>"entityRecordCheckResponse"</Subscript>
<Value name="1">
<Value>hasDuplicates</Value>
</Value>
<Value name="2">
<Value>payloadList</Value>
</Value>
</Data>
<DefaultData>entityRecordCheckResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
