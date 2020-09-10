Class Grongier.Insee.Definition.ReponseLienSuccession Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property header As Header;

Property liensSuccession As list Of LienSuccession;

Storage Default
{
<Data name="ReponseLienSuccessionDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>header</Value>
</Value>
<Value name="3">
<Value>liensSuccession</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.ReponseLien1680D</DataLocation>
<DefaultData>ReponseLienSuccessionDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.ReponseLien1680D</IdLocation>
<IndexLocation>^Grongier.IF736.ReponseLien1680I</IndexLocation>
<StreamLocation>^Grongier.IF736.ReponseLien1680S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
