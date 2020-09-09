Class MDM.WS.EJ.Response.entityRecordDeleteResponse Extends Ens.Response [ ProcedureBlock ]
{

Property status As %String;

Property statusText As %String;

Property requestGUID As %String;

Property mdmRecordId As %String;

Storage Default
{
<Data name="entityRecordDeleteResponseDefaultData">
<Subscript>"entityRecordDeleteResponse"</Subscript>
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
<Value>mdmRecordId</Value>
</Value>
</Data>
<DefaultData>entityRecordDeleteResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
