Class Grongier.Insee.Definition.DatesMiseAJourDonnees Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property collection As %VarString(VALUELIST = ",Unités Légales,Établissements");

Property dateDernierTraitementDeMasse As %VarString;

Property dateDernierTraitementMaximum As %VarString;

Property dateDerniereMiseADisposition As %VarString;

Storage Default
{
<Data name="DatesMiseAJourDonneesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>collection</Value>
</Value>
<Value name="3">
<Value>dateDernierTraitementDeMasse</Value>
</Value>
<Value name="4">
<Value>dateDernierTraitementMaximum</Value>
</Value>
<Value name="5">
<Value>dateDerniereMiseADisposition</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.DatesMiseAJB389D</DataLocation>
<DefaultData>DatesMiseAJourDonneesDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.DatesMiseAJB389D</IdLocation>
<IndexLocation>^Grongier.IF736.DatesMiseAJB389I</IndexLocation>
<StreamLocation>^Grongier.IF736.DatesMiseAJB389S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
