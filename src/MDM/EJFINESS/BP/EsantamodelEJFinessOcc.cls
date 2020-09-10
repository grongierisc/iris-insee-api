/// 
Class MDM.EJFINESS.BP.EsantamodelEJFinessOcc Extends Ens.BusinessProcessBPL
{

Property OffSet As %String;

Parameter SETTINGS = "OffSet";

Storage Default
{
<Data name="EsantamodelEJFinessOccDefaultData">
<Subscript>"EsantamodelEJFinessOcc"</Subscript>
<Value name="1">
<Value>OffSet</Value>
</Value>
</Data>
<DefaultData>EsantamodelEJFinessOccDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='EsantamodelEJFinessOccAddRequest' type='MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccAddRequest' instantiate='0' />
<property name='tDT' type='MDM.EJFINESS.REST.Definition.esantamodelEJFinessOccAddRequest' instantiate='0' />
</context>
<sequence xend='200' yend='550' >
<transform name='DT' class='MDM.EJFINESS.DT.CsvToObj' source='request' target='context.tDT' xpos='200' ypos='250' />
<call name='Post WS' target='MDM.EJFINESS.REST.Operation' async='0' xpos='200' ypos='450' >
<request type='MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccAddRequest' >
<assign property="callrequest" value="context.tDT" action="set" />
</request>
<response type='Ens.Response' />
</call>
</sequence>
</process>
}

}
