/// Forwards contents of an HTTP request to a remote HTTP service and sends the HTTP response as its reply message
Class Grongier.Insee.Operation Extends Ens.BusinessOperation [ System = 4 ]
{

Parameter ADAPTER = "Grongier.Insee.Adapter";

/// Holds request object used to submit requests and get reponses
Property %HttpRequest As %Net.HttpRequest [ Internal ];

/// This user callback method is called via initConfig() from %OnNew() or in the case of SOAP Services from OnPreSOAP()
Method OnInit() As %Status
{
    Set ..%HttpRequest=##class(%Net.HttpRequest).%New()

	do ##super()
	Quit $$$OK
}

Method OnMessage() As %Status
{
    Quit $$$OK
}

Method GetInformations(pResquest As Ens.Request, Output pResponse As Ens.StringContainer) As %Status
{

    Set tURL = ..Adapter.URL
    Set tURL = tURL_"/informations"
    $$$ThrowOnError(..Adapter.GetURL(tURL,.tHttpResponse))

    Set pResponse = ##class(Ens.StringContainer).%New(tHttpResponse.Data)

    Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Ens.Request"> 
		<Method>GetInformations</Method>
	</MapItem>
</MapItems>
}

}
