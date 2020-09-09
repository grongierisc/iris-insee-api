Class MDM.WS.BaseService.Response.getStatusResponse Extends Ens.Response [ ProcedureBlock ]
{

Property status As %String;

Property statusText As %String;

Property payload As %XML.String;

Storage Default
{
<Data name="getStatusResponseDefaultData">
<Subscript>"getStatusResponse"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>statusText</Value>
</Value>
<Value name="3">
<Value>payload</Value>
</Value>
</Data>
<DefaultData>getStatusResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
