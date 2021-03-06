USE [ERPsye]
GO
/****** Object:  Table [dbo].[documentos]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documentos](
	[CodDocumentos] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoDocumento] [int] NULL,
	[Numero] [nvarchar](20) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_documentos_CodDocumentos] PRIMARY KEY CLUSTERED 
(
	[CodDocumentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados4_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados4_idx] ON [dbo].[documentos]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[documentos] ADD  DEFAULT (NULL) FOR [CodTipoDocumento]
GO
ALTER TABLE [dbo].[documentos] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[documentos]  WITH NOCHECK ADD  CONSTRAINT [documentos$Estados4] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[documentos] CHECK CONSTRAINT [documentos$Estados4]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.documentos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'documentos'
GO
