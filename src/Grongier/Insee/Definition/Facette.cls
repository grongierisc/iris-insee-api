Class Grongier.Insee.Definition.Facette Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property apres As %Integer;

Property avant As %Integer;

Property comptages As list Of Comptage;

Property entre As %Integer;

Property facettes As list Of Facette;

Property manquants As %Integer;

Property modalites As %Integer;

Property nom As %VarString;

Property total As %Integer;

Storage Default
{
<Data name="FacetteDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>apres</Value>
</Value>
<Value name="3">
<Value>avant</Value>
</Value>
<Value name="4">
<Value>comptages</Value>
</Value>
<Value name="5">
<Value>entre</Value>
</Value>
<Value name="6">
<Value>facettes</Value>
</Value>
<Value name="7">
<Value>manquants</Value>
</Value>
<Value name="8">
<Value>modalites</Value>
</Value>
<Value name="9">
<Value>nom</Value>
</Value>
<Value name="10">
<Value>total</Value>
</Value>
</Data>
<DataLocation>^Grongier.Insee.DefF736.FacetteD</DataLocation>
<DefaultData>FacetteDefaultData</DefaultData>
<IdLocation>^Grongier.Insee.DefF736.FacetteD</IdLocation>
<IndexLocation>^Grongier.Insee.DefF736.FacetteI</IndexLocation>
<StreamLocation>^Grongier.Insee.DefF736.FacetteS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
