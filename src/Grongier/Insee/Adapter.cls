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

Parameter SETTINGS = "InseeCredentials:Basic:credentialsSelector";

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

    //check if token exist
    If ..InseeToken'="" {
        //Revoke
        Set tURL = "/revoke"
        Set tURL = tURL_"?token="_..InseeToken
        $$$ThrowOnError(..PostURL(tURL,.tHttpResponse))
    }
    Set tURL = "/token"
    Set tURL = tURL_"?grant_type=client_credentials"
    $$$ThrowOnError(..PostURL(tURL,.tHttpResponse))

    Set result = {}.%FromJSON(tHttpResponse.Data)."access_token"

    Quit result
}

Method GetURLH(pURL As %String, pHttpRequest, Output pHttpResponse As %Net.HttpResponse, pFormVarNames As %String, pData...) As %Status [ CodeMode = expression ]
{
..SendFormDataArray(.pHttpResponse,"GET",pHttpRequest,.pFormVarNames,.pData,pURL)
}

}
