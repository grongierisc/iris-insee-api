Class Grongier.Insee.Definition.ReponseUnitesLegalesNonDiffusibles Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property header As Header;

Property unitesLegalesNonDiffusibles As list Of UniteLegaleNonDiffusible;

Storage Default
{
<Data name="ReponseUnitesLegalesNonDiffusiblesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>header</Value>
</Value>
<Value name="3">
<Value>unitesLegalesNonDiffusibles</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.ReponseUnitFD71D</DataLocation>
<DefaultData>ReponseUnitesLegalesNonDiffusiblesDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.ReponseUnitFD71D</IdLocation>
<IndexLocation>^Grongier.IF736.ReponseUnitFD71I</IndexLocation>
<StreamLocation>^Grongier.IF736.ReponseUnitFD71S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
