Class MDM.EJFINESS.DT.CsvToObj Extends Ens.DataTransformDTL [ DependsOn = (MDM.EJFINESS.RM.CSV.Record, MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccAddRequest) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='MDM.EJFINESS.RM.CSV.Record' targetClass='MDM.EJFINESS.REST.Msg.EsantamodelEJFinessOccAddRequest' create='new' language='objectscript' >
<assign value='source.NuméroFINESSEJ' property='target.payload.codeFINESSEJ' action='set' />
<assign value='source.Raisonsociale' property='target.payload.orgName' action='set' />
<assign value='source.Raisonsocialelongue' property='target.payload.orgFullName' action='set' />
<assign value='source.Complémentraisonsociale' property='target.payload.orgNameAdditional' action='set' />
<assign value='source.Codestatutjuridique' property='target.payload.jurStatus.code' action='set' />
<assign value='source.Libellécourtstatutjuridique' property='target.payload.jurStatus.shortName' action='set' />
<assign value='source.Libelléstatutjuridique' property='target.payload.jurStatus.name' action='set' />
<assign value='..ConvertDateTime(source.Datecréation,"%d/%m/%Y","%Y-%m-%dT00:00:00Z")' property='target.payload.orgCreateDate' action='set' />
<assign value='..ConvertDateTime(source.Datemàjstructure,"%d/%m/%Y","%Y-%m-%dT00:00:00Z")' property='target.payload.orgUpdateDate' action='set' />
<assign value='..ConvertDateTime(source.Datefermeture,"%d/%m/%Y","%Y-%m-%dT00:00:00Z")' property='target.payload.liquidateDate' action='set' />
<assign value='source.Typefermeture' property='target.payload.liquidateType' action='set' />
<assign value='source.Qualificationcréation' property='target.payload.creationType' action='set' />
<assign value='source.Complémentdestinataire' property='target.payload.info' action='set' />
<assign value='source.Complémentpointgéographique' property='target.payload.geoInfo' action='set' />
<assign value='source.Numérovoie' property='target.payload.houseNum' action='set' />
<assign value='source.Indicerépétitionvoie' property='target.payload.buildNum' action='set' />
<assign value='source.Codetypedevoie' property='target.payload.streetType' action='set' />
<assign value='source.Libellétypedevoie' property='target.payload.streetTypeName' action='set' />
<assign value='source.Libellévoie' property='target.payload.streetName' action='set' />
<assign value='source.Mentiondistribution' property='target.payload.mentionDistribution' action='set' />
<assign value='source.CodePostal' property='target.payload.postalCode' action='set' />
<assign value='source.Bureaucedex' property='target.payload.orgPostCode' action='set' />
<assign value='source.Codecommune' property='target.payload.locationCode' action='set' />
<assign value='source.Libellécommune' property='target.payload.locationName' action='set' />
<assign value='source.Libellécourtcommune' property='target.payload.locationShortName' action='set' />
<assign value='source.Codedépartement' property='target.payload.deptCode' action='set' />
<assign value='source.Libellédépartement' property='target.payload.deptName' action='set' />
<assign value='source.Codepays' property='target.payload.countryCode' action='set' />
<assign value='source.Libellépays' property='target.payload.countryName' action='set' />
<assign value='source.Téléphone' property='target.payload.phone' action='set' />
<assign value='source.Téléphone2' property='target.payload.phon2' action='set' />
<assign value='source.Télécopie' property='target.payload.fax' action='set' />
<assign value='source.Adressemail' property='target.payload.email' action='set' />
<assign value='source.CodecatégorieEtablissement' property='target.payload.orgCategoryCode' action='set' />
<assign value='source.LibellécatégorieEtablissement' property='target.payload.orgCategoryName' action='set' />
<assign value='source.LibellécourtcatégorieEtablissement' property='target.payload.orgCategoryShortName' action='set' />
<assign value='source.NuméroSIREN' property='target.payload.codeSIREN' action='set' />
<assign value='..ConvertDateTime(source.DatemodificationSIREN,"%d/%m/%Y","%Y-%m-%dT00:00:00Z")' property='target.payload.changeDateSIREN' action='set' />
<assign value='source.OriginemodificationSIREN' property='target.payload.changeReasonSIREN' action='set' />
<assign value='source.CodeAPE' property='target.payload.APE.code' action='set' />
<assign value='source.LibelléAPE' property='target.payload.APE.name' action='set' />
<assign value='"BA6A079E-EECD-11EA-A221-0242AC110006"' property='target.systemGUID' action='set' />
</transform>
}

}
