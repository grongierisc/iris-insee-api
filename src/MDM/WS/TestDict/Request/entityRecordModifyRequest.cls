Class MDM.WS.TestDict.Request.entityRecordModifyRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "MDM.WS.TestDict.Response.entityRecordModifyResponse";

Property systemGUID As %String;

Property initSystemRecordId As %String;

Property payload As MDM.WS.TestDict.tns.testDict;

Property statusText As %String;

Property requestGUID As %String;

Property mdmRecordId As %String;

Storage Default
{
<Data name="entityRecordModifyRequestDefaultData">
<Subscript>"entityRecordModifyRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>initSystemRecordId</Value>
</Value>
<Value name="3">
<Value>payload</Value>
</Value>
<Value name="4">
<Value>statusText</Value>
</Value>
<Value name="5">
<Value>requestGUID</Value>
</Value>
<Value name="6">
<Value>mdmRecordId</Value>
</Value>
</Data>
<DefaultData>entityRecordModifyRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
