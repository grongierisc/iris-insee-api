Class Grongier.Insee.Definition.UniteLegaleEtablissement Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property activitePrincipaleUniteLegale As %VarString;

Property anneeCategorieEntreprise As %VarString;

Property anneeEffectifsUniteLegale As %VarString;

Property caractereEmployeurUniteLegale As %VarString(VALUELIST = ",O,N,null");

Property categorieEntreprise As %VarString(VALUELIST = ",PME,ETI,GE,null");

Property categorieJuridiqueUniteLegale As %VarString;

Property dateCreationUniteLegale As %VarString;

Property dateDernierTraitementUniteLegale As %VarString;

Property denominationUniteLegale As %VarString;

Property denominationUsuelle1UniteLegale As %VarString;

Property denominationUsuelle2UniteLegale As %VarString;

Property denominationUsuelle3UniteLegale As %VarString;

Property economieSocialeSolidaireUniteLegale As %VarString;

Property etatAdministratifUniteLegale As %VarString(VALUELIST = ",A,C");

Property identifiantAssociationUniteLegale As %VarString;

Property nicSiegeUniteLegale As %VarString;

Property nomUniteLegale As %VarString;

Property nomUsageUniteLegale As %VarString;

Property nombrePeriodesUniteLegale As %Integer;

Property nomenclatureActivitePrincipaleUniteLegale As %VarString(VALUELIST = ",NAP,NAFRev1,NAFRev2,NAF1993");

Property prenom1UniteLegale As %VarString;

Property prenom2UniteLegale As %VarString;

Property prenom3UniteLegale As %VarString;

Property prenom4UniteLegale As %VarString;

Property prenomUsuelUniteLegale As %VarString;

Property pseudonymeUniteLegale As %VarString;

Property sexeUniteLegale As %VarString(VALUELIST = ",M,F,null");

Property sigleUniteLegale As %VarString;

Property statutDiffusionUniteLegale As %VarString;

Property trancheEffectifsUniteLegale As %VarString;

Property unitePurgeeUniteLegale As %Boolean;

Storage Default
{
<Data name="UniteLegaleEtablissementDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>activitePrincipaleUniteLegale</Value>
</Value>
<Value name="3">
<Value>anneeCategorieEntreprise</Value>
</Value>
<Value name="4">
<Value>anneeEffectifsUniteLegale</Value>
</Value>
<Value name="5">
<Value>caractereEmployeurUniteLegale</Value>
</Value>
<Value name="6">
<Value>categorieEntreprise</Value>
</Value>
<Value name="7">
<Value>categorieJuridiqueUniteLegale</Value>
</Value>
<Value name="8">
<Value>dateCreationUniteLegale</Value>
</Value>
<Value name="9">
<Value>dateDernierTraitementUniteLegale</Value>
</Value>
<Value name="10">
<Value>denominationUniteLegale</Value>
</Value>
<Value name="11">
<Value>denominationUsuelle1UniteLegale</Value>
</Value>
<Value name="12">
<Value>denominationUsuelle2UniteLegale</Value>
</Value>
<Value name="13">
<Value>denominationUsuelle3UniteLegale</Value>
</Value>
<Value name="14">
<Value>economieSocialeSolidaireUniteLegale</Value>
</Value>
<Value name="15">
<Value>etatAdministratifUniteLegale</Value>
</Value>
<Value name="16">
<Value>identifiantAssociationUniteLegale</Value>
</Value>
<Value name="17">
<Value>nicSiegeUniteLegale</Value>
</Value>
<Value name="18">
<Value>nomUniteLegale</Value>
</Value>
<Value name="19">
<Value>nomUsageUniteLegale</Value>
</Value>
<Value name="20">
<Value>nombrePeriodesUniteLegale</Value>
</Value>
<Value name="21">
<Value>nomenclatureActivitePrincipaleUniteLegale</Value>
</Value>
<Value name="22">
<Value>prenom1UniteLegale</Value>
</Value>
<Value name="23">
<Value>prenom2UniteLegale</Value>
</Value>
<Value name="24">
<Value>prenom3UniteLegale</Value>
</Value>
<Value name="25">
<Value>prenom4UniteLegale</Value>
</Value>
<Value name="26">
<Value>prenomUsuelUniteLegale</Value>
</Value>
<Value name="27">
<Value>pseudonymeUniteLegale</Value>
</Value>
<Value name="28">
<Value>sexeUniteLegale</Value>
</Value>
<Value name="29">
<Value>sigleUniteLegale</Value>
</Value>
<Value name="30">
<Value>statutDiffusionUniteLegale</Value>
</Value>
<Value name="31">
<Value>trancheEffectifsUniteLegale</Value>
</Value>
<Value name="32">
<Value>unitePurgeeUniteLegale</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.UniteLegale1880D</DataLocation>
<DefaultData>UniteLegaleEtablissementDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.UniteLegale1880D</IdLocation>
<IndexLocation>^Grongier.IF736.UniteLegale1880I</IndexLocation>
<StreamLocation>^Grongier.IF736.UniteLegale1880S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
