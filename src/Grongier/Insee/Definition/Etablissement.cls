Class Grongier.Insee.Definition.Etablissement Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property activitePrincipaleRegistreMetiersEtablissement As %VarString;

Property adresse2Etablissement As AdresseComplementaire;

Property adresseEtablissement As Adresse;

Property anneeEffectifsEtablissement As %VarString;

Property dateCreationEtablissement As %VarString;

Property dateDernierTraitementEtablissement As %VarString;

Property etablissementSiege As %Boolean;

Property nic As %VarString;

Property nombrePeriodesEtablissement As %Integer;

Property periodesEtablissement As list Of PeriodeEtablissement;

Property score As %Float;

Property siren As %VarString;

Property siret As %VarString;

Property statutDiffusionEtablissement As %VarString;

Property trancheEffectifsEtablissement As %VarString;

Property uniteLegale As UniteLegaleEtablissement;

Storage Default
{
<Data name="EtablissementDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>activitePrincipaleRegistreMetiersEtablissement</Value>
</Value>
<Value name="3">
<Value>adresse2Etablissement</Value>
</Value>
<Value name="4">
<Value>adresseEtablissement</Value>
</Value>
<Value name="5">
<Value>anneeEffectifsEtablissement</Value>
</Value>
<Value name="6">
<Value>dateCreationEtablissement</Value>
</Value>
<Value name="7">
<Value>dateDernierTraitementEtablissement</Value>
</Value>
<Value name="8">
<Value>etablissementSiege</Value>
</Value>
<Value name="9">
<Value>nic</Value>
</Value>
<Value name="10">
<Value>nombrePeriodesEtablissement</Value>
</Value>
<Value name="11">
<Value>periodesEtablissement</Value>
</Value>
<Value name="12">
<Value>score</Value>
</Value>
<Value name="13">
<Value>siren</Value>
</Value>
<Value name="14">
<Value>siret</Value>
</Value>
<Value name="15">
<Value>statutDiffusionEtablissement</Value>
</Value>
<Value name="16">
<Value>trancheEffectifsEtablissement</Value>
</Value>
<Value name="17">
<Value>uniteLegale</Value>
</Value>
</Data>
<DataLocation>^Grongier.InsF736.EtablissementD</DataLocation>
<DefaultData>EtablissementDefaultData</DefaultData>
<IdLocation>^Grongier.InsF736.EtablissementD</IdLocation>
<IndexLocation>^Grongier.InsF736.EtablissementI</IndexLocation>
<StreamLocation>^Grongier.InsF736.EtablissementS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
