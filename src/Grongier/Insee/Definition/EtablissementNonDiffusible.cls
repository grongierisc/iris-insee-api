Class Grongier.Insee.Definition.EtablissementNonDiffusible Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property dateDernierTraitementEtablissement As %VarString;

Property nic As %VarString;

Property siren As %VarString;

Property siret As %VarString;

Property statutDiffusionEtablissement As %VarString;

Storage Default
{
<Data name="EtablissementNonDiffusibleDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>dateDernierTraitementEtablissement</Value>
</Value>
<Value name="3">
<Value>nic</Value>
</Value>
<Value name="4">
<Value>siren</Value>
</Value>
<Value name="5">
<Value>siret</Value>
</Value>
<Value name="6">
<Value>statutDiffusionEtablissement</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.Etablisseme9615D</DataLocation>
<DefaultData>EtablissementNonDiffusibleDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.Etablisseme9615D</IdLocation>
<IndexLocation>^Grongier.IF736.Etablisseme9615I</IndexLocation>
<StreamLocation>^Grongier.IF736.Etablisseme9615S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
