Class MDM.WS.EJ.Response.entityRecordGetResponse Extends Ens.Response [ ProcedureBlock ]
{

Property status As %VarString;

Property statusText As %VarString;

Property requestGUID As %VarString;

Property payload As MDM.WS.EJ.tns.EJFinessOcc;

Storage Default
{
<Data name="entityRecordGetResponseDefaultData">
<Subscript>"entityRecordGetResponse"</Subscript>
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
<DefaultData>entityRecordGetResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
