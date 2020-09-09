Class MDM.EJFINESS.DT.CsvToObj Extends Ens.DataTransformDTL [ DependsOn = (MDM.EJFINESS.Record.Record, MDM.WS.EJ.tns.EJFinessOcc) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='MDM.EJFINESS.Record.Record' targetClass='MDM.WS.EJ.tns.EJFinessOcc' create='new' language='objectscript' >
<assign value='source.NuméroFINESSEJ' property='target.codeFINESSEJ' action='set' />
<assign value='source.Raisonsociale' property='target.orgName' action='set' />
<assign value='source.Raisonsocialelongue' property='target.orgFullName' action='set' />
<assign value='source.Complémentraisonsociale' property='target.orgNameAdditional' action='set' />
<assign value='source.Codestatutjuridique' property='target.jurStatus.code' action='set' />
<assign value='source.Libellécourtstatutjuridique' property='target.jurStatus.shortName' action='set' />
<assign value='source.Libelléstatutjuridique' property='target.jurStatus.name' action='set' />
<assign value='..ConvertDateTime(source.Datecréation,"%d/%m/%y")' property='target.orgCreateDate' action='set' />
<assign value='..ConvertDateTime(source.Datemàjstructure,"%d/%m/%y") ' property='target.orgUpdateDate' action='set' />
<assign value='..ConvertDateTime(source.Datefermeture,"%d/%m/%y")' property='target.liquidateDate' action='set' />
<assign value='source.Typefermeture' property='target.liquidateType' action='set' />
<assign value='source.Qualificationcréation' property='target.creationType' action='set' />
<assign value='source.Complémentdestinataire' property='target.info' action='set' />
<assign value='source.Complémentpointgéographique' property='target.geoInfo' action='set' />
<assign value='source.Numérovoie' property='target.houseNum' action='set' />
<assign value='source.Indicerépétitionvoie' property='target.buildNum' action='set' />
<assign value='source.Codetypedevoie' property='target.streetType' action='set' />
<assign value='source.Libellétypedevoie' property='target.streetTypeName' action='set' />
<assign value='source.Libellévoie' property='target.streetName' action='set' />
<assign value='source.Mentiondistribution' property='target.mentionDistribution' action='set' />
<assign value='source.CodePostal' property='target.postalCode' action='set' />
<assign value='source.Bureaucedex' property='target.orgPostCode' action='set' />
<assign value='source.Codecommune' property='target.locationCode' action='set' />
<assign value='source.Libellécommune' property='target.locationName' action='set' />
<assign value='source.Libellécourtcommune' property='target.locationShortName' action='set' />
<assign value='source.Codedépartement' property='target.deptCode' action='set' />
<assign value='source.Libellédépartement' property='target.deptName' action='set' />
<assign value='source.Codepays' property='target.countryCode' action='set' />
<assign value='source.Libellépays' property='target.countryName' action='set' />
<assign value='source.Téléphone' property='target.phone' action='set' />
<assign value='source.Téléphone2' property='target.phon2' action='set' />
<assign value='source.Télécopie' property='target.fax' action='set' />
<assign value='source.Adressemail' property='target.email' action='set' />
<assign value='source.CodecatégorieEtablissement' property='target.orgCategoryCode' action='set' />
<assign value='source.LibellécatégorieEtablissement' property='target.orgCategoryName' action='set' />
<assign value='source.LibellécourtcatégorieEtablissement' property='target.orgCategoryShortName' action='set' />
<assign value='source.NuméroSIREN' property='target.codeSIREN' action='set' />
<assign value='..ConvertDateTime(source.DatemodificationSIREN,"%d/%m/%y")' property='target.changeDateSIREN' action='set' />
<assign value='source.OriginemodificationSIREN' property='target.changeReasonSIREN' action='set' />
<assign value='source.CodeAPE' property='target.APE.code' action='set' />
<assign value='source.LibelléAPE' property='target.APE.name' action='set' />
<assign value='"BA6A079E-EECD-11EA-A221-0242AC110006"' property='target.systemGUID' action='set' />
</transform>
}

}
