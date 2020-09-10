Class Grongier.Insee.Definition.ReponseEtablissementsNonDiffusibles Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property etablissementsNonDiffusibles As list Of EtablissementNonDiffusible;

Property header As Header;

Storage Default
{
<Data name="ReponseEtablissementsNonDiffusiblesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>etablissementsNonDiffusibles</Value>
</Value>
<Value name="3">
<Value>header</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.ReponseEtab828AD</DataLocation>
<DefaultData>ReponseEtablissementsNonDiffusiblesDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.ReponseEtab828AD</IdLocation>
<IndexLocation>^Grongier.IF736.ReponseEtab828AI</IndexLocation>
<StreamLocation>^Grongier.IF736.ReponseEtab828AS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
