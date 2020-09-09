/// Duplicate Record Summary - Used in EntityRecordCheckResponse
/// Créé à partir de: /irisdev/app/misc/testDict.xml
Class MDM.WS.TestDict.tns.DuplicateSummary Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLNAME = "DuplicateSummary";

Parameter XMLSEQUENCE = 1;

Property dictClassName As %String(MAXLEN = "", XMLNAME = "dictClassName") [ Required ];

Property initSystemRecordId As %String(MAXLEN = "", XMLNAME = "initSystemRecordId");

Property mdmId As %String(MAXLEN = "", XMLNAME = "mdmId") [ Required ];

Property probability As %xsd.double(XMLNAME = "probability") [ Required ];

Property description As %String(MAXLEN = "", XMLNAME = "description") [ Required ];

Storage Default
{
<Data name="DuplicateSummaryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>dictClassName</Value>
</Value>
<Value name="3">
<Value>initSystemRecordId</Value>
</Value>
<Value name="4">
<Value>mdmId</Value>
</Value>
<Value name="5">
<Value>probability</Value>
</Value>
<Value name="6">
<Value>description</Value>
</Value>
</Data>
<DataLocation>^MDM.WS.TesF160.DuplicateSuE6A4D</DataLocation>
<DefaultData>DuplicateSummaryDefaultData</DefaultData>
<IdLocation>^MDM.WS.TesF160.DuplicateSuE6A4D</IdLocation>
<IndexLocation>^MDM.WS.TesF160.DuplicateSuE6A4I</IndexLocation>
<StreamLocation>^MDM.WS.TesF160.DuplicateSuE6A4S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
