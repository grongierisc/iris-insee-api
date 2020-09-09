/// APE
/// Créé à partir de: /irisdev/app/misc/esanta.model.EJFinessOcc.wsdl
Class MDM.WS.EJ.tns.APE Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLNAME = "APE";

Parameter XMLSEQUENCE = 1;

Property isDeleted As %Boolean(XMLNAME = "isDeleted");

/// Last change date (read-only)
Property ts As %TimeStamp(XMLNAME = "ts");

/// Code APE
Property code As %String(MAXLEN = 255, XMLNAME = "code");

/// Object Id (read-only)
Property mdmId As %Integer(XMLNAME = "mdmId");

/// Libellé APE
Property name As %String(MAXLEN = 255, XMLNAME = "name");

Storage Default
{
<Data name="APEDefaultData">
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
<Value>mdmId</Value>
</Value>
<Value name="6">
<Value>name</Value>
</Value>
</Data>
<DataLocation>^MDM.WS.EJ.tns.APED</DataLocation>
<DefaultData>APEDefaultData</DefaultData>
<IdLocation>^MDM.WS.EJ.tns.APED</IdLocation>
<IndexLocation>^MDM.WS.EJ.tns.APEI</IndexLocation>
<StreamLocation>^MDM.WS.EJ.tns.APES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
