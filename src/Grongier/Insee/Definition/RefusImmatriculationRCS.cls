Class Grongier.Insee.Definition.RefusImmatriculationRCS Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property dateSuppressionUniteLegale As %VarString;

Property siren As %VarString;

Storage Default
{
<Data name="RefusImmatriculationRCSDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>dateSuppressionUniteLegale</Value>
</Value>
<Value name="3">
<Value>siren</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.RefusImmatr259ED</DataLocation>
<DefaultData>RefusImmatriculationRCSDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.RefusImmatr259ED</IdLocation>
<IndexLocation>^Grongier.IF736.RefusImmatr259EI</IndexLocation>
<StreamLocation>^Grongier.IF736.RefusImmatr259ES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
