USE [Tournaments]
GO
/****** Object:  StoredProcedure [dbo].[spTeams_GetAll]    Script Date: 7/26/2021 10:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTeams_GetAll] 
AS
BEGIN
	SET NOCOUNT ON;

    select *
	from dbo.Teams;

END

GO
