USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spTournamentPrizes_Insert]    Script Date: 7/26/2021 10:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTournamentPrizes_Insert] 
	@TournamentId int,
	@PrizeId int,
	@id int = 0 output
AS
BEGIN
	SET NOCOUNT ON;

    insert into dbo.TournamentPrizes( TournamentId, PrizeId)
	values (@TournamentId, @PrizeId);

	select @id = SCOPE_IDENTITY();

END

GO
