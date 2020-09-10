Class MDM.EJFINESS.REST.Definition.esantamodelAPE Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Parameter JSONIGNOREINVALIDFIELD = 1;

Property isDeleted As %Boolean;

Property ts As %String;

Property code As %VarString;

Property id As %Integer;

Property name As %VarString;

Storage Default
{
<Data name="esantamodelAPEDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>isDeleted</Value>
</Value>
<Value name="3">
<Value>ts</Value>
</Value>
<Value name="4">
<Value>code</Value>
</Value>
<Value name="5">
<Value>id</Value>
</Value>
<Value name="6">
<Value>name</Value>
</Value>
</Data>
<DataLocation>^MDM.EJFINESBD14.esantamodelAPED</DataLocation>
<DefaultData>esantamodelAPEDefaultData</DefaultData>
<IdLocation>^MDM.EJFINESBD14.esantamodelAPED</IdLocation>
<IndexLocation>^MDM.EJFINESBD14.esantamodelAPEI</IndexLocation>
<StreamLocation>^MDM.EJFINESBD14.esantamodelAPES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
