/// RECORDMAP: Modified during compilation of RecordMap 'MDM.EJFINESS.Record'
/// on 2020-09-08 at 17:05:44.434 [2020-09-08 17:05:44.434 UTC]
/// by user SuperUser
Class MDM.EJFINESS.Record Extends EnsLib.RecordMap.RecordMap
{

Parameter OBJECTNAME = "MDM.EJFINESS.Record.Record";

/// Method to retrieve a record from a stream or device. This method will be generated based on the
/// structure of the RecordMap. For testing purposes, a file name may be passed in the pStream argument.
ClassMethod GetObject(pStream As %IO.DeviceStream, Output pObject As %RegisteredObject, pTimeout As %Numeric = -1, ByRef pLookAhead As %String = "", pLabelFound As %Boolean = 0) As %Status
{
	Try {
		Set tStatus = $$$OK
		Set pObject = $$$NULLOREF
		If '$IsObject(pStream) {
			Set tFilename = pStream
			Set pStream = ##class(%IO.FileStream).%New()
			Do pStream.Open(tFilename,,pTimeout,"UTF-8", .tStatus)
			If $$$ISERR(tStatus) Quit
		}
		Set tObjectName = $parameter($this,"OBJECTNAME")
		Set tObject = $classmethod(tObjectName,"%New")
		If '$IsObject(tObject) {
			Set tStatus = $$$ERROR($$$CannotCreateObject,tObjectName)
			Quit
		}
		Set tObject.%Source = pStream.Name
		Set tGetTopFields = $parameter(tObject,"INCLUDETOPFIELDS")
		If pStream.AtEnd && (""=pLookAhead) {
			Set tStatus = $$$ERROR($$$EnsRecordMapErrStreamAtEnd, pStream.Name)
			Quit
		}
		Set pStream.CharEncoding = "UTF-8"

		#; Parse incoming stream
		Set tStatus = ..GetRecord(pStream, tObject, tGetTopFields, pTimeout, .pLookAhead, pLabelFound)
		If $$$ISERR(tStatus) Quit
	}
	Catch ex {
		Set tStatus = ex.AsStatus()
	}
	If $$$ISERR(tStatus) { Set pObject = $$$NULLOREF }
	Else { Set pObject = tObject }
	Quit tStatus
}

/// Method to write a record to a stream or device. This method will be generated based on the
/// structure of the RecordMap. For testing purposes, a file name may be passed in the pStream argument.
ClassMethod PutObject(pStream As %IO.DeviceStream, pObject As %RegisteredObject, pFlush As %Boolean = 1, ByRef pPadArray As %String) As %Status
{
	Try {
		Set tStatus = $$$OK
		If '$IsObject(pStream) {
			Set tFilename = pStream
			Set pStream = ##class(%IO.FileStream).%New()
			Do pStream.Open(tFilename,"WAE",,"UTF-8", .tStatus)
			If $$$ISERR(tStatus) Quit
		}
		Set tHasTopFields = $parameter(pObject,"INCLUDETOPFIELDS")
		Set pStream.CharEncoding = "UTF-8"

		Set tStatus = ..PutRecord(pStream, pObject, tHasTopFields, .pPadArray)
		If $$$ISERR(tStatus) Quit
		If pFlush Do pStream.Flush(.tStatus)
		If $$$ISERR(tStatus) Quit
	}
	Catch ex {
		Set tStatus = ex.AsStatus()
	}
	Quit tStatus
}

