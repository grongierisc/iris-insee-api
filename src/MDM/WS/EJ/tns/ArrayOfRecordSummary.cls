/// Créé à partir de: /irisdev/app/misc/esanta.model.EJFinessOcc.wsdl
Class MDM.WS.EJ.tns.ArrayOfRecordSummary Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLNAME = "ArrayOfRecordSummary";

Parameter XMLSEQUENCE = 1;

Property RecordSummary As list Of MDM.WS.EJ.tns.RecordSummary(XMLNAME = "RecordSummary", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfRecordSummaryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>RecordSummary</Value>
</Value>
</Data>
<DataLocation>^MDM.WS.EJ.tns.ArrayOfRecoD5C7D</DataLocation>
<DefaultData>ArrayOfRecordSummaryDefaultData</DefaultData>
<IdLocation>^MDM.WS.EJ.tns.ArrayOfRecoD5C7D</IdLocation>
<IndexLocation>^MDM.WS.EJ.tns.ArrayOfRecoD5C7I</IndexLocation>
<StreamLocation>^MDM.WS.EJ.tns.ArrayOfRecoD5C7S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
