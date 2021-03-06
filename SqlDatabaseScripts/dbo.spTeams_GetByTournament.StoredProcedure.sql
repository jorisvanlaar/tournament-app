USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spTeams_GetByTournament]    Script Date: 7/26/2021 10:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTeams_GetByTournament]
	@TournamentId int
AS
BEGIN
	SET NOCOUNT ON;

  select t.*
  from dbo.Teams t
  inner join dbo.TournamentEntries e on t.id = e.TeamId
  where e.TournamentId = @TournamentId;

END

GO
