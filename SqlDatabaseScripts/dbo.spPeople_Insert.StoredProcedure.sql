USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spPeople_Insert]    Script Date: 7/26/2021 10:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spPeople_Insert] 
	@FirstName nvarchar(100),
	@LastName nvarchar(100),
	@EmailAddress nvarchar(100),
	@CellphoneNumber varchar(20),
	@id int = 0 output
AS
BEGIN
	SET NOCOUNT ON;

    insert into dbo.People (FirstName, LastName, EmailAddress, CellphoneNumber)
	values (@FirstName, @LastName, @EmailAddress, @CellphoneNumber);

	select @id=SCOPE_IDENTITY();
END

GO