/// Internal helper method to perform parse of incoming data
ClassMethod GetRecord(pStream As %IO.DeviceStream, pObject As %RegisteredObject, pGetTopFields As %Boolean, pTimeout As %Numeric, ByRef pLookAhead As %String = "", pLabelFound As %Boolean = 0) As %Status [ Internal, Private ]
{
	Set tStatus = $$$OK
	If pLabelFound { Set tRecLabel = "" } 
	Else { Set tRecLabel = "" } 
	Set tStatus = ..chunkRecord(pStream, .tRecordData, .tCharCount, "", pTimeout, $char(10), tRecLabel, .pLookAhead, "")
	If $$$ISERR(tStatus) Quit tStatus
	Set tMaxLocal = $$$MaxLocalLength
	Set tRecordData("charcount") = +$get(tCharCount)
	Set tCurrChunk = 1
	Set tTopPiece = 1
	Set tCurrSep = 1
	Set tStrings = 1
	Set tCurrString = ""
	Set tSeps = $listbuild($char(59))
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Else {
		Set tCurrString = tRecordData(tCurrChunk)
		Set tCurrPiece = 1
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.NuméroFINESSEJ = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Raisonsociale = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Raisonsocialelongue = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Complémentraisonsociale = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Codestatutjuridique = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Libelléstatutjuridique = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Libellécourtstatutjuridique = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.CodecatégorieEtablissement = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.LibellécatégorieEtablissement = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.LibellécourtcatégorieEtablissement = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.NuméroSIREN = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.DatemodificationSIREN = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.OriginemodificationSIREN = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.CodeAPE = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.LibelléAPE = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Datecréation = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Datemàjstructure = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Datefermeture = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Typefermeture = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Qualificationcréation = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Complémentdestinataire = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Complémentpointgéographique = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Numérovoie = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Indicerépétitionvoie = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Codetypedevoie = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Libellétypedevoie = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Libellévoie = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Mentiondistribution = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.CodePostal = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Bureaucedex = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Codecommune = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Libellécommune = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Libellécourtcommune = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Codedépartement = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Libellédépartement = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Codepays = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Libellépays = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Téléphone = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Téléphone2 = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Télécopie = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(59), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(59), .tTopPiece)
	If pGetTopFields {
		Set pObject.Adressemail = tCurrString
	}
	Quit tStatus
}

/// Internal helper method to output object to a stream
ClassMethod PutRecord(pStream As %IO.DeviceStream, pObject As %RegisteredObject, pHasTopFields As %Boolean, ByRef pPadArray As %String) As %Status [ Internal, Private ]
{
	Set tStatus = $$$OK
	Do pStream.Write($select(pHasTopFields: pObject.NuméroFINESSEJ,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Raisonsociale,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Raisonsocialelongue,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Complémentraisonsociale,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Codestatutjuridique,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Libelléstatutjuridique,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Libellécourtstatutjuridique,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.CodecatégorieEtablissement,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.LibellécatégorieEtablissement,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.LibellécourtcatégorieEtablissement,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.NuméroSIREN,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.DatemodificationSIREN,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.OriginemodificationSIREN,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.CodeAPE,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.LibelléAPE,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Datecréation,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Datemàjstructure,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Datefermeture,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Typefermeture,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Qualificationcréation,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Complémentdestinataire,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Complémentpointgéographique,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Numérovoie,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Indicerépétitionvoie,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Codetypedevoie,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Libellétypedevoie,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Libellévoie,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Mentiondistribution,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.CodePostal,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Bureaucedex,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Codecommune,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Libellécommune,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Libellécourtcommune,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Codedépartement,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Libellédépartement,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Codepays,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Libellépays,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Téléphone,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Téléphone2,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Télécopie,1: ""),0)
	Do pStream.Write($char(59) _ $select(pHasTopFields: pObject.Adressemail,1: ""),0)
	Do pStream.Write($char(10), 0, .tStatus)
	If $$$ISERR(tStatus) Quit tStatus
	Quit tStatus
}

ClassMethod GetGeneratedClasses(Output pClasses As %String) As %Status
{
	Kill pClasses
	Set pClasses("MDM.EJFINESS.Batch")=""
	Set pClasses("MDM.EJFINESS.Record.Record")=""
	Set pClasses($classname())=""
	Quit $$$OK
}

ClassMethod getIdentifier() As %String [ CodeMode = expression ]
{
""
}

ClassMethod getType() As EnsLib.RecordMap.Model.DataType.RecordType [ CodeMode = expression ]
{
"delimited"
}

