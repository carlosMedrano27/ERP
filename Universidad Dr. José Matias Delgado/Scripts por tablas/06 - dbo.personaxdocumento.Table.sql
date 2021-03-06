USE [ERPsye]
GO
/****** Object:  Table [dbo].[personaxdocumento]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personaxdocumento](
	[CodPerDocumento] [int] IDENTITY(1,1) NOT NULL,
	[CodPersona] [int] NULL,
	[CodDocumento] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_personaxdocumento_CodPerDocumento] PRIMARY KEY CLUSTERED 
(
	[CodPerDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Documentos1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Documentos1_idx] ON [dbo].[personaxdocumento]
(
	[CodDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estado5_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estado5_idx] ON [dbo].[personaxdocumento]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Personas1_idx] ON [dbo].[personaxdocumento]
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[personaxdocumento] ADD  DEFAULT (NULL) FOR [CodPersona]
GO
ALTER TABLE [dbo].[personaxdocumento] ADD  DEFAULT (NULL) FOR [CodDocumento]
GO
ALTER TABLE [dbo].[personaxdocumento] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[personaxdocumento]  WITH NOCHECK ADD  CONSTRAINT [personaxdocumento$Documentos1] FOREIGN KEY([CodDocumento])
REFERENCES [dbo].[documentos] ([CodDocumentos])
GO
ALTER TABLE [dbo].[personaxdocumento] CHECK CONSTRAINT [personaxdocumento$Documentos1]
GO
ALTER TABLE [dbo].[personaxdocumento]  WITH NOCHECK ADD  CONSTRAINT [personaxdocumento$Estado5] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[personaxdocumento] CHECK CONSTRAINT [personaxdocumento$Estado5]
GO
ALTER TABLE [dbo].[personaxdocumento]  WITH NOCHECK ADD  CONSTRAINT [personaxdocumento$Personas1] FOREIGN KEY([CodPersona])
REFERENCES [dbo].[personas] ([CodPersona])
GO
ALTER TABLE [dbo].[personaxdocumento] CHECK CONSTRAINT [personaxdocumento$Personas1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.personaxdocumento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'personaxdocumento'
GO
