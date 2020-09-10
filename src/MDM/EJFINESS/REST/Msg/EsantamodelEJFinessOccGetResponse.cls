Class MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccGetResponse Extends (Ens.Response, %JSON.Adaptor)
{

Parameter JSONIGNOREINVALIDFIELD = 1;

Property status As %VarString;

Property statusText As %VarString;

Property requestGUID As %VarString;

Property payload As MDM.EJFINESS.REST.Definition.esantamodelEJFinessOcc;

Storage Default
{
<Data name="EsantamodelEJFinessOccGetResponseDefaultData">
<Subscript>"EsantamodelEJFinessOccGetResponse"</Subscript>
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
<Value>payload</Value>
</Value>
</Data>
<DefaultData>EsantamodelEJFinessOccGetResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
