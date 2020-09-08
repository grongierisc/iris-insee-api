/// Forwards contents of an HTTP request to a remote HTTP service and sends the HTTP response as its reply message
Class MDM.EJFINESS.REST.Operation Extends Ens.BusinessOperation [ System = 4 ]
{

Parameter ADAPTER = "EnsLib.HTTP.OutboundAdapter";

Property Adapter As EnsLib.HTTP.OutboundAdapter;

Method GetStatus(pResquest As MDM.EJFINESS.REST.Msg.Status, Output pResponse As Ens.StringContainer) As %Status
{

    Set tURL = ..Adapter.URL
    Set tURL = tURL_"/status?systemGUID="_pResquest.systemGUID_"&requestGUID="_pResquest.requestGUID

    $$$ThrowOnError(..Adapter.GetURL(tURL,.tHttpResponse))

    Set pResponse = ##class(Ens.StringContainer).%New({}.%FromJSON(tHttpResponse.Data).%ToJSON())

    Quit $$$OK
}

Method PostEsantamodelEJFinessOcc(pResquest As Ens.Request, Output pResponse As Ens.StringContainer) As %Status
{

    Set tURL = ..Adapter.URL
    Set tURL = tURL_"/esanta_model_EJFinessOcc"

    do pResquest.%JSONExportToStream(.stream)
    

    set dyna = {}
    set dyna.systemGUID = "BA6A079E-EECD-11EA-A221-0242AC110006"
    set dyna.initSystemRecordId = "test"
    set dyna.payload = {}.%FromJSON(stream)

    $$$LOGINFO(dyna.%ToJSON())

    $$$ThrowOnError(..Adapter.PostURL(tURL,.tHttpResponse,,stream))

    Set pResponse = ##class(Ens.StringContainer).%New({}.%FromJSON(tHttpResponse.Data).%ToJSON())

    Quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="MDM.EJFINESS.REST.Msg.Status"> 
		<Method>GetStatus</Method>
	</MapItem>
	<MapItem MessageType="MDM.REST.Msg.EsantamodelEJFinessOcc"> 
		<Method>PostEsantamodelEJFinessOcc</Method>
	</MapItem>

</MapItems>
}

}
