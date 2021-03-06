USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spMatchupEntries_Insert]    Script Date: 7/26/2021 10:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMatchupEntries_Insert] 
	@MatchupId int,
	@ParentMatchupId int,
	@TeamCompetingId int,
	@id int = 0 output
AS
BEGIN
	SET NOCOUNT ON;

    insert into dbo.MatchupEntries (MatchupId, ParentMatchupId, TeamCompetingId)
	values (@MatchupId, @ParentMatchupId, @TeamCompetingId);

	select @id = SCOPE_IDENTITY();
END

GO
