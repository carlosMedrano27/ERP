USE [ERPsye]
GO
/****** Object:  Table [dbo].[municipios]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipios](
	[CodMunicipios] [int] IDENTITY(1,1) NOT NULL,
	[Municipio] [nvarchar](45) NOT NULL,
	[CodDepartamento] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_municipios_CodMunicipios] PRIMARY KEY CLUSTERED 
(
	[CodMunicipios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Departamento1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Departamento1_idx] ON [dbo].[municipios]
(
	[CodDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados12_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados12_idx] ON [dbo].[municipios]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[municipios] ADD  DEFAULT (NULL) FOR [CodDepartamento]
GO
ALTER TABLE [dbo].[municipios] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[municipios]  WITH NOCHECK ADD  CONSTRAINT [municipios$Departamento1] FOREIGN KEY([CodDepartamento])
REFERENCES [dbo].[departamentos] ([CodDepartamentos])
GO
ALTER TABLE [dbo].[municipios] CHECK CONSTRAINT [municipios$Departamento1]
GO
ALTER TABLE [dbo].[municipios]  WITH NOCHECK ADD  CONSTRAINT [municipios$Estados12] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[municipios] CHECK CONSTRAINT [municipios$Estados12]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.municipios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'municipios'
GO
