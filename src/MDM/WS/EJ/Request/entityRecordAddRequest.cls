Class MDM.WS.EJ.Request.entityRecordAddRequest Extends Ens.Request [ ProcedureBlock ]
{

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter RESPONSECLASSNAME = "MDM.WS.EJ.Response.entityRecordAddResponse";

Property systemGUID As %String;

Property initSystemRecordId As %String;

Property payload As MDM.WS.EJ.tns.EJFinessOcc;

Property statusText As %String;

Property requestGUID As %String;

Property mdmRecordId As %String;

Storage Default
{
<Data name="entityRecordAddRequestDefaultData">
<Subscript>"entityRecordAddRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>initSystemRecordId</Value>
</Value>
<Value name="3">
<Value>payload</Value>
</Value>
<Value name="4">
<Value>statusText</Value>
</Value>
<Value name="5">
<Value>requestGUID</Value>
</Value>
<Value name="6">
<Value>mdmRecordId</Value>
</Value>
</Data>
<DefaultData>entityRecordAddRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
