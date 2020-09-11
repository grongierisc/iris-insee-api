Class MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccLinkRequest Extends Ens.Request
{

Property systemGUID As %String [ InitialExpression = "BA6A079E-EECD-11EA-A221-0242AC110006", Required ];

Property isAsync As %Boolean [ InitialExpression = 0, Required ];

Property initSystemRecordId As %String;

Property mdmRecordId As %String;

Storage Default
{
<Data name="EsantamodelEJFinessOccGetRequestDefaultData">
<Subscript>"EsantamodelEJFinessOccGetRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>isAsync</Value>
</Value>
<Value name="3">
<Value>initSystemRecordId</Value>
</Value>
<Value name="4">
<Value>mdmRecordId</Value>
</Value>
</Data>
<DefaultData>EsantamodelEJFinessOccGetRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
