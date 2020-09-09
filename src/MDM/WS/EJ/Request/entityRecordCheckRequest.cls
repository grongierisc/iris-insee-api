Class MDM.WS.EJ.Request.entityRecordCheckRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "MDM.WS.EJ.Response.entityRecordCheckResponse";

Property systemGUID As %String;

Property payload As MDM.WS.EJ.tns.EJFinessOcc;

Property statusText As %String;

Property hasDuplicates As %String;

Property payloadList As list Of MDM.WS.EJ.tns.DuplicateSummary;

Storage Default
{
<Data name="entityRecordCheckRequestDefaultData">
<Subscript>"entityRecordCheckRequest"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>payload</Value>
</Value>
<Value name="3">
<Value>statusText</Value>
</Value>
<Value name="4">
<Value>hasDuplicates</Value>
</Value>
<Value name="5">
<Value>payloadList</Value>
</Value>
</Data>
<DefaultData>entityRecordCheckRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
