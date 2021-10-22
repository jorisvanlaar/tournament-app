USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spMatchupEntries_GetByMatchup]    Script Date: 7/26/2021 10:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMatchupEntries_GetByMatchup]
  @MatchupId int
AS
BEGIN
	SET NOCOUNT ON;

  select *
  from MatchupEntries
  where MatchupId = @MatchupId;

END

GO
