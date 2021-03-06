USE [Students & Tasks]
GO
/****** Object:  StoredProcedure [dbo].[Group_2InsertProc]    Script Date: 07.05.2021 11:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Group_2InsertProc]
	@GroupNum varchar(20),
	@MajorName nvarchar(20),
	@Year date
AS
	if exists (select * from Group_2 where GroupNum=@GroupNum)
		Print 'Primary exception from Group'
	Else
		insert into Group_2 values(@GroupNum,@MajorName,@Year)
