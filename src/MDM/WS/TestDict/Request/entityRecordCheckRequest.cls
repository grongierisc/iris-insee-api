Class MDM.WS.TestDict.Request.entityRecordCheckRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "MDM.WS.TestDict.Response.entityRecordCheckResponse";

Property systemGUID As %String;

Property payload As MDM.WS.TestDict.tns.testDict;

Property payloadList As list Of MDM.WS.TestDict.tns.DuplicateSummary;

Storage Default
{
<Data name="entityRecordCheckRequestDefaultData">
<Subscript>"entityRecordCheckRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>payload</Value>
</Value>
<Value name="3">
<Value>payloadList</Value>
</Value>
</Data>
<DefaultData>entityRecordCheckRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
