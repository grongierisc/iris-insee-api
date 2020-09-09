Import MDM.WS.BaseService

Include (%occInclude, %soap)

/// This class is generated by the MDM.WS.BaseService.WebServiceSoap Web Service Client class.
/// This class should not be edited or modified in any way.
Class MDM.WS.BaseService.WebServiceSoap.getEntitiesList Extends %SOAP.ProxyDescriptor [ GeneratedBy = MDM.WS.BaseService.WebServiceSoap.cls ]
{

Method Invoke(%Client, %Action, systemGUID As %String(REQUIRED=1), isAsync As %Boolean(REQUIRED=1), Output statusText As %String, Output requestGUID As %String, Output payloadList As %ListOfObjects(ELEMENTTYPE="MDM.WS.BaseService.tns.Entity",XMLITEMNAME="entity",XMLNAME="payloadList")) As %Library.String(XMLNAME="status") [ ServerOnly = 1 ]
{
 Set ..systemGUID=$get(systemGUID),..isAsync=$get(isAsync)
 Do %Client.InvokeClient($this,"getEntitiesList",%Action)
 Set statusText=..statusText,requestGUID=..requestGUID,payloadList=..payloadList
 Quit ..%Result
}

Method Reset() [ ServerOnly = 1 ]
{
 Quit
}

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://kanosoftware.com/soap";

Parameter SOAPBINDINGSTYLE = "document";

Parameter SOAPBODYUSE = "literal";

Parameter SUPPRESSDOCUMENTATION = 1;

Parameter TYPENAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLDEFAULTREFERENCE = "complete";

Parameter XMLIMPORTNAMESPACE = "http://kanosoftware.com/soap";

Parameter XMLRESULTNAME = "%Result";

Property %Result As %Library.String(MAXLEN = "", XMLIO = "IN", XMLNAME = "status");

Property systemGUID As %Library.String(MAXLEN = "", XMLIO = "OUT") [ Required ];

Property isAsync As %Library.Boolean(XMLIO = "OUT") [ Required ];

Property statusText As %Library.String(MAXLEN = "", XMLIO = "IN");

Property requestGUID As %Library.String(MAXLEN = "", XMLIO = "IN");

Property payloadList As list Of MDM.WS.BaseService.tns.Entity(XMLIO = "IN", XMLITEMNAME = "entity", XMLNAME = "payloadList");

}