USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spMatchups_Update]    Script Date: 7/26/2021 10:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMatchups_Update] 
	@id int,
	@WinnerId int
AS
BEGIN
	SET NOCOUNT ON;

    update dbo.Matchups
	set WinnerId = @WinnerId
	where id = @id;

END

GO
