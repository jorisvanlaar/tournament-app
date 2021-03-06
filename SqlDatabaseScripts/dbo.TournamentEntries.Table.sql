USE [Tournaments]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TournamentEntries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TournamentId] [int] NOT NULL,
	[TeamId] [int] NOT NULL,
 CONSTRAINT [PK_TournamentEntries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[TournamentEntries]  WITH CHECK ADD  CONSTRAINT [FK_TournamentEntries_TeamId] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([id])
GO
ALTER TABLE [dbo].[TournamentEntries] CHECK CONSTRAINT [FK_TournamentEntries_TeamId]
GO
ALTER TABLE [dbo].[TournamentEntries]  WITH CHECK ADD  CONSTRAINT [FK_TournamentEntries_TournamentId] FOREIGN KEY([TournamentId])
REFERENCES [dbo].[Tournaments] ([id])
GO
ALTER TABLE [dbo].[TournamentEntries] CHECK CONSTRAINT [FK_TournamentEntries_TournamentId]
GO
