Class MDM.EJFINESS.Table.Finess Extends (%Library.Persistent, Form.Adaptor) [ Not Abstract, DdlAllowed, Not LegacyInstanceContext, ProcedureBlock ]
{

Parameter FORMNAME = "Finess";

Parameter OBJPERMISSIONS As %String = "CRUD";

/// Property used for basic information about the object
/// By default getObjectDisplayName method gets its value from it
Parameter DISPLAYPROPERTY As %String = "displayName";

// Form properties below. Mandatory part above. 

/// The main property describing this object, automatically computes 
/// on insert or update (for SQL) or on save (for object access)
Property displayName As %String(DISPLAYNAME = "Text") [ SqlComputeCode = {set {*} = {nofiness}}, SqlComputed, SqlComputeOnChange = (%%INSERT, %%UPDATE) ];

Property struct As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 2 ];

Property nofiness As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 3 ];

Property rs As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 4 ];

Property rslongue As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 5 ];

Property complrs As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 6 ];

Property numvoie As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 7 ];

Property typvoie As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 8 ];

Property voie As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 9 ];

Property compvoie As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 10 ];

Property compldistrib As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 11 ];

Property lieuditbp As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 12 ];

Property commune As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 13 ];

Property ligneacheminement As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 14 ];

Property departement As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 15 ];

Property libdepartement As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 16 ];

Property telephone As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 17 ];

Property statutjuridique As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 18 ];

Property libstatutjuridique As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 19 ];

Property categetab As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 20 ];

Property libcategetab As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 21 ];

Property siren As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 22 ];

Property codeape As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 23 ];

Property datecrea As %Library.Date [ SqlColumnNumber = 24 ];

Index finess On nofiness [ IdKey, Unique ];

