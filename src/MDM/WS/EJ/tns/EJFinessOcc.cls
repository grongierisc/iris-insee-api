/// Créé à partir de: /irisdev/app/misc/esanta.model.EJFinessOcc.wsdl
Class MDM.WS.EJ.tns.EJFinessOcc Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLNAME = "EJFinessOcc";

Parameter XMLSEQUENCE = 1;

Property isDeleted As %Boolean(XMLNAME = "isDeleted");

/// Last change date (read-only)
Property ts As %TimeStamp(XMLNAME = "ts");

/// Record Id in initiator system (or GUID)
Property initSystemRecordId As %String(MAXLEN = 250, XMLNAME = "initSystemRecordId");

/// Entity class name
Property dictClassName As %String(MAXLEN = 250, XMLNAME = "dictClassName");

Property APE As MDM.WS.EJ.tns.APE(XMLNAME = "APE");

Property buildNum As %String(MAXLEN = 255, XMLNAME = "buildNum");

Property changeDateSIREN As %TimeStamp(XMLNAME = "changeDateSIREN");

Property changeReasonSIREN As %String(MAXLEN = 255, XMLNAME = "changeReasonSIREN");

Property codeFINESSEJ As %String(MAXLEN = 9, MINLEN = 9, XMLNAME = "codeFINESSEJ");

Property codeSIREN As %String(MAXLEN = 9, MINLEN = 9, XMLNAME = "codeSIREN");

Property countryCode As %String(MAXLEN = 255, XMLNAME = "countryCode");

Property countryName As %String(MAXLEN = 255, XMLNAME = "countryName");

Property creationType As %String(MAXLEN = 255, XMLNAME = "creationType");

Property deptCode As %String(MAXLEN = 255, XMLNAME = "deptCode");

Property deptName As %String(MAXLEN = 255, XMLNAME = "deptName");

Property email As %String(MAXLEN = 255, XMLNAME = "email");

Property fax As %String(MAXLEN = 255, XMLNAME = "fax");

Property geoInfo As %String(MAXLEN = 255, XMLNAME = "geoInfo");

/// Golden record link
Property goldenRecord As MDM.WS.EJ.tns.EJFinessOcc(XMLNAME = "goldenRecord");

Property houseNum As %String(MAXLEN = 255, XMLNAME = "houseNum");

/// Object Id (read-only)
Property mdmId As %Integer(XMLNAME = "mdmId");

Property info As %String(MAXLEN = 255, XMLNAME = "info");

Property jurStatus As MDM.WS.EJ.tns.StatutJuridique(XMLNAME = "jurStatus");

Property liquidateDate As %TimeStamp(XMLNAME = "liquidateDate");

Property liquidateType As %String(MAXLEN = 255, XMLNAME = "liquidateType");

Property locationCode As %String(MAXLEN = 255, XMLNAME = "locationCode");

Property locationName As %String(MAXLEN = 255, XMLNAME = "locationName");

Property locationShortName As %String(MAXLEN = 255, XMLNAME = "locationShortName");

Property mentionDistribution As %String(MAXLEN = 255, XMLNAME = "mentionDistribution");

Property orgCategoryCode As %String(MAXLEN = 255, XMLNAME = "orgCategoryCode");

Property orgCategoryName As %String(MAXLEN = 255, XMLNAME = "orgCategoryName");

Property orgCategoryShortName As %String(MAXLEN = 255, XMLNAME = "orgCategoryShortName");

Property orgCreateDate As %TimeStamp(XMLNAME = "orgCreateDate");

Property orgFullName As %String(MAXLEN = 255, XMLNAME = "orgFullName");

Property orgName As %String(MAXLEN = 255, XMLNAME = "orgName");

Property orgNameAdditional As %String(MAXLEN = 255, XMLNAME = "orgNameAdditional");

Property orgPostCode As %String(MAXLEN = 255, XMLNAME = "orgPostCode");

Property orgUpdateDate As %TimeStamp(XMLNAME = "orgUpdateDate");

Property phon2 As %String(MAXLEN = 255, XMLNAME = "phon2");

Property phone As %String(MAXLEN = 255, XMLNAME = "phone");

Property postalCode As %String(MAXLEN = 5, MINLEN = 5, XMLNAME = "postalCode");

Property streetName As %String(MAXLEN = 255, XMLNAME = "streetName");

Property streetType As %String(MAXLEN = 255, XMLNAME = "streetType");

Property streetTypeName As %String(MAXLEN = 255, XMLNAME = "streetTypeName");

Property typologie As %String(MAXLEN = 255, XMLNAME = "typologie");

Storage Default
{
<Data name="EJFinessOccDefaultData">
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
<Value>initSystemRecordId</Value>
</Value>
<Value name="5">
<Value>dictClassName</Value>
</Value>
<Value name="6">
<Value>APE</Value>
</Value>
<Value name="7">
<Value>buildNum</Value>
</Value>
<Value name="8">
<Value>changeDateSIREN</Value>
</Value>
<Value name="9">
<Value>changeReasonSIREN</Value>
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
<Value>mdmId</Value>
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
<DataLocation>^MDM.WS.EJ.tns.EJFinessOccD</DataLocation>
<DefaultData>EJFinessOccDefaultData</DefaultData>
<IdLocation>^MDM.WS.EJ.tns.EJFinessOccD</IdLocation>
<IndexLocation>^MDM.WS.EJ.tns.EJFinessOccI</IndexLocation>
<StreamLocation>^MDM.WS.EJ.tns.EJFinessOccS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
