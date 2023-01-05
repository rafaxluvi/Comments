USE [Immersed]
GO
/****** Object:  StoredProcedure [dbo].[Comments_Insert]    Script Date: 1/3/2023 10:15:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: <Luviano, Rafael >
-- Create date: <16 Nov 2022>
-- Description: < Comments Insert>
-- Code Reviewer: Damian Stella
-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================


ALTER proc [dbo].[Comments_Insert]
	    @Subject nvarchar(50) = null
	   ,@Text nvarchar(3000)
	   ,@ParentId int =null
	   ,@EntityTypeId int
	   ,@EntityId int
	   ,@CreatedBy int	   
	   ,@Id int OUTPUT
	

/*

Declare @Subject nvarchar(50) = ''
	   ,@Text nvarchar(3000) = 'I agree with this!'
	   ,@ParentId int = null
	   ,@EntityTypeId int= 7
	   ,@EntityId int =9
	   ,@CreatedBy int = 17
	   ,@Id int = 0 
	   
Execute dbo.Comments_Insert
			@Subject 
		   ,@Text 
		   ,@ParentId 
		   ,@EntityTypeId 
		   ,@EntityId
		   ,@CreatedBy
		   ,@Id OUTPUT

		   select *
		   from dbo.Comments


*/

as 

BEGIN

INSERT INTO [dbo].[Comments]
           ([Subject]
           ,[Text]
           ,[ParentId]
           ,[EntityTypeId]
           ,[EntityId]
           ,[CreatedBy])
     VALUES
            (@Subject 
		   ,@Text 
		   ,@ParentId 
		   ,@EntityTypeId 
		   ,@EntityId
		   ,@CreatedBy)


		   SET @Id = SCOPE_IDENTITY()
	
END
