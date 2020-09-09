Class MDM.WS.TestDict.Request.entityRecordDeleteRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "MDM.WS.TestDict.Response.entityRecordDeleteResponse";

Property systemGUID As %String;

Property initSystemRecordId As %String;

Property statusText As %String;

Property requestGUID As %String;

Property mdmRecordId As %String;

Storage Default
{
<Data name="entityRecordDeleteRequestDefaultData">
<Subscript>"entityRecordDeleteRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>initSystemRecordId</Value>
</Value>
<Value name="3">
<Value>statusText</Value>
</Value>
<Value name="4">
<Value>requestGUID</Value>
</Value>
<Value name="5">
<Value>mdmRecordId</Value>
</Value>
</Data>
<DefaultData>entityRecordDeleteRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
