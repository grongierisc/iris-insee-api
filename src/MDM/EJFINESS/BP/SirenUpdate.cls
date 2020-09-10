/// 
Class MDM.EJFINESS.BP.SirenUpdate Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccGetRequest' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='tPayload' type='MDM.EJFINESS.REST.Definition.esantamodelEJFinessOcc' instantiate='0' />
<property name='tSiren' type='Grongier.Insee.Msg.GetSirenResponse' instantiate='0' />
<property name='tPut' type='MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccPutRequest' instantiate='0' />
</context>
<sequence xend='200' yend='1450' >
<call name='Get EJFINESS' target='MDM.EJFINESS.REST.Operation' async='0' xpos='200' ypos='250' >
<request type='Ens.Request' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccGetResponse' >
<assign property="context.tPayload" value="callresponse.payload" action="set" />
</response>
</call>
<if name='IsSIREN?' condition='context.tPayload.codeSIREN&apos;=""' xpos='200' ypos='350' xend='200' yend='1350' >
<true>
<scope xpos='335' ypos='500' xend='335' yend='1050' >
<call name='Get Siren' target='Grongier.Insee.Operation' async='0' xpos='335' ypos='600' >
<request type='Ens.StringRequest' >
<assign property="callrequest.StringValue" value="context.tPayload.codeSIREN" action="set" />
</request>
<response type='Grongier.Insee.Msg.GetSirenResponse' >
<assign property="context.tSiren" value="callresponse" action="set" />
</response>
</call>
<transform name='SirenToObj' class='MDM.EJFINESS.DT.SirenToObj' source='context.tSiren' target='context.tPayload' xpos='335' ypos='700' />
<call name='Put Update' target='MDM.EJFINESS.REST.Operation' async='0' xpos='335' ypos='800' >
<request type='MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccPutRequest' >
<assign property="callrequest.payload" value="context.tPayload" action="set" />
<assign property="callrequest.initSystemRecordId" value="context.tPayload.initSystemRecordId" action="set" />
<assign property="callrequest.systemGUID" value="&quot;BA6A079E-EECD-11EA-A221-0242AC110006&quot;" action="set" />
</request>
<response type='Ens.Response' />
</call>
<faulthandlers>
<catchall xpos='335' ypos='900' xend='200' yend='350' >
<assign name="Set Response" property="response" value="##class(Ens.StringResponse).%New(&quot;Pas de Siren&quot;)" action="set" xpos='200' ypos='250' />
</catchall>
</faulthandlers>
</scope>
</true>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
