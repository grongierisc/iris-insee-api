Class MDM.WS.EJ.WebServiceSoap Extends %SOAP.WebClient [ ProcedureBlock ]
{

/// This is the URL used to access the web service.
Parameter LOCATION = "http://test.iris.kanosoftware.net:7721/csp/mdm/mdm.ens.integration.soap.BaseService.cls/esanta.model.EJFinessOcc";

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

Method entityRecordAdd(systemGUID As %String(REQUIRED=1), initSystemRecordId As %String(REQUIRED=1), payload As MDM.WS.EJ.tns.EJFinessOcc, Output statusText As %String, Output requestGUID As %String(REQUIRED=1), Output mdmRecordId As %String) As %String(XMLNAME="status") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("entityRecordAdd","entityRecordAddRequest").Invoke($this,"entityRecordAdd",.systemGUID,.initSystemRecordId,.payload,.statusText,.requestGUID,.mdmRecordId)
}

Method entityRecordCheck(systemGUID As %String(REQUIRED=1), payload As MDM.WS.EJ.tns.EJFinessOcc, Output statusText As %String, Output hasDuplicates As %String(REQUIRED=1), Output payloadList As %ListOfObjects(ELEMENTTYPE="MDM.WS.EJ.tns.DuplicateSummary",XMLITEMNAME="record",XMLNAME="payloadList")) As %String(XMLNAME="status") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("entityRecordCheck","entityRecordCheckRequest").Invoke($this,"entityRecordCheck",.systemGUID,.payload,.statusText,.hasDuplicates,.payloadList)
}

Method entityRecordDelete(systemGUID As %String(REQUIRED=1), initSystemRecordId As %String(REQUIRED=1), Output statusText As %String, Output requestGUID As %String(REQUIRED=1), Output mdmRecordId As %String) As %String(XMLNAME="status") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("entityRecordDelete","entityRecordDeleteRequest").Invoke($this,"entityRecordDelete",.systemGUID,.initSystemRecordId,.statusText,.requestGUID,.mdmRecordId)
}

Method entityRecordGet(systemGUID As %String(REQUIRED=1), initSystemRecordId As %String, mdmRecordId As %String, isAsync As %Boolean(REQUIRED=1), Output statusText As %String, Output requestGUID As %String, Output payload As MDM.WS.EJ.tns.EJFinessOcc) As %String(XMLNAME="status") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("entityRecordGet","entityRecordGetRequest").Invoke($this,"entityRecordGet",.systemGUID,.initSystemRecordId,.mdmRecordId,.isAsync,.statusText,.requestGUID,.payload)
}

Method entityRecordLink(systemGUID As %String(REQUIRED=1), initSystemRecordId As %String(REQUIRED=1), mdmRecordId As %String(REQUIRED=1), isAsync As %Boolean(REQUIRED=1), Output statusText As %String) As %String(XMLNAME="status") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("entityRecordLink","entityRecordLinkRequest").Invoke($this,"entityRecordLink",.systemGUID,.initSystemRecordId,.mdmRecordId,.isAsync,.statusText)
}

Method entityRecordModify(systemGUID As %String(REQUIRED=1), initSystemRecordId As %String(REQUIRED=1), payload As MDM.WS.EJ.tns.EJFinessOcc, Output statusText As %String, Output requestGUID As %String(REQUIRED=1), Output mdmRecordId As %String) As %String(XMLNAME="status") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("entityRecordModify","entityRecordModifyRequest").Invoke($this,"entityRecordModify",.systemGUID,.initSystemRecordId,.payload,.statusText,.requestGUID,.mdmRecordId)
}

Method entityRecordsList(systemGUID As %String(REQUIRED=1), isAsync As %Boolean(REQUIRED=1), Output statusText As %String, Output requestGUID As %String, ByRef ts As %TimeStamp(REQUIRED=1), query As %String, Output payloadList As %ListOfObjects(ELEMENTTYPE="MDM.WS.EJ.tns.RecordSummary",XMLITEMNAME="record",XMLNAME="payloadList")) As %String(XMLNAME="status") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("entityRecordsList","entityRecordsListRequest").Invoke($this,"entityRecordsList",.systemGUID,.isAsync,.statusText,.requestGUID,.ts,.query,.payloadList)
}

}
