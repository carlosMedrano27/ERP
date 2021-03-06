USE [ERPsye]
GO
/****** Object:  Table [dbo].[tipodocumento]    Script Date: 3/6/2019 08:23:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipodocumento](
	[CodTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[NomDocumento] [nvarchar](50) NOT NULL,
	[Abrev] [nvarchar](5) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_tipodocumento_CodTipoDocumento] PRIMARY KEY CLUSTERED 
(
	[CodTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estado_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estado_idx] ON [dbo].[tipodocumento]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tipodocumento] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[tipodocumento]  WITH NOCHECK ADD  CONSTRAINT [tipodocumento$Estado3] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[tipodocumento] CHECK CONSTRAINT [tipodocumento$Estado3]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.tipodocumento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipodocumento'
GO
