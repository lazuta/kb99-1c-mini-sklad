Procedure Posting(Cancel,Mode)
	//{{__REGISTER_RECORD_WIZARD
	//This fragment was built by the wizard.
	//Warning! All manually made changes will be lost next time you use the wizard.

	// register ОстаткиТоваров
	RegisterRecords.ОстаткиТоваров.Write = True;
	For Each CurRowТовары In Товары Do
		Record = RegisterRecords.ОстаткиТоваров.Add();
		Record.Period = Date;
		Record.RecordType = AccumulationRecordType.Receipt;
		Record.Товар = CurRowТовары.Товар;
		Record.Количество = CurRowТовары.Количество;
	EndDo;

	//}}__REGISTER_RECORD_WIZARD
EndProcedure