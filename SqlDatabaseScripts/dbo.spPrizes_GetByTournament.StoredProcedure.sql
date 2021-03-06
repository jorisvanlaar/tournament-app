USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spPrizes_GetByTournament]    Script Date: 7/26/2021 10:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spPrizes_GetByTournament]
  @TournamentId int
AS
BEGIN
	SET NOCOUNT ON;

  select p.*
  from dbo.Prizes p
  inner join dbo.TournamentPrizes t on p.id = t.PrizeId
  where t.TournamentId = @TournamentId;

END

GO
