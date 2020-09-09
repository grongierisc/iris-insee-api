Class MDM.WS.BaseService.WebServiceSoap Extends %SOAP.WebClient [ ProcedureBlock ]
{

/// This is the URL used to access the web service.
Parameter LOCATION = "http://test.iris.kanosoftware.net:88/csp/mdm/mdm.ens.integration.soap.BaseService.cls";

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://kanosoftware.com/soap";

/// Use xsi:type attribute for literal types.
Parameter OUTPUTTYPEATTRIBUTE = 1;

/// Determines handling of Security header.
Parameter SECURITYIN = "ALLOW";

/// This is the name of the Service
Parameter SERVICENAME = "WebService";

/// This is the SOAP version supported by the service.
Parameter SOAPVERSION = 1.1;

Method getEntitiesList(systemGUID As %String(REQUIRED=1), isAsync As %Boolean(REQUIRED=1), Output statusText As %String, Output requestGUID As %String, Output payloadList As %ListOfObjects(ELEMENTTYPE="MDM.WS.BaseService.tns.Entity",XMLITEMNAME="entity",XMLNAME="payloadList")) As %String(XMLNAME="status") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("getEntitiesList","getEntitiesListRequest").Invoke($this,"getEntitiesList",.systemGUID,.isAsync,.statusText,.requestGUID,.payloadList)
}

Method getStatus(systemGUID As %String(REQUIRED=1), requestGUID As %String(REQUIRED=1), Output statusText As %String, Output payload As %XML.String(REQUIRED=1)) As %String(XMLNAME="status") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("getStatus","getStatusRequest").Invoke($this,"getStatus",.systemGUID,.requestGUID,.statusText,.payload)
}

}