ClassMethod Import(pSelectMode As %Library.Integer = {$zu(115,5)}, pFileName As %Library.String(MAXLEN=""), pDelimiter As %String = ",", pQuote As %String = """", pHeaders As %Integer = 0, ByRef pRecordCount As %Integer) As %Library.Integer [ SqlProc ]
{
	set tStatementId = $SYSTEM.Util.CreateGUID(), tCounter = 0, pRecordCount = 0
	set tPreparedStatement = ##class(%SQL.DynamicStatement).Prepare(tStatementId,..#ROWTYPE,pDelimiter,pQuote,,,0,"CSV")
	if $Isobject(tPreparedStatement) {
		set tImporter = tPreparedStatement.%New(tPreparedStatement,,pFileName,pDelimiter,pQuote)
		if $Isobject(tImporter) {
			do ..%DeleteExtent(,.tDeleted,.tInstances,1)
				// burn the column headers
			for tPtr = 1:1:pHeaders { do tImporter.%Next() }
			while tImporter.%Next() {
				set tMe = ..%New()
				if 'pSelectMode {
					set tMe.struct = tImporter.%GetData(1)
					set tMe.nofiness = tImporter.%GetData(2)
					set tMe.rs = tImporter.%GetData(3)
					set tMe.rslongue = tImporter.%GetData(4)
					set tMe.complrs = tImporter.%GetData(5)
					set tMe.numvoie = tImporter.%GetData(6)
					set tMe.typvoie = tImporter.%GetData(7)
					set tMe.voie = tImporter.%GetData(8)
					set tMe.compvoie = tImporter.%GetData(9)
					set tMe.compldistrib = tImporter.%GetData(10)
					set tMe.lieuditbp = tImporter.%GetData(11)
					set tMe.commune = tImporter.%GetData(12)
					set tMe.ligneacheminement = tImporter.%GetData(13)
					set tMe.departement = tImporter.%GetData(14)
					set tMe.libdepartement = tImporter.%GetData(15)
					set tMe.telephone = tImporter.%GetData(16)
					set tMe.statutjuridique = tImporter.%GetData(17)
					set tMe.libstatutjuridique = tImporter.%GetData(18)
					set tMe.categetab = tImporter.%GetData(19)
					set tMe.libcategetab = tImporter.%GetData(20)
					set tMe.siren = tImporter.%GetData(21)
					set tMe.codeape = tImporter.%GetData(22)
					set tMe.datecrea = tImporter.%GetData(23)
				}
				elseif pSelectMode = 1 {
					set tMe.struct = $s('$system.CLS.IsMthd("structOdbcToLogical"):tImporter.%GetData(1),1:tMe.structOdbcToLogical(tImporter.%GetData(1)))
					set tMe.nofiness = $s('$system.CLS.IsMthd("nofinessOdbcToLogical"):tImporter.%GetData(2),1:tMe.nofinessOdbcToLogical(tImporter.%GetData(2)))
					set tMe.rs = $s('$system.CLS.IsMthd("rsOdbcToLogical"):tImporter.%GetData(3),1:tMe.rsOdbcToLogical(tImporter.%GetData(3)))
					set tMe.rslongue = $s('$system.CLS.IsMthd("rslongueOdbcToLogical"):tImporter.%GetData(4),1:tMe.rslongueOdbcToLogical(tImporter.%GetData(4)))
					set tMe.complrs = $s('$system.CLS.IsMthd("complrsOdbcToLogical"):tImporter.%GetData(5),1:tMe.complrsOdbcToLogical(tImporter.%GetData(5)))
					set tMe.numvoie = $s('$system.CLS.IsMthd("numvoieOdbcToLogical"):tImporter.%GetData(6),1:tMe.numvoieOdbcToLogical(tImporter.%GetData(6)))
					set tMe.typvoie = $s('$system.CLS.IsMthd("typvoieOdbcToLogical"):tImporter.%GetData(7),1:tMe.typvoieOdbcToLogical(tImporter.%GetData(7)))
					set tMe.voie = $s('$system.CLS.IsMthd("voieOdbcToLogical"):tImporter.%GetData(8),1:tMe.voieOdbcToLogical(tImporter.%GetData(8)))
					set tMe.compvoie = $s('$system.CLS.IsMthd("compvoieOdbcToLogical"):tImporter.%GetData(9),1:tMe.compvoieOdbcToLogical(tImporter.%GetData(9)))
					set tMe.compldistrib = $s('$system.CLS.IsMthd("compldistribOdbcToLogical"):tImporter.%GetData(10),1:tMe.compldistribOdbcToLogical(tImporter.%GetData(10)))
					set tMe.lieuditbp = $s('$system.CLS.IsMthd("lieuditbpOdbcToLogical"):tImporter.%GetData(11),1:tMe.lieuditbpOdbcToLogical(tImporter.%GetData(11)))
					set tMe.commune = $s('$system.CLS.IsMthd("communeOdbcToLogical"):tImporter.%GetData(12),1:tMe.communeOdbcToLogical(tImporter.%GetData(12)))
					set tMe.ligneacheminement = $s('$system.CLS.IsMthd("ligneacheminementOdbcToLogical"):tImporter.%GetData(13),1:tMe.ligneacheminementOdbcToLogical(tImporter.%GetData(13)))
					set tMe.departement = $s('$system.CLS.IsMthd("departementOdbcToLogical"):tImporter.%GetData(14),1:tMe.departementOdbcToLogical(tImporter.%GetData(14)))
					set tMe.libdepartement = $s('$system.CLS.IsMthd("libdepartementOdbcToLogical"):tImporter.%GetData(15),1:tMe.libdepartementOdbcToLogical(tImporter.%GetData(15)))
					set tMe.telephone = $s('$system.CLS.IsMthd("telephoneOdbcToLogical"):tImporter.%GetData(16),1:tMe.telephoneOdbcToLogical(tImporter.%GetData(16)))
					set tMe.statutjuridique = $s('$system.CLS.IsMthd("statutjuridiqueOdbcToLogical"):tImporter.%GetData(17),1:tMe.statutjuridiqueOdbcToLogical(tImporter.%GetData(17)))
					set tMe.libstatutjuridique = $s('$system.CLS.IsMthd("libstatutjuridiqueOdbcToLogical"):tImporter.%GetData(18),1:tMe.libstatutjuridiqueOdbcToLogical(tImporter.%GetData(18)))
					set tMe.categetab = $s('$system.CLS.IsMthd("categetabOdbcToLogical"):tImporter.%GetData(19),1:tMe.categetabOdbcToLogical(tImporter.%GetData(19)))
					set tMe.libcategetab = $s('$system.CLS.IsMthd("libcategetabOdbcToLogical"):tImporter.%GetData(20),1:tMe.libcategetabOdbcToLogical(tImporter.%GetData(20)))
					set tMe.siren = $s('$system.CLS.IsMthd("sirenOdbcToLogical"):tImporter.%GetData(21),1:tMe.sirenOdbcToLogical(tImporter.%GetData(21)))
					set tMe.codeape = $s('$system.CLS.IsMthd("codeapeOdbcToLogical"):tImporter.%GetData(22),1:tMe.codeapeOdbcToLogical(tImporter.%GetData(22)))
					set tMe.datecrea = $s('$system.CLS.IsMthd("datecreaOdbcToLogical"):tImporter.%GetData(23),1:tMe.datecreaOdbcToLogical(tImporter.%GetData(23)))
				}
				elseif pSelectMode = 2 {
					set tMe.struct = $s('$system.CLS.IsMthd("structDisplayToLogical"):tImporter.%GetData(1),1:tMe.structDisplayToLogical(tImporter.%GetData(1)))
					set tMe.nofiness = $s('$system.CLS.IsMthd("nofinessDisplayToLogical"):tImporter.%GetData(2),1:tMe.nofinessDisplayToLogical(tImporter.%GetData(2)))
					set tMe.rs = $s('$system.CLS.IsMthd("rsDisplayToLogical"):tImporter.%GetData(3),1:tMe.rsDisplayToLogical(tImporter.%GetData(3)))
					set tMe.rslongue = $s('$system.CLS.IsMthd("rslongueDisplayToLogical"):tImporter.%GetData(4),1:tMe.rslongueDisplayToLogical(tImporter.%GetData(4)))
					set tMe.complrs = $s('$system.CLS.IsMthd("complrsDisplayToLogical"):tImporter.%GetData(5),1:tMe.complrsDisplayToLogical(tImporter.%GetData(5)))
					set tMe.numvoie = $s('$system.CLS.IsMthd("numvoieDisplayToLogical"):tImporter.%GetData(6),1:tMe.numvoieDisplayToLogical(tImporter.%GetData(6)))
					set tMe.typvoie = $s('$system.CLS.IsMthd("typvoieDisplayToLogical"):tImporter.%GetData(7),1:tMe.typvoieDisplayToLogical(tImporter.%GetData(7)))
					set tMe.voie = $s('$system.CLS.IsMthd("voieDisplayToLogical"):tImporter.%GetData(8),1:tMe.voieDisplayToLogical(tImporter.%GetData(8)))
					set tMe.compvoie = $s('$system.CLS.IsMthd("compvoieDisplayToLogical"):tImporter.%GetData(9),1:tMe.compvoieDisplayToLogical(tImporter.%GetData(9)))
					set tMe.compldistrib = $s('$system.CLS.IsMthd("compldistribDisplayToLogical"):tImporter.%GetData(10),1:tMe.compldistribDisplayToLogical(tImporter.%GetData(10)))
					set tMe.lieuditbp = $s('$system.CLS.IsMthd("lieuditbpDisplayToLogical"):tImporter.%GetData(11),1:tMe.lieuditbpDisplayToLogical(tImporter.%GetData(11)))
					set tMe.commune = $s('$system.CLS.IsMthd("communeDisplayToLogical"):tImporter.%GetData(12),1:tMe.communeDisplayToLogical(tImporter.%GetData(12)))
					set tMe.ligneacheminement = $s('$system.CLS.IsMthd("ligneacheminementDisplayToLogical"):tImporter.%GetData(13),1:tMe.ligneacheminementDisplayToLogical(tImporter.%GetData(13)))
					set tMe.departement = $s('$system.CLS.IsMthd("departementDisplayToLogical"):tImporter.%GetData(14),1:tMe.departementDisplayToLogical(tImporter.%GetData(14)))
					set tMe.libdepartement = $s('$system.CLS.IsMthd("libdepartementDisplayToLogical"):tImporter.%GetData(15),1:tMe.libdepartementDisplayToLogical(tImporter.%GetData(15)))
					set tMe.telephone = $s('$system.CLS.IsMthd("telephoneDisplayToLogical"):tImporter.%GetData(16),1:tMe.telephoneDisplayToLogical(tImporter.%GetData(16)))
					set tMe.statutjuridique = $s('$system.CLS.IsMthd("statutjuridiqueDisplayToLogical"):tImporter.%GetData(17),1:tMe.statutjuridiqueDisplayToLogical(tImporter.%GetData(17)))
					set tMe.libstatutjuridique = $s('$system.CLS.IsMthd("libstatutjuridiqueDisplayToLogical"):tImporter.%GetData(18),1:tMe.libstatutjuridiqueDisplayToLogical(tImporter.%GetData(18)))
					set tMe.categetab = $s('$system.CLS.IsMthd("categetabDisplayToLogical"):tImporter.%GetData(19),1:tMe.categetabDisplayToLogical(tImporter.%GetData(19)))
					set tMe.libcategetab = $s('$system.CLS.IsMthd("libcategetabDisplayToLogical"):tImporter.%GetData(20),1:tMe.libcategetabDisplayToLogical(tImporter.%GetData(20)))
					set tMe.siren = $s('$system.CLS.IsMthd("sirenDisplayToLogical"):tImporter.%GetData(21),1:tMe.sirenDisplayToLogical(tImporter.%GetData(21)))
					set tMe.codeape = $s('$system.CLS.IsMthd("codeapeDisplayToLogical"):tImporter.%GetData(22),1:tMe.codeapeDisplayToLogical(tImporter.%GetData(22)))
					set tMe.datecrea = $s('$system.CLS.IsMthd("datecreaDisplayToLogical"):tImporter.%GetData(23),1:tMe.datecreaDisplayToLogical(tImporter.%GetData(23)))
				}
				set tStatus = tMe.%Save()
				if $$$ISOK(tStatus) { set tCounter = tCounter + 1 }
			}
		}
	}
	set %sqlcontext.%SQLCODE = 0
	set %sqlcontext.%ROWCOUNT = tCounter
	set pRecordCount = tCounter
	quit tCounter
}

Parameter ROWTYPE = "struct VARCHAR(250),nofiness INTEGER,rs VARCHAR(250),rslongue VARCHAR(250),complrs VARCHAR(250),numvoie INTEGER,typvoie VARCHAR(250),voie VARCHAR(250),compvoie VARCHAR(250),compldistrib VARCHAR(250),lieuditbp VARCHAR(250),commune INTEGER,ligneacheminement VARCHAR(250),departement INTEGER,libdepartement VARCHAR(250),telephone INTEGER,statutjuridique INTEGER,libstatutjuridique VARCHAR(250),categetab VARCHAR(250),libcategetab VARCHAR(250),siren INTEGER,codeape VARCHAR(250),datecrea DATE";

Storage Default
{
<Data name="FinessDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>struct</Value>
</Value>
<Value name="3">
<Value>nofiness</Value>
</Value>
<Value name="4">
<Value>rs</Value>
</Value>
<Value name="5">
<Value>rslongue</Value>
</Value>
<Value name="6">
<Value>complrs</Value>
</Value>
<Value name="7">
<Value>numvoie</Value>
</Value>
<Value name="8">
<Value>typvoie</Value>
</Value>
<Value name="9">
<Value>voie</Value>
</Value>
<Value name="10">
<Value>compvoie</Value>
</Value>
<Value name="11">
<Value>compldistrib</Value>
</Value>
<Value name="12">
<Value>lieuditbp</Value>
</Value>
<Value name="13">
<Value>commune</Value>
</Value>
<Value name="14">
<Value>ligneacheminement</Value>
</Value>
<Value name="15">
<Value>departement</Value>
</Value>
<Value name="16">
<Value>libdepartement</Value>
</Value>
<Value name="17">
<Value>telephone</Value>
</Value>
<Value name="18">
<Value>statutjuridique</Value>
</Value>
<Value name="19">
<Value>libstatutjuridique</Value>
</Value>
<Value name="20">
<Value>categetab</Value>
</Value>
<Value name="21">
<Value>libcategetab</Value>
</Value>
<Value name="22">
<Value>siren</Value>
</Value>
<Value name="23">
<Value>codeape</Value>
</Value>
<Value name="24">
<Value>datecrea</Value>
</Value>
<Value name="25">
<Value>displayName</Value>
</Value>
</Data>
<DataLocation>^MDM.EJFINESS.Table.FinessD</DataLocation>
<DefaultData>FinessDefaultData</DefaultData>
<IdLocation>^MDM.EJFINESS.Table.FinessD</IdLocation>
<IndexLocation>^MDM.EJFINESS.Table.FinessI</IndexLocation>
<StreamLocation>^MDM.EJFINESS.Table.FinessS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
