Class MDM.EJFINESS.DT.SirenToObj Extends Ens.DataTransformDTL [ DependsOn = (Grongier.Insee.Msg.GetSirenResponse, MDM.EJFINESS.REST.Definition.esantamodelEJFinessOcc) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='Grongier.Insee.Msg.GetSirenResponse' targetClass='MDM.EJFINESS.REST.Definition.esantamodelEJFinessOcc' create='existing' language='objectscript' >
<assign value='source.uniteLegale.categorieEntreprise' property='target.orgCategoryCode' action='set' />
<assign value='..ConvertDateTime(source.uniteLegale.dateCreationUniteLegale,"%Y-%m-%d","%Y-%m-%dT00:00:00Z")' property='target.orgCreateDate' action='set' />
<if condition='$IsObject(target.APE)' >
<true>
<assign value='""' property='target.APE.ts' action='set' />
</true>
</if>
<if condition='$IsObject(target.jurStatus)' >
<true>
<assign value='""' property='target.jurStatus.ts' action='set' />
</true>
</if>
</transform>
}

}
