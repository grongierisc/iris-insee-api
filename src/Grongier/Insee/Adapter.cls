Class Grongier.Insee.Adapter Extends EnsLib.HTTP.OutboundAdapter
{

Parameter ServerInsee As %String = "api.insee.fr";

Parameter PathSirene = "/entreprises/sirene/";

Parameter VersionSirene = "V3";

Property URL As %String(MAXLEN = 1000) [ InitialExpression = "/entreprises/sirene/V3", Required ];

Property SSLConfig As %String [ InitialExpression = "Insee" ];

/// IP address of the server to send HTTP requests to.
Property HTTPServer As %String(MAXLEN = 1000) [ InitialExpression = "api.insee.fr", Required ];

/// Insee Token to use
Property InseeToken As %String;

/// HTTP Request
Property HttpRequest As %Net.HttpRequest;

Method OnInit() As %Status
{
	Set tSC = $$$OK
	Try
	{
		Kill ^insee.debug
		
        Set tSC = ##class(Grongier.Insee.Utils).CheckSSLConfiguration(..SSLConfig)
        Quit:$$$ISERR(tSC)
		
		Set ..InseeToken = ..GetRenewToken()

        If ..InseeToken=""
		{
			Set tSC = $$$ERROR(5001,"Token can't be initial from Insee")
			Quit
		}

        Set ..HttpRequest=##class(%Net.HttpRequest).%New()
        do ..SetRenewToken()
		
		Set tSC=##super()
		Quit:$$$ISERR(tSC)
	}
	Catch (oException)
	{
		Set tSC = oException.AsStatus()
	}
	
	Quit tSC
}

Method GetRenewToken() As %String
{
    Set oSc = $$$OK
    Set result = ""

    Set tURL = "/token"
    Set tURL = tURL_"?grant_type=client_credentials"
    $$$ThrowOnError(..PostURL(tURL,.tHttpResponse))

    Set result = {}.%FromJSON(tHttpResponse.Data)."access_token"
    $$$LOGINFO("New token is : "_result)
    Quit result
}

Method SetRenewToken() As %Status
{
    do ..HttpRequest.SetHeader("Authorization", "Bearer " _ ..InseeToken)
    quit $$$OK
}

Method GetURLInsee(pURL As %String, Output pHttpResponse As %Net.HttpResponse, pFormVarNames As %String, pData...) As %Status
{
        $$$LOGINFO("token "_..InseeToken)
        do ..SetRenewToken()
        $$$LOGINFO("Header "_..HttpRequest.GetHeader("Authorization"))
        $$$ThrowOnError(..SendFormDataArray(.pHttpResponse,"GET",..HttpRequest,.pFormVarNames,.pData,pURL))


    Quit $$$OK
}

Method PostURLInsee(pURL As %String, Output pHttpResponse As %Net.HttpResponse, pFormVarNames As %String, pData...) As %Status
{
        do ..SetRenewToken()
        $$$ThrowOnError(..SendFormDataArray(.pHttpResponse,"POST",..HttpRequest,.pFormVarNames,.pData,pURL))


    Quit $$$OK
}

}