XData RecordMap [ XMLNamespace = "http://www.intersystems.com/Ensemble/RecordMap" ]
{
<Record xmlns="http://www.intersystems.com/Ensemble/RecordMap" name="MDM.EJFINESS.Record" type="delimited" char_encoding="UTF-8" targetClassname="MDM.EJFINESS.Record.Record" batchClass="MDM.EJFINESS.Batch" complexBatchManaged="0" padFromLeft="0" recordTerminator="\x0a" allowEarlyTerminator="0">
  <Separators>
    <Separator>;</Separator>
  </Separators>
  <Field name="NuméroFINESSEJ" datatype="%String" sqlColumn="2">
  </Field>
  <Field name="Raisonsociale" datatype="%String" sqlColumn="3">
  </Field>
  <Field name="Raisonsocialelongue" datatype="%String" sqlColumn="4">
  </Field>
  <Field name="Complémentraisonsociale" datatype="%String" sqlColumn="5">
  </Field>
  <Field name="Codestatutjuridique" datatype="%String" sqlColumn="6">
  </Field>
  <Field name="Libelléstatutjuridique" datatype="%String" sqlColumn="7">
  </Field>
  <Field name="Libellécourtstatutjuridique" datatype="%String" sqlColumn="8">
  </Field>
  <Field name="CodecatégorieEtablissement" datatype="%String" sqlColumn="9">
  </Field>
  <Field name="LibellécatégorieEtablissement" datatype="%String" sqlColumn="10">
  </Field>
  <Field name="LibellécourtcatégorieEtablissement" datatype="%String" sqlColumn="11">
  </Field>
  <Field name="NuméroSIREN" datatype="%String" sqlColumn="12">
  </Field>
  <Field name="DatemodificationSIREN" datatype="%String" sqlColumn="13">
  </Field>
  <Field name="OriginemodificationSIREN" datatype="%String" sqlColumn="14">
  </Field>
  <Field name="CodeAPE" datatype="%String" sqlColumn="15">
  </Field>
  <Field name="LibelléAPE" datatype="%String" sqlColumn="16">
  </Field>
  <Field name="Datecréation" datatype="%String" sqlColumn="17">
  </Field>
  <Field name="Datemàjstructure" datatype="%String" sqlColumn="18">
  </Field>
  <Field name="Datefermeture" datatype="%String" sqlColumn="19">
  </Field>
  <Field name="Typefermeture" datatype="%String" sqlColumn="20">
  </Field>
  <Field name="Qualificationcréation" datatype="%String" sqlColumn="21">
  </Field>
  <Field name="Complémentdestinataire" datatype="%String" sqlColumn="22">
  </Field>
  <Field name="Complémentpointgéographique" datatype="%String" sqlColumn="23">
  </Field>
  <Field name="Numérovoie" datatype="%String" sqlColumn="24">
  </Field>
  <Field name="Indicerépétitionvoie" datatype="%String" sqlColumn="25">
  </Field>
  <Field name="Codetypedevoie" datatype="%String" sqlColumn="26">
  </Field>
  <Field name="Libellétypedevoie" datatype="%String" sqlColumn="27">
  </Field>
  <Field name="Libellévoie" datatype="%String" sqlColumn="28">
  </Field>
  <Field name="Mentiondistribution" datatype="%String" sqlColumn="29">
  </Field>
  <Field name="CodePostal" datatype="%String" sqlColumn="30">
  </Field>
  <Field name="Bureaucedex" datatype="%String" sqlColumn="31">
  </Field>
  <Field name="Codecommune" datatype="%String" sqlColumn="32">
  </Field>
  <Field name="Libellécommune" datatype="%String" sqlColumn="33">
  </Field>
  <Field name="Libellécourtcommune" datatype="%String" sqlColumn="34">
  </Field>
  <Field name="Codedépartement" datatype="%String" sqlColumn="35">
  </Field>
  <Field name="Libellédépartement" datatype="%String" sqlColumn="36">
  </Field>
  <Field name="Codepays" datatype="%String" sqlColumn="37">
  </Field>
  <Field name="Libellépays" datatype="%String" sqlColumn="38">
  </Field>
  <Field name="Téléphone" datatype="%String" sqlColumn="39">
  </Field>
  <Field name="Téléphone2" datatype="%String" sqlColumn="40">
  </Field>
  <Field name="Télécopie" datatype="%String" sqlColumn="41">
  </Field>
  <Field name="Adressemail" datatype="%String" sqlColumn="42">
  </Field>
</Record>
}

}
