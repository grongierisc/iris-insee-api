Class MDM.EJFINESS.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="MDM.EJFINESS.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="MDM.EJFINESS.BP.EsantamodelEJFinessOcc" Category="" ClassName="MDM.EJFINESS.BP.EsantamodelEJFinessOcc" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="MDM.EJFINESS.REST.Operation" Category="" ClassName="MDM.EJFINESS.REST.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPPort">7721</Setting>
    <Setting Target="Adapter" Name="HTTPServer">test.iris.kanosoftware.net</Setting>
    <Setting Target="Adapter" Name="URL">/mdm/restapi</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
  </Item>
  <Item Name="EnsLib.RecordMap.Service.BatchFileService" Category="" ClassName="EnsLib.RecordMap.Service.BatchFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BatchClass">MDM.EJFINESS.RM.CSV.Batch</Setting>
    <Setting Target="Host" Name="RecordMap">MDM.EJFINESS.RM.CSV</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MDM.EJFINESS.BP.EsantamodelEJFinessOcc</Setting>
    <Setting Target="Adapter" Name="ArchivePath">/tmp/mdm/out/</Setting>
    <Setting Target="Adapter" Name="Charset">utf-8</Setting>
    <Setting Target="Adapter" Name="FilePath">/tmp/mdm/in/</Setting>
  </Item>
</Production>
}

}
