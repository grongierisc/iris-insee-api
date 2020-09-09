Class MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccAddRequest Extends (Ens.Request, %JSON.Adaptor)
{

Property systemGUID As %String;

Property initSystemRecordId As %String;

Property payload As MDM.EJFINESS.REST.Msg.Payload;

Storage Default
{
<Data name="EsantamodelEJFinessOccAddRequestDefaultData">
<Subscript>"EsantamodelEJFinessOccAddRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>payload</Value>
</Value>
<Value name="3">
<Value>initSystemRecordId</Value>
</Value>
</Data>
<DefaultData>EsantamodelEJFinessOccAddRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}