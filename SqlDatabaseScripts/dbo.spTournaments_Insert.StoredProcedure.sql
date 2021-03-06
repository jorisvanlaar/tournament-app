USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spTournaments_Insert]    Script Date: 7/26/2021 10:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTournaments_Insert] 
	@TournamentName nvarchar(200),
	@EntryFee money,
	@id int = 0 output
AS
BEGIN
	SET NOCOUNT ON;

    insert into dbo.Tournaments ( TournamentName, EntryFee, Active)
	values ( @TournamentName, @EntryFee, 1);

	select @id = SCOPE_IDENTITY();
END

GO
