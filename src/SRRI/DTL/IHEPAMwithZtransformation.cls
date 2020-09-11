Class SRRI.DTL.IHEPAMwithZtransformation Extends Ens.DataTransformDTL [ DependsOn = (SRRI.PresMSG.Record, EnsLib.HL7.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='SRRI.PresMSG.Record' targetClass='EnsLib.HL7.Message' targetDocType='2.5:ADT_A05' create='new' language='objectscript' >
<assign value='"ADT_A05"' property='target.{MSH:MessageType.MessageStructure}' action='set' />
<code>
<![CDATA[ 
  set time1 =  $ZDATETIME($HOROLOG,8)
  set time2 = $extract(time1,1,8)
  set y = $extract(time1,10,14)
  set f = $replace(y,":","")
  set timesz = time2_f
]]></code>
<assign value='"ADT"' property='target.{MSH:MessageType.MessageCode}' action='set' />
<assign value='"A31"' property='target.{MSH:MessageType.TriggerEvent}' action='set' />
<assign value='"A31"' property='target.{EVN:EventTypeCode}' action='set' />
<assign value='"test"' property='target.{EVN:EventReasonCode}' action='set' />
<assign value='##class(SRRI.DTL.Functions).ReplaceVoyels(source.Nom,"Z")' property='target.{PID:PatientName(1).FamilyName}' action='set' />
<assign value='##class(SRRI.DTL.Functions).ReplaceVoyels(source.Prénom,"Z")' property='target.{PID:PatientName(1).GivenName}' action='set' />
<assign value='source.Datedenaissance' property='target.{PID:DateTimeofBirth}' action='set' />
<assign value='source.sexe' property='target.{PID:AdministrativeSex}' action='set' />
<assign value='source.Paysdenaissance' property='target.{PID:BirthPlace}' action='set' />
<assign value='source.AdresseruecodepostalvilleToulouse' property='target.{PID:PatientAddress(1).StreetAddress}' action='set' />
<assign value='source.Villedenaissance' property='target.{PID:PatientAddress(1).City}' action='set' />
<assign value='source.Codepostaldenaissance' property='target.{PID:PatientAddress(1).CountyParishCode}' action='set' />
<assign value='source.numérodetéléphonefixe' property='target.{PID:PhoneNumberHome(1)}' action='set' />
<assign value='source.numérodetéléphoneportable' property='target.{PID:PhoneNumberBusiness(1)}' action='set' />
<assign value='"^~\&amp;"' property='target.{MSH:FieldSeparator}' action='set' />
<assign value='"SRRI"' property='target.{MSH:ReceivingFacility}' action='set' />
<assign value='"TEST"' property='target.{MSH:SendingFacility}' action='set' />
<assign value='timesz' property='target.{MSH:DateTimeOfMessage}' action='set' />
<assign value='timesz' property='target.{EVN:RecordedDateTime}' action='set' />
<assign value='"N"' property='target.{PV1:PatientClass}' action='set' />
<assign value='source.IPPLocal_"^^^&amp;2.2.250.1.257.2.13.020000287.10.1&amp;ISO^PI^CH Occitanie&amp;020000287&amp;FINEJ"' property='target.{PID:PatientIdentifierList(1).IDNumber}' action='set' />
<assign value='source.INSC_"^^^ASIP-SANTE-INS-C&amp;1.2.250.1.213.1.4.2&amp;ISO^INS-C^^20200911161456"' property='target.{PID:PatientIdentifierList(2).IDNumber}' action='set' />
</transform>
}

}
