USE [Students & Tasks]
GO
/****** Object:  StoredProcedure [dbo].[TaskOneProc]    Script Date: 10.05.2021 3:04:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[TaskOneProc] 
@GroupNum nvarchar(20)
AS
SELECT DISTINCT
	Student.Group_2_GroupNum,
	Student.NumberOfCreditBook,
	Tasks.Subject_SubjectName
FROM Student,Student_has_Tasks,Tasks where Group_2_GroupNum = @GroupNum and
	 Student_has_Tasks.Student_NumberOfCreditBook = Student.NumberOfCreditBook and
	 Student_has_Tasks.Tasks_idTaskNumber = Tasks.idTaskNumber
GO
