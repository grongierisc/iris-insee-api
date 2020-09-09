/// Créé à partir de: /irisdev/app/misc/testDict.xml
Class MDM.WS.TestDict.tns.ArrayOfDuplicateSummary Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLNAME = "ArrayOfDuplicateSummary";

Parameter XMLSEQUENCE = 1;

Property DuplicateSummary As list Of MDM.WS.TestDict.tns.DuplicateSummary(XMLNAME = "DuplicateSummary", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfDuplicateSummaryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DuplicateSummary</Value>
</Value>
</Data>
<DataLocation>^MDM.WS.TesF160.ArrayOfDupl350DD</DataLocation>
<DefaultData>ArrayOfDuplicateSummaryDefaultData</DefaultData>
<IdLocation>^MDM.WS.TesF160.ArrayOfDupl350DD</IdLocation>
<IndexLocation>^MDM.WS.TesF160.ArrayOfDupl350DI</IndexLocation>
<StreamLocation>^MDM.WS.TesF160.ArrayOfDupl350DS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
