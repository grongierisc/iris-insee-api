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

Method PutEsantamodelEJFinessOcc(pResquest As Ens.Request, Output pResponse As Ens.StringContainer) As %Status
{

    Set tURL = ..Adapter.URL
    Set tURL = tURL_"/esanta_model_EJFinessOcc"

    do pResquest.%JSONExportToStream(.stream)

    $$$LOGINFO(stream.Read())

    set tHttpRequest = ##class(%Net.HttpRequest).%New()
    If '$IsObject(..Adapter.%CredentialsObj) Do ..Adapter.CredentialsSet(..Adapter.Credentials) If '$IsObject(..Adapter.%CredentialsObj) { Set tSC=$$$EnsError($$$EnsErrNoCredentials,..Adapter.Credentials) Quit }
    Set tHttpRequest.Username=..Adapter.%CredentialsObj.Username,tHttpRequest.Password=..Adapter.%CredentialsObj.Password		

    set tHttpRequest.ContentType = "application/json"
    Set tHttpRequest.Server=..Adapter.HTTPServer, tHttpRequest.Port=..Adapter.HTTPPort
    do tHttpRequest.EntityBody.CopyFrom(stream)
    
    set sc = tHttpRequest.Send("PUT",tURL)
    set tHttpResponse = tHttpRequest.HttpResponse
    
    
    If $IsObject(tHttpResponse.Data) {
    
        set dyna = {}.%FromJSON($s(tHttpResponse.Data.Read()="":"{}",1:tHttpResponse.Data))
        if (dyna.status = "ERROR") || (+tHttpResponse.StatusCode'?1"2"2N) {
            set sc = $$$ERROR(9200,"Erreur http : "_tHttpResponse.StatusCode_" Body : "_dyna.%ToJSON())
        }
        Else {
            Set pResponse = ##class(Ens.StringContainer).%New(dyna.%ToJSON())
        }
    
    }

    Return sc
}

Method PostEsantamodelEJFinessOcc(pResquest As Ens.Request, Output pResponse As Ens.StringContainer) As %Status
{

    Set tURL = ..Adapter.URL
    Set tURL = tURL_"/esanta_model_EJFinessOcc"

    do pResquest.%JSONExportToStream(.stream)

    $$$LOGINFO(stream.Read())

    set tHttpRequest = ##class(%Net.HttpRequest).%New()
    If '$IsObject(..Adapter.%CredentialsObj) Do ..Adapter.CredentialsSet(..Adapter.Credentials) If '$IsObject(..Adapter.%CredentialsObj) { Set tSC=$$$EnsError($$$EnsErrNoCredentials,..Adapter.Credentials) Quit }
    Set tHttpRequest.Username=..Adapter.%CredentialsObj.Username,tHttpRequest.Password=..Adapter.%CredentialsObj.Password		

    set tHttpRequest.ContentType = "application/json"
    Set tHttpRequest.Server=..Adapter.HTTPServer, tHttpRequest.Port=..Adapter.HTTPPort
    do tHttpRequest.EntityBody.CopyFrom(stream)
    
    set sc = tHttpRequest.Send("POST",tURL)
    set tHttpResponse = tHttpRequest.HttpResponse
    
    
    If $IsObject(tHttpResponse.Data) {
    
        set dyna = {}.%FromJSON($s(tHttpResponse.Data.Read()="":"{}",1:tHttpResponse.Data))
        if (dyna.status = "ERROR") || (+tHttpResponse.StatusCode'?1"2"2N) {
            set sc = $$$ERROR(9200,"Erreur http : "_tHttpResponse.StatusCode_" Body : "_dyna.%ToJSON())
        }
        Else {
            Set pResponse = ##class(Ens.StringContainer).%New(dyna.%ToJSON())
        }
    
    }

    Return sc
}

