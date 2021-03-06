USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spMatchups_GetByTournament]    Script Date: 7/26/2021 10:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMatchups_GetByTournament]
  @TournamentId int
AS
BEGIN
	SET NOCOUNT ON;

  select m.*
  from dbo.Matchups m
  where m.TournamentId = @TournamentId
  order by MatchupRound;

END

GO
