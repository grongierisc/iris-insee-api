Class Grongier.Insee.Definition.ReponseInformations Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property datesDernieresMisesAJourDesDonnees As list Of DatesMiseAJourDonnees;

Property etatService As %VarString(VALUELIST = ",UP,DOWN");

Property etatsDesServices As list Of EtatCollection;

Property journalDesModifications As %VarString;

Property versionService As %VarString;

Storage Default
{
<Data name="ReponseInformationsDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>datesDernieresMisesAJourDesDonnees</Value>
</Value>
<Value name="3">
<Value>etatService</Value>
</Value>
<Value name="4">
<Value>etatsDesServices</Value>
</Value>
<Value name="5">
<Value>journalDesModifications</Value>
</Value>
<Value name="6">
<Value>versionService</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.ReponseInfo86E0D</DataLocation>
<DefaultData>ReponseInformationsDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.ReponseInfo86E0D</IdLocation>
<IndexLocation>^Grongier.IF736.ReponseInfo86E0I</IndexLocation>
<StreamLocation>^Grongier.IF736.ReponseInfo86E0S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
