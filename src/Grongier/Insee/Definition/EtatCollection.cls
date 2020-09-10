Class Grongier.Insee.Definition.EtatCollection Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property Collection As %VarString;

Property etatCollection As %VarString(VALUELIST = ",UP,DOWN");

Storage Default
{
<Data name="EtatCollectionDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Collection</Value>
</Value>
<Value name="3">
<Value>etatCollection</Value>
</Value>
</Data>
<DataLocation>^Grongier.InF736.EtatCollectionD</DataLocation>
<DefaultData>EtatCollectionDefaultData</DefaultData>
<IdLocation>^Grongier.InF736.EtatCollectionD</IdLocation>
<IndexLocation>^Grongier.InF736.EtatCollectionI</IndexLocation>
<StreamLocation>^Grongier.InF736.EtatCollectionS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
