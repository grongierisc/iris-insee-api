Class Grongier.Insee.Definition.UniteLegaleNonDiffusible Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property dateDernierTraitementUniteLegale As %VarString;

Property siren As %VarString;

Property statutDiffusionUniteLegale As %VarString;

Storage Default
{
<Data name="UniteLegaleNonDiffusibleDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>dateDernierTraitementUniteLegale</Value>
</Value>
<Value name="3">
<Value>siren</Value>
</Value>
<Value name="4">
<Value>statutDiffusionUniteLegale</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.UniteLegale3F6CD</DataLocation>
<DefaultData>UniteLegaleNonDiffusibleDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.UniteLegale3F6CD</IdLocation>
<IndexLocation>^Grongier.IF736.UniteLegale3F6CI</IndexLocation>
<StreamLocation>^Grongier.IF736.UniteLegale3F6CS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
