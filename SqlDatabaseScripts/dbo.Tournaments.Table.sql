USE [Tournaments]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tournaments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TournamentName] [nvarchar](200) NOT NULL,
	[EntryFee] [money] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Tournaments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Tournaments] ADD  CONSTRAINT [DF_Tournaments_EntryFee]  DEFAULT ((0)) FOR [EntryFee]
GO
ALTER TABLE [dbo].[Tournaments] ADD  CONSTRAINT [DF_Tournaments_Active]  DEFAULT ((1)) FOR [Active]
GO
