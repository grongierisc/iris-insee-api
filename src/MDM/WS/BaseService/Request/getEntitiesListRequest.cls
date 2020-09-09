Class MDM.WS.BaseService.Request.getEntitiesListRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "MDM.WS.BaseService.Response.getEntitiesListResponse";

Property systemGUID As %String;

Property isAsync As %Boolean;

Property statusText As %String;

Property requestGUID As %String;

Property payloadList As list Of MDM.WS.BaseService.tns.Entity;

Storage Default
{
<Data name="getEntitiesListRequestDefaultData">
<Subscript>"getEntitiesListRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>isAsync</Value>
</Value>
<Value name="3">
<Value>statusText</Value>
</Value>
<Value name="4">
<Value>requestGUID</Value>
</Value>
<Value name="5">
<Value>payloadList</Value>
</Value>
</Data>
<DefaultData>getEntitiesListRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
