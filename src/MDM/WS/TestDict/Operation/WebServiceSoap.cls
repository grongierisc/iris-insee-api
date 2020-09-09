Class MDM.WS.TestDict.Operation.WebServiceSoap Extends Ens.BusinessOperation [ ProcedureBlock ]
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Method entityRecordAdd(pRequest As MDM.WS.TestDict.Request.entityRecordAddRequest, Output pResponse As MDM.WS.TestDict.Response.entityRecordAddResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "MDM.WS.TestDict.WebServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("entityRecordAdd",.status,pRequest.systemGUID,pRequest.initSystemRecordId,pRequest.payload,.statusText,.requestGUID,.mdmRecordId)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.status=$get(status),pResponse.statusText = $get(statusText),pResponse.requestGUID = $get(requestGUID),pResponse.mdmRecordId = $get(mdmRecordId)
 Quit $$$OK
}

Method entityRecordCheck(pRequest As MDM.WS.TestDict.Request.entityRecordCheckRequest, Output pResponse As MDM.WS.TestDict.Response.entityRecordCheckResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "MDM.WS.TestDict.WebServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("entityRecordCheck",.hasDuplicates,pRequest.systemGUID,pRequest.payload,.payloadList)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.hasDuplicates=$get(hasDuplicates),pResponse.payloadList = $get(payloadList)
 Quit $$$OK
}

Method entityRecordDelete(pRequest As MDM.WS.TestDict.Request.entityRecordDeleteRequest, Output pResponse As MDM.WS.TestDict.Response.entityRecordDeleteResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "MDM.WS.TestDict.WebServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("entityRecordDelete",.status,pRequest.systemGUID,pRequest.initSystemRecordId,.statusText,.requestGUID,.mdmRecordId)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.status=$get(status),pResponse.statusText = $get(statusText),pResponse.requestGUID = $get(requestGUID),pResponse.mdmRecordId = $get(mdmRecordId)
 Quit $$$OK
}

Method entityRecordGet(pRequest As MDM.WS.TestDict.Request.entityRecordGetRequest, Output pResponse As MDM.WS.TestDict.Response.entityRecordGetResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "MDM.WS.TestDict.WebServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("entityRecordGet",.status,pRequest.systemGUID,pRequest.initSystemRecordId,pRequest.mdmRecordId,pRequest.isAsync,.statusText,.requestGUID,.payload)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.status=$get(status),pResponse.statusText = $get(statusText),pResponse.requestGUID = $get(requestGUID),pResponse.payload = $get(payload)
 Quit $$$OK
}

Method entityRecordLink(pRequest As MDM.WS.TestDict.Request.entityRecordLinkRequest, Output pResponse As MDM.WS.TestDict.Response.entityRecordLinkResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "MDM.WS.TestDict.WebServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("entityRecordLink",.status,pRequest.systemGUID,pRequest.initSystemRecordId,pRequest.mdmRecordId,pRequest.isAsync,.statusText)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.status=$get(status),pResponse.statusText = $get(statusText)
 Quit $$$OK
}

Method entityRecordModify(pRequest As MDM.WS.TestDict.Request.entityRecordModifyRequest, Output pResponse As MDM.WS.TestDict.Response.entityRecordModifyResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "MDM.WS.TestDict.WebServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("entityRecordModify",.status,pRequest.systemGUID,pRequest.initSystemRecordId,pRequest.payload,.statusText,.requestGUID,.mdmRecordId)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.status=$get(status),pResponse.statusText = $get(statusText),pResponse.requestGUID = $get(requestGUID),pResponse.mdmRecordId = $get(mdmRecordId)
 Quit $$$OK
}

Method entityRecordsList(pRequest As MDM.WS.TestDict.Request.entityRecordsListRequest, Output pResponse As MDM.WS.TestDict.Response.entityRecordsListResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "MDM.WS.TestDict.WebServiceSoap"
 Set ts=pRequest.ts
 Set tSC = ..Adapter.InvokeMethod("entityRecordsList",.status,pRequest.systemGUID,pRequest.isAsync,.statusText,.requestGUID,.ts,pRequest.query,.payloadList)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.status=$get(status),pResponse.statusText = $get(statusText),pResponse.requestGUID = $get(requestGUID),pResponse.ts = $get(ts),pResponse.payloadList = $get(payloadList)
 Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="MDM.WS.TestDict.Request.entityRecordAddRequest">
		<Method>entityRecordAdd</Method>
	</MapItem>
	<MapItem MessageType="MDM.WS.TestDict.Request.entityRecordCheckRequest">
		<Method>entityRecordCheck</Method>
	</MapItem>
	<MapItem MessageType="MDM.WS.TestDict.Request.entityRecordDeleteRequest">
		<Method>entityRecordDelete</Method>
	</MapItem>
	<MapItem MessageType="MDM.WS.TestDict.Request.entityRecordGetRequest">
		<Method>entityRecordGet</Method>
	</MapItem>
	<MapItem MessageType="MDM.WS.TestDict.Request.entityRecordLinkRequest">
		<Method>entityRecordLink</Method>
	</MapItem>
	<MapItem MessageType="MDM.WS.TestDict.Request.entityRecordModifyRequest">
		<Method>entityRecordModify</Method>
	</MapItem>
	<MapItem MessageType="MDM.WS.TestDict.Request.entityRecordsListRequest">
		<Method>entityRecordsList</Method>
	</MapItem>
</MapItems>
}

}
