Class MDM.WS.BaseService.Response.getEntitiesListResponse Extends Ens.Response [ ProcedureBlock ]
{

Property status As %String;

Property statusText As %String;

Property requestGUID As %String;

Property payloadList As list Of MDM.WS.BaseService.tns.Entity;

Storage Default
{
<Data name="getEntitiesListResponseDefaultData">
<Subscript>"getEntitiesListResponse"</Subscript>
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
<Value>payloadList</Value>
</Value>
</Data>
<DefaultData>getEntitiesListResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
