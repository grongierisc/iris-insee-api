/// Créé à partir de: /irisdev/app/misc/BaseService.xml
Class MDM.WS.BaseService.tns.Entity Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLNAME = "Entity";

Parameter XMLSEQUENCE = 1;

Property systemName As %String(MAXLEN = "", XMLNAME = "systemName");

Property description As %String(MAXLEN = "", XMLNAME = "description");

Property WSLocation As %String(MAXLEN = "", XMLNAME = "WSLocation");

Property useApprovalProcessToApplyChanges As %Boolean(XMLNAME = "useApprovalProcessToApplyChanges");

Storage Default
{
<Data name="EntityState">
<Value name="1">
<Value>systemName</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
<Value name="3">
<Value>WSLocation</Value>
</Value>
<Value name="4">
<Value>useApprovalProcessToApplyChanges</Value>
</Value>
</Data>
<State>EntityState</State>
<StreamLocation>^MDM.WS.BaseService.tns.EntityS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
