Class Grongier.Insee.Definition.UniteLegale Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property anneeCategorieEntreprise As %VarString;

Property anneeEffectifsUniteLegale As %VarString;

Property categorieEntreprise As %VarString(VALUELIST = ",PME,ETI,GE,null");

Property dateCreationUniteLegale As %VarString;

Property dateDernierTraitementUniteLegale As %VarString;

Property identifiantAssociationUniteLegale As %VarString;

Property nombrePeriodesUniteLegale As %Integer;

Property periodesUniteLegale As list Of PeriodeUniteLegale;

Property prenom1UniteLegale As %VarString;

Property prenom2UniteLegale As %VarString;

Property prenom3UniteLegale As %VarString;

Property prenom4UniteLegale As %VarString;

Property prenomUsuelUniteLegale As %VarString;

Property pseudonymeUniteLegale As %VarString;

Property score As %Float;

Property sexeUniteLegale As %VarString(VALUELIST = ",M,F,null");

Property sigleUniteLegale As %VarString;

Property siren As %VarString;

Property statutDiffusionUniteLegale As %VarString;

Property trancheEffectifsUniteLegale As %VarString;

Property unitePurgeeUniteLegale As %Boolean;

Storage Default
{
<Data name="UniteLegaleDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>anneeCategorieEntreprise</Value>
</Value>
<Value name="3">
<Value>anneeEffectifsUniteLegale</Value>
</Value>
<Value name="4">
<Value>categorieEntreprise</Value>
</Value>
<Value name="5">
<Value>dateCreationUniteLegale</Value>
</Value>
<Value name="6">
<Value>dateDernierTraitementUniteLegale</Value>
</Value>
<Value name="7">
<Value>identifiantAssociationUniteLegale</Value>
</Value>
<Value name="8">
<Value>nombrePeriodesUniteLegale</Value>
</Value>
<Value name="9">
<Value>periodesUniteLegale</Value>
</Value>
<Value name="10">
<Value>prenom1UniteLegale</Value>
</Value>
<Value name="11">
<Value>prenom2UniteLegale</Value>
</Value>
<Value name="12">
<Value>prenom3UniteLegale</Value>
</Value>
<Value name="13">
<Value>prenom4UniteLegale</Value>
</Value>
<Value name="14">
<Value>prenomUsuelUniteLegale</Value>
</Value>
<Value name="15">
<Value>pseudonymeUniteLegale</Value>
</Value>
<Value name="16">
<Value>score</Value>
</Value>
<Value name="17">
<Value>sexeUniteLegale</Value>
</Value>
<Value name="18">
<Value>sigleUniteLegale</Value>
</Value>
<Value name="19">
<Value>siren</Value>
</Value>
<Value name="20">
<Value>statutDiffusionUniteLegale</Value>
</Value>
<Value name="21">
<Value>trancheEffectifsUniteLegale</Value>
</Value>
<Value name="22">
<Value>unitePurgeeUniteLegale</Value>
</Value>
</Data>
<DataLocation>^Grongier.InseeF736.UniteLegaleD</DataLocation>
<DefaultData>UniteLegaleDefaultData</DefaultData>
<IdLocation>^Grongier.InseeF736.UniteLegaleD</IdLocation>
<IndexLocation>^Grongier.InseeF736.UniteLegaleI</IndexLocation>
<StreamLocation>^Grongier.InseeF736.UniteLegaleS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
