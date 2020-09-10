Class Grongier.Insee.Definition.ReponseRefusImmatriculationRCS Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property header As Header;

Property unitesLegalesRefuseesRcs As list Of RefusImmatriculationRCS;

Storage Default
{
<Data name="ReponseRefusImmatriculationRCSDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>header</Value>
</Value>
<Value name="3">
<Value>unitesLegalesRefuseesRcs</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.ReponseRefu538ED</DataLocation>
<DefaultData>ReponseRefusImmatriculationRCSDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.ReponseRefu538ED</IdLocation>
<IndexLocation>^Grongier.IF736.ReponseRefu538EI</IndexLocation>
<StreamLocation>^Grongier.IF736.ReponseRefu538ES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
