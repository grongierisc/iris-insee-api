Class MDM.WS.BaseService.Request.getStatusRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "MDM.WS.BaseService.Response.getStatusResponse";

Property systemGUID As %String;

Property requestGUID As %String;

Property statusText As %String;

Property payload As %XML.String;

Storage Default
{
<Data name="getStatusRequestDefaultData">
<Subscript>"getStatusRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>requestGUID</Value>
</Value>
<Value name="3">
<Value>statusText</Value>
</Value>
<Value name="4">
<Value>payload</Value>
</Value>
</Data>
<DefaultData>getStatusRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
