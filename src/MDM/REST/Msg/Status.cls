Class MDM.EJFINESS.REST.Msg.Status Extends Ens.Request
{

Property systemGUID As %String;

Property requestGUID As %String;

Storage Default
{
<Data name="StatusDefaultData">
<Subscript>"Status"</Subscript>
<Value name="1">
<Value>systemGUID</Value>
</Value>
<Value name="2">
<Value>requestGUID</Value>
</Value>
</Data>
<DefaultData>StatusDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
