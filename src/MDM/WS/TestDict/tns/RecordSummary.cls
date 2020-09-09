/// Record Summary - Used in EntityRecordsListResponse
/// Créé à partir de: /irisdev/app/misc/testDict.xml
Class MDM.WS.TestDict.tns.RecordSummary Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLNAME = "RecordSummary";

Parameter XMLSEQUENCE = 1;

Property dictClassName As %String(MAXLEN = "", XMLNAME = "dictClassName") [ Required ];

Property initSystemRecordId As %String(MAXLEN = "", XMLNAME = "initSystemRecordId");

Property mdmId As %String(MAXLEN = "", XMLNAME = "mdmId") [ Required ];

Storage Default
{
<Data name="RecordSummaryDefaultData">
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
</Data>
<DataLocation>^MDM.WS.TestDF160.RecordSummaryD</DataLocation>
<DefaultData>RecordSummaryDefaultData</DefaultData>
<IdLocation>^MDM.WS.TestDF160.RecordSummaryD</IdLocation>
<IndexLocation>^MDM.WS.TestDF160.RecordSummaryI</IndexLocation>
<StreamLocation>^MDM.WS.TestDF160.RecordSummaryS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