Method GetEsantamodelEJFinessOcc(pResquest As MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccGetRequest, Output pResponse As Ens.StringContainer) As %Status
{

    Set tURL = ..Adapter.URL
    Set tURL = tURL_"/esanta_model_EJFinessOcc"

    set tHttpRequest = ##class(%Net.HttpRequest).%New()
    If '$IsObject(..Adapter.%CredentialsObj) Do ..Adapter.CredentialsSet(..Adapter.Credentials) If '$IsObject(..Adapter.%CredentialsObj) { Set tSC=$$$EnsError($$$EnsErrNoCredentials,..Adapter.Credentials) Quit }
    Set tHttpRequest.Username=..Adapter.%CredentialsObj.Username,tHttpRequest.Password=..Adapter.%CredentialsObj.Password		

    set tHttpRequest.ContentType = "application/json"
    do tHttpRequest.SetParam("systemGUID",pResquest.systemGUID)
    do tHttpRequest.SetParam("isAsync",pResquest.isAsync)
    do tHttpRequest.SetParam("initSystemRecordId",pResquest.initSystemRecordId)
    do tHttpRequest.SetParam("mdmRecordId",pResquest.mdmRecordId)
    Set tHttpRequest.Server=..Adapter.HTTPServer, tHttpRequest.Port=..Adapter.HTTPPort
    
    set sc = tHttpRequest.Send("GET",tURL)
    set tHttpResponse = tHttpRequest.HttpResponse
    
    If $IsObject(tHttpResponse.Data) {
        $$$LOGINFO(tHttpResponse.Data)
        set dyna = {}.%FromJSON($s(tHttpResponse.Data.Read()="":"{}",1:tHttpResponse.Data))
        $$$LOGINFO(dyna.%ToJSON())
        if (dyna.status = "ERROR") || (+tHttpResponse.StatusCode'?1"2"2N) {
            set sc = $$$ERROR(9200,"Erreur http : "_tHttpResponse.StatusCode_" Body : "_dyna.%ToJSON())
        }
        Else {
            set pResponse = ##class(MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccGetResponse).%New()
             $$$ThrowOnError(pResponse.%JSONImport(dyna.%ToJSON()))
        }
    
    }

    Quit sc
}

Method LinkEsantamodelEJFinessOcc(pResquest As MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccLinkRequest, Output pResponse As Ens.StringContainer) As %Status
{

    Set tURL = ..Adapter.URL
    Set tURL = tURL_"/esanta_model_EJFinessOcc/link"

    set tHttpRequest = ##class(%Net.HttpRequest).%New()
    If '$IsObject(..Adapter.%CredentialsObj) Do ..Adapter.CredentialsSet(..Adapter.Credentials) If '$IsObject(..Adapter.%CredentialsObj) { Set tSC=$$$EnsError($$$EnsErrNoCredentials,..Adapter.Credentials) Quit }
    Set tHttpRequest.Username=..Adapter.%CredentialsObj.Username,tHttpRequest.Password=..Adapter.%CredentialsObj.Password		

    set tHttpRequest.ContentType = "application/json"
    do tHttpRequest.SetParam("systemGUID",pResquest.systemGUID)
    do tHttpRequest.SetParam("isAsync",pResquest.isAsync)
    do tHttpRequest.SetParam("initSystemRecordId",pResquest.initSystemRecordId)
    do tHttpRequest.SetParam("mdmRecordId",pResquest.mdmRecordId)
    Set tHttpRequest.Server=..Adapter.HTTPServer, tHttpRequest.Port=..Adapter.HTTPPort
    
    set sc = tHttpRequest.Send("GET",tURL)
    set tHttpResponse = tHttpRequest.HttpResponse
    
    If $IsObject(tHttpResponse.Data) {
    
        set dyna = {}.%FromJSON($s(tHttpResponse.Data.Read()="":"{}",1:tHttpResponse.Data))
        $$$LOGINFO(dyna.%ToJSON())
        if (dyna.status = "ERROR") || (+tHttpResponse.StatusCode'?1"2"2N) {
            set sc = $$$ERROR(9200,"Erreur http : "_tHttpResponse.StatusCode_" Body : "_dyna.%ToJSON())
        }
        Else {
            set pResponse = ##class(MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccGetResponse).%New()
             $$$ThrowOnError(pResponse.%JSONImport(dyna.%ToJSON()))
        }
    
    }

    Quit sc
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
	<MapItem MessageType="MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccPutRequest"> 
		<Method>PutEsantamodelEJFinessOcc</Method>
	</MapItem>
	<MapItem MessageType="MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccGetRequest"> 
		<Method>GetEsantamodelEJFinessOcc</Method>
	</MapItem>
	<MapItem MessageType="MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccLinkRequest"> 
		<Method>LinkEsantamodelEJFinessOcc</Method>
	</MapItem>
</MapItems>
}

}
