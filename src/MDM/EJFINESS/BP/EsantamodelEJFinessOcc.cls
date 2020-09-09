/// 
Class MDM.EJFINESS.BP.EsantamodelEJFinessOcc Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='tEsantamodelEJFinessOcc' type='MDM.WS.EJ.Request.entityRecordAddRequest' instantiate='0' />
<property name='payload' type='MDM.WS.EJ.tns.EJFinessOcc' instantiate='0' />
</context>
<sequence xend='200' yend='650' >
<transform name='DT' class='MDM.EJFINESS.CsvToObj' source='request' target='context.payload' xpos='200' ypos='250' />
<assign name="set GUID" property="context.tEsantamodelEJFinessOcc.systemGUID" value="&quot;BA6A079E-EECD-11EA-A221-0242AC110006&quot;" action="set" xpos='200' ypos='350' />
<assign name="Payload" property="context.tEsantamodelEJFinessOcc.payload" value="context.payload" action="set" xpos='200' ypos='450' />
<call name='Post WS' target='MDM.WS.EJ.Operation.WebServiceSoap' async='0' xpos='200' ypos='550' >
<request type='MDM.WS.EJ.Request.entityRecordAddRequest' >
<assign property="callrequest" value="context.tEsantamodelEJFinessOcc" action="set" />
</request>
<response type='Ens.Response' />
</call>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
