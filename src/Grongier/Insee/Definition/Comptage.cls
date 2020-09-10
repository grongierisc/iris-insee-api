Class Grongier.Insee.Definition.Comptage Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property facettes As list Of Facette;

Property nombre As %Integer;

Property valeur As %VarString;

Storage Default
{
<Data name="ComptageDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>facettes</Value>
</Value>
<Value name="3">
<Value>nombre</Value>
</Value>
<Value name="4">
<Value>valeur</Value>
</Value>
</Data>
<DataLocation>^Grongier.Insee.DeF736.ComptageD</DataLocation>
<DefaultData>ComptageDefaultData</DefaultData>
<IdLocation>^Grongier.Insee.DeF736.ComptageD</IdLocation>
<IndexLocation>^Grongier.Insee.DeF736.ComptageI</IndexLocation>
<StreamLocation>^Grongier.Insee.DeF736.ComptageS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
