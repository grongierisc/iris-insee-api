/// Statut juridique
/// Créé à partir de: /irisdev/app/misc/esanta.model.EJFinessOcc.wsdl
Class MDM.WS.EJ.tns.StatutJuridique Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLNAME = "StatutJuridique";

Parameter XMLSEQUENCE = 1;

Property isDeleted As %Boolean(XMLNAME = "isDeleted");

/// Last change date (read-only)
Property ts As %TimeStamp(XMLNAME = "ts");

/// Code statut juridique
Property code As %String(MAXLEN = 255, XMLNAME = "code");

/// Object Id (read-only)
Property mdmId As %Integer(XMLNAME = "mdmId");

/// Libellé statut juridique
Property name As %String(MAXLEN = 255, XMLNAME = "name");

/// Libellé court statut juridique
Property shortName As %String(MAXLEN = 255, XMLNAME = "shortName");

Storage Default
{
<Data name="StatutJuridiqueDefaultData">
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
<Value name="7">
<Value>shortName</Value>
</Value>
</Data>
<DataLocation>^MDM.WS.EJ.tns.StatutJuridiqueD</DataLocation>
<DefaultData>StatutJuridiqueDefaultData</DefaultData>
<IdLocation>^MDM.WS.EJ.tns.StatutJuridiqueD</IdLocation>
<IndexLocation>^MDM.WS.EJ.tns.StatutJuridiqueI</IndexLocation>
<StreamLocation>^MDM.WS.EJ.tns.StatutJuridiqueS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
