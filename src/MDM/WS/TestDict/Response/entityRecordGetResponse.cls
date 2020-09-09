Class MDM.WS.TestDict.Response.entityRecordGetResponse Extends Ens.Response [ ProcedureBlock ]
{

Property status As %String;

Property statusText As %String;

Property requestGUID As %String;

Property payload As MDM.WS.TestDict.tns.testDict;

Storage Default
{
<Data name="entityRecordGetResponseDefaultData">
<Subscript>"entityRecordGetResponse"</Subscript>
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
<Value>payload</Value>
</Value>
</Data>
<DefaultData>entityRecordGetResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
