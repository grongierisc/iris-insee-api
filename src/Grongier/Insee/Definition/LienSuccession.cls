Class Grongier.Insee.Definition.LienSuccession Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property continuiteEconomique As %Boolean;

Property dateDernierTraitementLienSuccession As %VarString;

Property dateLienSuccession As %VarString;

Property siretEtablissementPredecesseur As %VarString;

Property siretEtablissementSuccesseur As %VarString;

Property transfertSiege As %Boolean;

Storage Default
{
<Data name="LienSuccessionDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>continuiteEconomique</Value>
</Value>
<Value name="3">
<Value>dateDernierTraitementLienSuccession</Value>
</Value>
<Value name="4">
<Value>dateLienSuccession</Value>
</Value>
<Value name="5">
<Value>siretEtablissementPredecesseur</Value>
</Value>
<Value name="6">
<Value>siretEtablissementSuccesseur</Value>
</Value>
<Value name="7">
<Value>transfertSiege</Value>
</Value>
</Data>
<DataLocation>^Grongier.InF736.LienSuccessionD</DataLocation>
<DefaultData>LienSuccessionDefaultData</DefaultData>
<IdLocation>^Grongier.InF736.LienSuccessionD</IdLocation>
<IndexLocation>^Grongier.InF736.LienSuccessionI</IndexLocation>
<StreamLocation>^Grongier.InF736.LienSuccessionS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
