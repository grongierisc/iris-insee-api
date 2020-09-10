Class MDM.EJFINESS.REST.Definition.esantamodelEJFinessOcc Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor)
{

Parameter JSONIGNOREINVALIDFIELD = 1;

Property APE As esantamodelAPE;

Property mdmId As %Integer;

Property initSystemRecordId As %String;

Property dictClassName As %String;

Property buildNum As %VarString;

Property changeDateSIREN As %VarString;

Property changeReasonSIREN As %VarString;

Property isDeleted As %Boolean;

Property codeFINESSEJ As %VarString;

Property codeSIREN As %VarString;

Property countryCode As %VarString;

Property countryName As %VarString;

Property creationType As %VarString;

Property deptCode As %VarString;

Property deptName As %VarString;

Property email As %VarString;

Property fax As %VarString;

Property geoInfo As %VarString;

Property goldenRecord As esantamodelEJFinessOcc;

Property houseNum As %VarString;

Property id As %Integer;

Property info As %VarString;

Property jurStatus As esantamodelStatutJuridique;

Property liquidateDate As %VarString;

Property liquidateType As %VarString;

Property locationCode As %VarString;

Property locationName As %VarString;

Property locationShortName As %VarString;

Property mentionDistribution As %VarString;

Property orgCategoryCode As %VarString;

Property orgCategoryName As %VarString;

Property orgCategoryShortName As %VarString;

Property orgCreateDate As %VarString;

Property orgFullName As %VarString;

Property orgName As %VarString;

Property orgNameAdditional As %VarString;

Property orgPostCode As %VarString;

Property orgUpdateDate As %VarString;

Property phon2 As %VarString;

Property phone As %VarString;

Property postalCode As %VarString;

Property streetName As %VarString;

Property streetType As %VarString;

Property streetTypeName As %VarString;

Property typologie As %VarString;

Storage Default
{
<Data name="esantamodelEJFinessOccDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>APE</Value>
</Value>
<Value name="3">
<Value>mdmId</Value>
</Value>
<Value name="4">
<Value>initSystemRecordId</Value>
</Value>
<Value name="5">
<Value>dictClassName</Value>
</Value>
<Value name="6">
<Value>buildNum</Value>
</Value>
<Value name="7">
<Value>changeDateSIREN</Value>
</Value>
<Value name="8">
<Value>changeReasonSIREN</Value>
</Value>
<Value name="9">
<Value>isDeleted</Value>
</Value>
<Value name="10">
<Value>codeFINESSEJ</Value>
</Value>
<Value name="11">
<Value>codeSIREN</Value>
</Value>
<Value name="12">
<Value>countryCode</Value>
</Value>
<Value name="13">
<Value>countryName</Value>
</Value>
<Value name="14">
<Value>creationType</Value>
</Value>
<Value name="15">
<Value>deptCode</Value>
</Value>
<Value name="16">
<Value>deptName</Value>
</Value>
<Value name="17">
<Value>email</Value>
</Value>
<Value name="18">
<Value>fax</Value>
</Value>
<Value name="19">
<Value>geoInfo</Value>
</Value>
<Value name="20">
<Value>goldenRecord</Value>
</Value>
<Value name="21">
<Value>houseNum</Value>
</Value>
<Value name="22">
<Value>id</Value>
</Value>
<Value name="23">
<Value>info</Value>
</Value>
<Value name="24">
<Value>jurStatus</Value>
</Value>
<Value name="25">
<Value>liquidateDate</Value>
</Value>
<Value name="26">
<Value>liquidateType</Value>
</Value>
<Value name="27">
<Value>locationCode</Value>
</Value>
<Value name="28">
<Value>locationName</Value>
</Value>
<Value name="29">
<Value>locationShortName</Value>
</Value>
<Value name="30">
<Value>mentionDistribution</Value>
</Value>
<Value name="31">
<Value>orgCategoryCode</Value>
</Value>
<Value name="32">
<Value>orgCategoryName</Value>
</Value>
<Value name="33">
<Value>orgCategoryShortName</Value>
</Value>
<Value name="34">
<Value>orgCreateDate</Value>
</Value>
<Value name="35">
<Value>orgFullName</Value>
</Value>
<Value name="36">
<Value>orgName</Value>
</Value>
<Value name="37">
<Value>orgNameAdditional</Value>
</Value>
<Value name="38">
<Value>orgPostCode</Value>
</Value>
<Value name="39">
<Value>orgUpdateDate</Value>
</Value>
<Value name="40">
<Value>phon2</Value>
</Value>
<Value name="41">
<Value>phone</Value>
</Value>
<Value name="42">
<Value>postalCode</Value>
</Value>
<Value name="43">
<Value>streetName</Value>
</Value>
<Value name="44">
<Value>streetType</Value>
</Value>
<Value name="45">
<Value>streetTypeName</Value>
</Value>
<Value name="46">
<Value>typologie</Value>
</Value>
</Data>
<DataLocation>^MDM.EJFINEBD14.esantamodel4318D</DataLocation>
<DefaultData>esantamodelEJFinessOccDefaultData</DefaultData>
<IdLocation>^MDM.EJFINEBD14.esantamodel4318D</IdLocation>
<IndexLocation>^MDM.EJFINEBD14.esantamodel4318I</IndexLocation>
<StreamLocation>^MDM.EJFINEBD14.esantamodel4318S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
