/// Créé à partir de: /irisdev/app/misc/BaseService.xml
Class MDM.WS.BaseService.tns.ArrayOfEntity Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLNAME = "ArrayOfEntity";

Parameter XMLSEQUENCE = 1;

Property Entity As list Of MDM.WS.BaseService.tns.Entity(XMLNAME = "Entity", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfEntityState">
<Value name="1">
<Value>Entity</Value>
</Value>
</Data>
<State>ArrayOfEntityState</State>
<StreamLocation>^MDM.WS.BaseSAB8A.ArrayOfEntityS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
