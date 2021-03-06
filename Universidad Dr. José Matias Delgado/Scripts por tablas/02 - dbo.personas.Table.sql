USE [ERPsye]
GO
/****** Object:  Table [dbo].[personas]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personas](
	[CodPersona] [int] IDENTITY(1,1) NOT NULL,
	[PriNombre] [nvarchar](45) NOT NULL,
	[SegNombre] [nvarchar](45) NULL,
	[PriApellido] [nvarchar](45) NOT NULL,
	[SegApellido] [nvarchar](45) NULL,
	[Genero] [nvarchar](1) NOT NULL,
	[FecNac] [date] NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_personas_CodPersona] PRIMARY KEY CLUSTERED 
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estado_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estado_idx] ON [dbo].[personas]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[personas] ADD  DEFAULT (NULL) FOR [SegNombre]
GO
ALTER TABLE [dbo].[personas] ADD  DEFAULT (NULL) FOR [SegApellido]
GO
ALTER TABLE [dbo].[personas] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[personas]  WITH NOCHECK ADD  CONSTRAINT [personas$Estado1] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[personas] CHECK CONSTRAINT [personas$Estado1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.personas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'personas'
GO
