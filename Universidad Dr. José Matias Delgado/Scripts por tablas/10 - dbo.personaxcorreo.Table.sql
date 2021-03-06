USE [ERPsye]
GO
/****** Object:  Table [dbo].[personaxcorreo]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personaxcorreo](
	[CodPerCorreo] [int] IDENTITY(1,1) NOT NULL,
	[CodPersona] [int] NULL,
	[CodCorreo] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_personaxcorreo_CodPerCorreo] PRIMARY KEY CLUSTERED 
(
	[CodPerCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Correo1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Correo1_idx] ON [dbo].[personaxcorreo]
(
	[CodCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados9_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados9_idx] ON [dbo].[personaxcorreo]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas3_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Personas3_idx] ON [dbo].[personaxcorreo]
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[personaxcorreo] ADD  DEFAULT (NULL) FOR [CodPersona]
GO
ALTER TABLE [dbo].[personaxcorreo] ADD  DEFAULT (NULL) FOR [CodCorreo]
GO
ALTER TABLE [dbo].[personaxcorreo] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[personaxcorreo]  WITH NOCHECK ADD  CONSTRAINT [personaxcorreo$Correo1] FOREIGN KEY([CodCorreo])
REFERENCES [dbo].[correo] ([CodCorreo])
GO
ALTER TABLE [dbo].[personaxcorreo] CHECK CONSTRAINT [personaxcorreo$Correo1]
GO
ALTER TABLE [dbo].[personaxcorreo]  WITH NOCHECK ADD  CONSTRAINT [personaxcorreo$Estados9] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[personaxcorreo] CHECK CONSTRAINT [personaxcorreo$Estados9]
GO
ALTER TABLE [dbo].[personaxcorreo]  WITH NOCHECK ADD  CONSTRAINT [personaxcorreo$Personas3] FOREIGN KEY([CodPersona])
REFERENCES [dbo].[personas] ([CodPersona])
GO
ALTER TABLE [dbo].[personaxcorreo] CHECK CONSTRAINT [personaxcorreo$Personas3]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.personaxcorreo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'personaxcorreo'
GO
