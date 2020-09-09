Class MDM.WS.BaseService.Operation.WebServiceSoap Extends Ens.BusinessOperation [ ProcedureBlock ]
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Method getEntitiesList(pRequest As MDM.WS.BaseService.Request.getEntitiesListRequest, Output pResponse As MDM.WS.BaseService.Response.getEntitiesListResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "MDM.WS.BaseService.WebServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("getEntitiesList",.status,pRequest.systemGUID,pRequest.isAsync,.statusText,.requestGUID,.payloadList)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.status=$get(status),pResponse.statusText = $get(statusText),pResponse.requestGUID = $get(requestGUID),pResponse.payloadList = $get(payloadList)
 Quit $$$OK
}

Method getStatus(pRequest As MDM.WS.BaseService.Request.getStatusRequest, Output pResponse As MDM.WS.BaseService.Response.getStatusResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "MDM.WS.BaseService.WebServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("getStatus",.status,pRequest.systemGUID,pRequest.requestGUID,.statusText,.payload)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.status=$get(status),pResponse.statusText = $get(statusText),pResponse.payload = $get(payload)
 Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="MDM.WS.BaseService.Request.getEntitiesListRequest">
		<Method>getEntitiesList</Method>
	</MapItem>
	<MapItem MessageType="MDM.WS.BaseService.Request.getStatusRequest">
		<Method>getStatus</Method>
	</MapItem>
</MapItems>
}

}
