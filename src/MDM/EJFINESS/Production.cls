Class MDM.EJFINESS.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="MDM.EJFINESS.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="SRRI.CSV" Category="" ClassName="EnsLib.RecordMap.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="RecordMap">SRRI.PresMSG</Setting>
    <Setting Target="Host" Name="TargetConfigNames">SRRI.routerRoutingRule</Setting>
    <Setting Target="Adapter" Name="ArchivePath">/tmp/occitanie/out/</Setting>
    <Setting Target="Adapter" Name="FilePath">/tmp/occitanie/in/</Setting>
    <Setting Target="Adapter" Name="FileSpec">*.csv</Setting>
    <Setting Target="Adapter" Name="Charset">utf-8</Setting>
  </Item>
  <Item Name="MDM.EJFINESS.BP.EsantamodelEJFinessOcc" Category="" ClassName="MDM.EJFINESS.BP.EsantamodelEJFinessOcc" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="OffSet">test</Setting>
  </Item>
  <Item Name="MDM.EJFINESS.REST.Operation" Category="" ClassName="MDM.EJFINESS.REST.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPPort">7721</Setting>
    <Setting Target="Adapter" Name="HTTPServer">test.iris.kanosoftware.net</Setting>
    <Setting Target="Adapter" Name="URL">/mdm/restapi</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
  </Item>
  <Item Name="MDM.EJFINESS.CSV" Category="" ClassName="EnsLib.RecordMap.Service.BatchFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BatchClass">MDM.EJFINESS.RM.CSV.Batch</Setting>
    <Setting Target="Host" Name="RecordMap">MDM.EJFINESS.RM.CSV</Setting>
    <Setting Target="Host" Name="TargetConfigNames">MDM.EJFINESS.BP.EsantamodelEJFinessOcc</Setting>
    <Setting Target="Adapter" Name="ArchivePath">/tmp/mdm/out/</Setting>
    <Setting Target="Adapter" Name="Charset">utf-8</Setting>
    <Setting Target="Adapter" Name="FilePath">/tmp/mdm/in/</Setting>
  </Item>
  <Item Name="MDM.EJFINESS.BP.SirenUpdate" Category="" ClassName="MDM.EJFINESS.BP.SirenUpdate" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Grongier.Insee.Operation" Category="" ClassName="Grongier.Insee.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Credentials">Insee</Setting>
  </Item>
  <Item Name="IHEPAM.FILE.OUT" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Filename">%f_%Q.HL7</Setting>
    <Setting Target="Adapter" Name="FilePath">/tmp/occitanie/out/</Setting>
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Adapter" Name="Charset">utf-8</Setting>
  </Item>
  <Item Name="IHEPAM.TCP.OUT" Category="" ClassName="EnsLib.HL7.Operation.TCPOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="IPAddress">localhost</Setting>
    <Setting Target="Adapter" Name="Port">8085</Setting>
    <Setting Target="Host" Name="AlertOnError">1</Setting>
  </Item>
  <Item Name="SRRI.routerRoutingRule" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">SRRI.routerRoutingRule</Setting>
  </Item>
</Production>
}

}
