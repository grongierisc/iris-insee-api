/// Forwards contents of an HTTP request to a remote HTTP service and sends the HTTP response as its reply message
Class MDM.EJFINESS.REST.Operation Extends Ens.BusinessOperation [ System = 4 ]
{

Parameter ADAPTER = "EnsLib.HTTP.OutboundAdapter";

Property Adapter As EnsLib.HTTP.OutboundAdapter;

Method GetStatus(pResquest As MDM.EJFINESS.REST.Msg.StatusRequest, Output pResponse As Ens.StringContainer) As %Status
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

    $$$LOGINFO(stream.Read())

    set tHttpRequest = ##class(%Net.HttpRequest).%New()
    set tHttpRequest.ContentType = "application/json"
    Set tHttpRequest.Server=..Adapter.HTTPServer, tHttpRequest.Port=..Adapter.HTTPPort
    do tHttpRequest.EntityBody.CopyFrom(stream)
    
    set sc = tHttpRequest.Send("POST",tURL)
    set tHttpResponse = tHttpRequest.HttpResponse
    
    
    If $IsObject(tHttpResponse) {
    
        set dyna = {}.%FromJSON(tHttpResponse.Data)
        if (dyna.status = "ERROR") || (+tHttpResponse.StatusCode'?1"2"2N) {
            set sc = $$$ERROR(9200,"Erreur http : "_tHttpResponse.StatusCode_" Body : "_dyna.%ToJSON())
        }
        Else {
            Set pResponse = ##class(Ens.StringContainer).%New(dyna.%ToJSON())
        }
    
    }

    Return sc
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="MDM.EJFINESS.REST.Msg.StatusRequest"> 
		<Method>GetStatus</Method>
	</MapItem>
	<MapItem MessageType="MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccAddRequest"> 
		<Method>PostEsantamodelEJFinessOcc</Method>
	</MapItem>

</MapItems>
}

}
