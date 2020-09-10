Class Grongier.Insee.Definition.Header Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property curseur As %VarString;

Property curseurSuivant As %VarString;

Property debut As %Integer;

Property message As %VarString;

Property nombre As %Integer;

Property statut As %Integer;

Property total As %Integer;

Storage Default
{
<Data name="HeaderDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>curseur</Value>
</Value>
<Value name="3">
<Value>curseurSuivant</Value>
</Value>
<Value name="4">
<Value>debut</Value>
</Value>
<Value name="5">
<Value>message</Value>
</Value>
<Value name="6">
<Value>nombre</Value>
</Value>
<Value name="7">
<Value>statut</Value>
</Value>
<Value name="8">
<Value>total</Value>
</Value>
</Data>
<DataLocation>^Grongier.Insee.DefiF736.HeaderD</DataLocation>
<DefaultData>HeaderDefaultData</DefaultData>
<IdLocation>^Grongier.Insee.DefiF736.HeaderD</IdLocation>
<IndexLocation>^Grongier.Insee.DefiF736.HeaderI</IndexLocation>
<StreamLocation>^Grongier.Insee.DefiF736.HeaderS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
