/// Créé à partir de: /irisdev/app/misc/testDict.xml
Class MDM.WS.TestDict.tns.testDict Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLNAME = "testDict";

Parameter XMLSEQUENCE = 1;

Property isDeleted As %Boolean(XMLNAME = "isDeleted");

/// Last change date (read-only)
Property ts As %TimeStamp(XMLNAME = "ts");

/// Record Id in initiator system (or GUID)
Property initSystemRecordId As %String(MAXLEN = 250, XMLNAME = "initSystemRecordId");

/// Entity class name
Property dictClassName As %String(MAXLEN = 250, XMLNAME = "dictClassName");

/// System name
Property code As %String(MAXLEN = 255, XMLNAME = "code");

/// Golden record link
Property goldenRecord As MDM.WS.TestDict.tns.testDict(XMLNAME = "goldenRecord");

/// Object Id (read-only)
Property mdmId As %Integer(XMLNAME = "mdmId");

/// Display name
Property name As %String(MAXLEN = 10000, XMLNAME = "name");

Storage Default
{
<Data name="testDictDefaultData">
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
<Value>code</Value>
</Value>
<Value name="7">
<Value>goldenRecord</Value>
</Value>
<Value name="8">
<Value>mdmId</Value>
</Value>
<Value name="9">
<Value>name</Value>
</Value>
</Data>
<DataLocation>^MDM.WS.TestDict.tns.testDictD</DataLocation>
<DefaultData>testDictDefaultData</DefaultData>
<IdLocation>^MDM.WS.TestDict.tns.testDictD</IdLocation>
<IndexLocation>^MDM.WS.TestDict.tns.testDictI</IndexLocation>
<StreamLocation>^MDM.WS.TestDict.tns.testDictS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
