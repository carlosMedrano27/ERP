USE [ERPsye]
GO
/****** Object:  Table [dbo].[direcciones]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direcciones](
	[CodDireccion] [int] IDENTITY(1,1) NOT NULL,
	[Direccion] [nvarchar](100) NOT NULL,
	[CodMunicipio] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_direcciones_CodDireccion] PRIMARY KEY CLUSTERED 
(
	[CodDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados13_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados13_idx] ON [dbo].[direcciones]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[direcciones] ADD  DEFAULT (NULL) FOR [CodMunicipio]
GO
ALTER TABLE [dbo].[direcciones] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[direcciones]  WITH NOCHECK ADD  CONSTRAINT [direcciones$Estados13] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[direcciones] CHECK CONSTRAINT [direcciones$Estados13]
GO
ALTER TABLE [dbo].[direcciones]  WITH CHECK ADD FOREIGN KEY([CodMunicipio])
REFERENCES [dbo].[municipios] ([CodMunicipios])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.direcciones' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'direcciones'
GO
