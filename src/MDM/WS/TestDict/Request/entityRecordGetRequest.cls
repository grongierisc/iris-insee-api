Class MDM.WS.TestDict.Request.entityRecordGetRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "MDM.WS.TestDict.Response.entityRecordGetResponse";

Property systemGUID As %String;

Property initSystemRecordId As %String;

Property mdmRecordId As %String;

Property isAsync As %Boolean;

Property statusText As %String;

Property requestGUID As %String;

Property payload As MDM.WS.TestDict.tns.testDict;

Storage Default
{
<Data name="entityRecordGetRequestDefaultData">
<Subscript>"entityRecordGetRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>initSystemRecordId</Value>
</Value>
<Value name="3">
<Value>mdmRecordId</Value>
</Value>
<Value name="4">
<Value>isAsync</Value>
</Value>
<Value name="5">
<Value>statusText</Value>
</Value>
<Value name="6">
<Value>requestGUID</Value>
</Value>
<Value name="7">
<Value>payload</Value>
</Value>
</Data>
<DefaultData>entityRecordGetRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
