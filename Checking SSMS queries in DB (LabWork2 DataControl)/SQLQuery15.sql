USE [Students & Tasks]
GO
/****** Object:  StoredProcedure [dbo].[Student&TaskInsertProc]    Script Date: 05.05.2021 16:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Student&TaskInsertProc]
	@Student_NumberOfCreditBook int,
	@Tasks_idTaskNumber int,
	@TaskPassDate date,
	@TaskGetDate date
AS
	if exists (select * from Student_has_Tasks where Student_NumberOfCreditBook = @Student_NumberOfCreditBook AND Tasks_idTaskNumber= @Tasks_idTaskNumber)
		Print 'this student has task'
	Else
		insert into Student_has_Tasks values(@Student_NumberOfCreditBook,@Tasks_idTaskNumber,@TaskPassDate,@TaskGetDate)
