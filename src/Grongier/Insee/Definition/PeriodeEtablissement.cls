Class Grongier.Insee.Definition.PeriodeEtablissement Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property activitePrincipaleEtablissement As %VarString;

Property caractereEmployeurEtablissement As %VarString;

Property changementActivitePrincipaleEtablissement As %Boolean;

Property changementCaractereEmployeurEtablissement As %Boolean;

Property changementDenominationUsuelleEtablissement As %Boolean;

Property changementEnseigneEtablissement As %Boolean;

Property changementEtatAdministratifEtablissement As %Boolean;

Property dateDebut As %VarString;

Property dateFin As %VarString;

Property denominationUsuelleEtablissement As %VarString;

Property enseigne1Etablissement As %VarString;

Property enseigne2Etablissement As %VarString;

Property enseigne3Etablissement As %VarString;

Property etatAdministratifEtablissement As %VarString;

Property nomenclatureActivitePrincipaleEtablissement As %VarString(VALUELIST = ",NAP,NAFRev1,NAFRev2,NAF1993");

Storage Default
{
<Data name="PeriodeEtablissementDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>activitePrincipaleEtablissement</Value>
</Value>
<Value name="3">
<Value>caractereEmployeurEtablissement</Value>
</Value>
<Value name="4">
<Value>changementActivitePrincipaleEtablissement</Value>
</Value>
<Value name="5">
<Value>changementCaractereEmployeurEtablissement</Value>
</Value>
<Value name="6">
<Value>changementDenominationUsuelleEtablissement</Value>
</Value>
<Value name="7">
<Value>changementEnseigneEtablissement</Value>
</Value>
<Value name="8">
<Value>changementEtatAdministratifEtablissement</Value>
</Value>
<Value name="9">
<Value>dateDebut</Value>
</Value>
<Value name="10">
<Value>dateFin</Value>
</Value>
<Value name="11">
<Value>denominationUsuelleEtablissement</Value>
</Value>
<Value name="12">
<Value>enseigne1Etablissement</Value>
</Value>
<Value name="13">
<Value>enseigne2Etablissement</Value>
</Value>
<Value name="14">
<Value>enseigne3Etablissement</Value>
</Value>
<Value name="15">
<Value>etatAdministratifEtablissement</Value>
</Value>
<Value name="16">
<Value>nomenclatureActivitePrincipaleEtablissement</Value>
</Value>
</Data>
<DataLocation>^Grongier.IF736.PeriodeEtabA1B3D</DataLocation>
<DefaultData>PeriodeEtablissementDefaultData</DefaultData>
<IdLocation>^Grongier.IF736.PeriodeEtabA1B3D</IdLocation>
<IndexLocation>^Grongier.IF736.PeriodeEtabA1B3I</IndexLocation>
<StreamLocation>^Grongier.IF736.PeriodeEtabA1B3S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
