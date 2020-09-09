/// Forwards contents of an HTTP request to a remote HTTP service and sends the HTTP response as its reply message
Class Grongier.Insee.Operation Extends Ens.BusinessOperation [ System = 4 ]
{

Parameter ADAPTER = "Grongier.Insee.Adapter";

Property Adapter As Grongier.Insee.Adapter;

Method GetInformations(pResquest As Ens.Request, Output pResponse As Ens.StringContainer) As %Status
{

    Set tURL = ..Adapter.URL
    Set tURL = tURL_"/informations"

    $$$ThrowOnError(..Adapter.GetURLInsee(tURL,.tHttpResponse))

    Set pResponse = ##class(Ens.StringContainer).%New({}.%FromJSON(tHttpResponse.Data).%ToJSON())

    Quit $$$OK
}

Method GetSirenById(pResquest As Ens.Request, Output pResponse As Ens.StringContainer) As %Status
{

    Set tURL = ..Adapter.URL
    Set tURL = tURL_"/siren/"_pResquest.StringValue

    $$$ThrowOnError(..Adapter.GetURLInsee(tURL,.tHttpResponse))

    Set pResponse = ##class(Ens.StringContainer).%New({}.%FromJSON(tHttpResponse.Data).%ToJSON())

    Quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="Ens.StringRequest"> 
		<Method>GetSirenById</Method>
	</MapItem>
	<MapItem MessageType="Ens.Request"> 
		<Method>GetInformations</Method>
	</MapItem>

</MapItems>
}

}
