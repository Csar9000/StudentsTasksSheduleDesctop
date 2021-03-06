USE [Students & Tasks]
GO
/****** Object:  StoredProcedure [dbo].[StudentInsertProc]    Script Date: 07.05.2021 13:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[StudentInsertProc]
	@NumberOfCreditBook int,
	@NewGroupNum varchar (20),
	@NewFIO varchar(20)
AS
	if exists (select * from Student where NumberOfCreditBook=@NumberOfCreditBook)
		Print 'Primary exception from Group'
	Else
		insert into Student(NumberOfCreditBook,Group_2_GroupNum,FIO) values(@NumberOfCreditBook,@NewGroupNum,@NewFIO)