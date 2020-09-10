Class MDM.EJFINESS.REST.Definition.esantamodelStatutJuridique Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Parameter JSONIGNOREINVALIDFIELD = 1;

Property code As %VarString;

Property isDeleted As %Boolean;

Property ts As %String;

Property id As %Integer;

Property name As %VarString;

Property shortName As %VarString;

Storage Default
{
<Data name="esantamodelStatutJuridiqueDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>code</Value>
</Value>
<Value name="3">
<Value>isDeleted</Value>
</Value>
<Value name="4">
<Value>ts</Value>
</Value>
<Value name="5">
<Value>id</Value>
</Value>
<Value name="6">
<Value>name</Value>
</Value>
<Value name="7">
<Value>shortName</Value>
</Value>
</Data>
<DataLocation>^MDM.EJFINEBD14.esantamodelD56BD</DataLocation>
<DefaultData>esantamodelStatutJuridiqueDefaultData</DefaultData>
<IdLocation>^MDM.EJFINEBD14.esantamodelD56BD</IdLocation>
<IndexLocation>^MDM.EJFINEBD14.esantamodelD56BI</IndexLocation>
<StreamLocation>^MDM.EJFINEBD14.esantamodelD56BS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
