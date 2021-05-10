USE [Students & Tasks]
GO
/****** Object:  StoredProcedure [dbo].[Group_2DeleteProc]    Script Date: 06.05.2021 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Group_2DeleteProc]
	@GroupNum nvarchar(20)
AS
	if exists (select * from Group_2 where GroupNum=@GroupNum)
	BEGIN
		DELETE FROM Group_2 WHERE GroupNum=@GroupNum
	END
	Else
		Print 'these values do not exist exist'