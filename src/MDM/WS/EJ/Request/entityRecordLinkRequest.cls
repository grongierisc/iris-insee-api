Class MDM.WS.EJ.Request.entityRecordLinkRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "MDM.WS.EJ.Response.entityRecordLinkResponse";

Property systemGUID As %String;

Property initSystemRecordId As %String;

Property mdmRecordId As %String;

Property isAsync As %Boolean;

Property statusText As %String;

Storage Default
{
<Data name="entityRecordLinkRequestDefaultData">
<Subscript>"entityRecordLinkRequest"</Subscript>
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
</Data>
<DefaultData>entityRecordLinkRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
