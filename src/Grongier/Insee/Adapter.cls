Class Grongier.Insee.Adapter Extends (Ens.InboundAdapter, EnsLib.HTTP.OutboundAdapter)
{

Parameter ServerInsee As %String = "api.insee.fr";

Parameter PathSirene = "/entreprises/sirene/";

Parameter VersionSirene = "V3";

Property URL As %String(MAXLEN = 1000) [ InitialExpression = "/entreprises/sirene/V3", Required ];

Property SSLConfig As %String [ InitialExpression = "Insee" ];

/// IP address of the server to send HTTP requests to.
Property HTTPServer As %String(MAXLEN = 1000) [ InitialExpression = "api.insee.fr", Required ];

/// Overriding. The username must be your Insee Application's API Key and the password
Property InseeCredentials As %String [ InitialExpression = "None" ];

/// This is the credentials object for InseeCredentials
Property InseeCredentialsObj As Ens.Config.Credentials;

/// Insee Token to use
Property InseeToken As %String;

Parameter SETTINGS = "InseeCredentials:Basic:credentialsSelector";

Method InseeCredentialsObjSet(pCredentialsPropertyName As %String, pInVal As %String) As %Status
{
	Set tCredentialObjPropName = pCredentialsPropertyName_"Obj"
	#; (Re)Set the Credentials object; do it always because we never know if the source row fields might have been updated
	#; make sure to instantiate even if re-setting to the InitialExpression string
	Set $property($this, tCredentialObjPropName)=$$$NULLOREF

	Set tClassname=$zobjmethod($this,"%ClassName",1) ; call subclass
	Set tClass = $$$comMemberKeyGet(tClassname,$$$cCLASSproperty,tCredentialObjPropName,$$$cPROPtype)
	If ""'=tClass {
		Set tSC=##Class(Ens.Config.Credentials).GetCredentialsObj(.tObj,tClassname,tClass,pInVal)
		If $$$ISOK(tSC) { Set $property($this, tCredentialObjPropName)=tObj }
		ElseIf '$$$StatusEquals(tSC,$$$EnsErrNoCallerCredentials) {
			$$$LOGSTATUS(tSC)
		}
	}
	
	Quit $$$OK
}

Method OnInit() As %Status
{
	Set tSC = $$$OK
	Try
	{
		Kill ^insee.debug
		
        Set tSC = ##class(Grongier.Insee.Utils).CheckSSLConfiguration(..SSLConfig)
        Quit:$$$ISERR(tSC)

		//Set tSC = ..ValidateCredentials()
		Quit:$$$ISERR(tSC)
		
		Set ..InseeToken = ..GetRenewToken(..InseeCredentialsObj)

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

/// Validates that the credential given exists and have valid username and password.
Method ValidateCredentials()
{
	Set tSC = $$$OK
	Try
	{
		If ..InseeCredentials=""
		{
			Set tSC = $$$ERROR(5001,"You must configure your Insee's Application Consumer Credentials (Insee Application's Consumer Key and Consumer Secret).")
			Quit
		}
		
		If '$IsObject(..InseeCredentialsObj) 
		{
			Do ..InseeCredentialsObjSet("InseeCredentials", ..InseeCredentials) 
			If '$IsObject(..InseeCredentialsObj) 
			{ 
				Set tSC=$$$EnsError($$$EnsErrNoCredentials,..InseeCredentials) 
				Quit 
			}
			
			If (..InseeCredentialsObj.Username="") || (..InseeCredentialsObj.Password="")
			{
				Set tSC = $$$ERROR(5001,"Insee Application's Consumer Credential must have a username (consumer key) and a password (consumer secret).")
				Quit
			}
		}
		
		
	}
	Catch (oException)
	{
		Set tSC = oException.AsStatus()
	}
	
	Quit tSC
}

Method GetRenewToken(pInseeCredentialsObj As Ens.Config.Credentials, ByRef oSc) As %String
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

}
