Class Grongier.Insee.Definition.PeriodeUniteLegale Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property activitePrincipaleUniteLegale As %VarString;

Property caractereEmployeurUniteLegale As %VarString(VALUELIST = ",O,N,null");

Property categorieJuridiqueUniteLegale As %VarString;

Property changementActivitePrincipaleUniteLegale As %Boolean;

Property changementCaractereEmployeurUniteLegale As %Boolean;

Property changementCategorieJuridiqueUniteLegale As %Boolean;

Property changementDenominationUniteLegale As %Boolean;

Property changementDenominationUsuelleUniteLegale As %Boolean;

Property changementEconomieSocialeSolidaireUniteLegale As %Boolean;

Property changementEtatAdministratifUniteLegale As %Boolean;

Property changementNicSiegeUniteLegale As %Boolean;

Property changementNomUniteLegale As %Boolean;

Property changementNomUsageUniteLegale As %Boolean;

Property dateDebut As %VarString;

Property dateFin As %VarString;

Property denominationUniteLegale As %VarString;

Property denominationUsuelle1UniteLegale As %VarString;

Property denominationUsuelle2UniteLegale As %VarString;

Property denominationUsuelle3UniteLegale As %VarString;

Property economieSocialeSolidaireUniteLegale As %VarString;

Property etatAdministratifUniteLegale As %VarString(VALUELIST = ",A,C");

Property nicSiegeUniteLegale As %VarString;

Property nomUniteLegale As %VarString;

Property nomUsageUniteLegale As %VarString;

Property nomenclatureActivitePrincipaleUniteLegale As %VarString(VALUELIST = ",NAP,NAFRev1,NAFRev2,NAF1993");

Storage Default
{
<Data name="PeriodeUniteLegaleDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>activitePrincipaleUniteLegale</Value>
</Value>
<Value name="3">
<Value>caractereEmployeurUniteLegale</Value>
</Value>
<Value name="4">
<Value>categorieJuridiqueUniteLegale</Value>
</Value>
<Value name="5">
<Value>changementActivitePrincipaleUniteLegale</Value>
</Value>
<Value name="6">
<Value>changementCaractereEmployeurUniteLegale</Value>
</Value>
<Value name="7">
<Value>changementCategorieJuridiqueUniteLegale</Value>
</Value>
<Value name="8">
<Value>changementDenominationUniteLegale</Value>
</Value>
<Value name="9">
<Value>changementDenominationUsuelleUniteLegale</Value>
</Value>
<Value name="10">
<Value>changementEconomieSocialeSolidaireUniteLegale</Value>
</Value>
<Value name="11">
<Value>changementEtatAdministratifUniteLegale</Value>
</Value>
<Value name="12">
<Value>changementNicSiegeUniteLegale</Value>
</Value>
<Value name="13">
<Value>changementNomUniteLegale</Value>
</Value>
<Value name="14">
<Value>changementNomUsageUniteLegale</Value>
</Value>
<Value name="15">
<Value>dateDebut</Value>
</Value>
<Value name="16">
<Value>dateFin</Value>
</Value>
<Value name="17">
<Value>denominationUniteLegale</Value>
</Value>
<Value name="18">
<Value>denominationUsuelle1UniteLegale</Value>
</Value>
<Value name="19">
<Value>denominationUsuelle2UniteLegale</Value>
</Value>
<Value name="20">
<Value>denominationUsuelle3UniteLegale</Value>
</Value>
<Value name="21">
<Value>economieSocialeSolidaireUniteLegale</Value>
</Value>
<Value name="22">
<Value>etatAdministratifUniteLegale</Value>
</Value>
<Value name="23">
<Value>nicSiegeUniteLegale</Value>
</Value>
<Value name="24">
<Value>nomUniteLegale</Value>
</Value>
<Value name="25">
<Value>nomUsageUniteLegale</Value>
</Value>
<Value name="26">
<Value>nomenclatureActivitePrincipaleUniteLegale</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.PeriodeUnitB229D</DataLocation>
<DefaultData>PeriodeUniteLegaleDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.PeriodeUnitB229D</IdLocation>
<IndexLocation>^Grongier.IF736.PeriodeUnitB229I</IndexLocation>
<StreamLocation>^Grongier.IF736.PeriodeUnitB229S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
