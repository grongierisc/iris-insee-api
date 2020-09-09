/// This class is generated by the MDM.EJFINESS.BP.EsantamodelEJFinessOcc BPL class.
/// This class should not be edited or modified in any way.
/// Do not make direct use of this class in your application.
Class MDM.EJFINESS.BP.EsantamodelEJFinessOcc.Thread1 Extends Ens.BP.Thread [ ClassType = persistent, CompileAfter = MDM.EJFINESS.BP.EsantamodelEJFinessOcc, GeneratedBy = Ens.BPL.Compiler.CLS, ProcedureBlock ]
{

Method S1(process As Ens.BusinessProcess, context As Ens.BP.Context, synctimedout As %Boolean, syncresponses As %ArrayOfObjects(ELEMENTTYPE="%Library.Persistent"), request As %Library.Persistent, response As %Library.Persistent) As %Status [ Language = objectscript, PublicList = (process, context) ]
{
 Set $ZT="Trap",status=$$$OK do {
 Set iscTemp=context.payload
 Set status=$classmethod("MDM.EJFINESS.CsvToObj","Transform",request,.iscTemp,"")
 If $$$ISERR(status) Quit
 Set context.payload=iscTemp
 Do ##class(Ens.DataTransform).instantiateProps(context,"context.tEsantamodelEJFinessOcc.systemGUID")
 Set status=$$$OK,context.tEsantamodelEJFinessOcc.systemGUID="BA6A079E-EECD-11EA-A221-0242AC110006"
 If $$$ISERR(status) Quit
 Do ##class(Ens.DataTransform).instantiateProps(context,"context.tEsantamodelEJFinessOcc.payload")
 Set status=$$$OK,context.tEsantamodelEJFinessOcc.payload=context.payload
 If $$$ISERR(status) Quit
 #; --- Begin Call Post WS ---
 #; --- Begin Request ---
 Set callrequest=##class(MDM.WS.EJ.Request.entityRecordAddRequest).%New()
 If '$IsObject(callrequest) Set status=%objlasterror Quit
 Set status=$$$OK,callrequest=context.tEsantamodelEJFinessOcc
 If $$$ISERR(status) Quit
 Set status=..MakeAsyncCall("","MDM.WS.EJ.Operation.WebServiceSoap",callrequest,"Post WS",1,0,"Post WS",1)
 If $$$ISERR(status) Quit
 Kill callrequest
 #; --- End Request ---
 #; --- End Call Post WS ---
 Do ..%PendingResponses.Clear(),..%SyncResponses.Clear()
 Set ..%SyncTimedOut=0,..%PendingTimeout="",..%PendingAlarmHandle="",..%SyncName=""
 If ..%Process.IsResponsePending("Post WS") Do ..%PendingResponses.SetAt("","Post WS")
 If ..%PendingResponses.Count()=0 {
    Set ..%NextState="S3"
 } else {
    Set ..%NextState="S2",..%Wait=1
 }
 } while (0)
Exit Quit ..ManageState(status)
Trap Set $ZT="",status=..ManageStatus(status,"S1") Goto Exit
}

Method S2(process As Ens.BusinessProcess, context As Ens.BP.Context, synctimedout As %Boolean, syncresponses As %ArrayOfObjects(ELEMENTTYPE="%Library.Persistent"), request As %Library.Persistent, response As %Library.Persistent) As %Status [ Language = objectscript, PublicList = (process, context) ]
{
 Set $ZT="Trap",status=$$$OK do {
 If ..%PendingResponses.Count()=0 {
    Set ..%NextState="S3"
 } else {
    Set ..%NextState="S2",..%Wait=1
 }
 } while (0)
Exit Quit ..ManageState(status)
Trap Set $ZT="",status=..ManageStatus(status,"S2") Goto Exit
}

Method S3(process As Ens.BusinessProcess, context As Ens.BP.Context, synctimedout As %Boolean, syncresponses As %ArrayOfObjects(ELEMENTTYPE="%Library.Persistent"), request As %Library.Persistent, response As %Library.Persistent) As %Status [ Language = objectscript, PublicList = (process, context) ]
{
 Set $ZT="Trap",status=$$$OK do {
 Do process.ClearAllPendingResponses()
 Set ..%NextState="Stop"
 } while (0)
Exit Quit ..ManageState(status)
Trap Set $ZT="",status=..ManageStatus(status,"S3") Goto Exit
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}