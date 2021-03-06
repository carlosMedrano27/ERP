USE [ERPsye]
GO
/****** Object:  Table [dbo].[cuentamayor]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentamayor](
	[CodCuenta] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [bigint] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](1) NULL,
	[Nivel] [int] NULL,
	[Clase] [nvarchar](1) NULL,
	[CodClasificacion] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_cuentamayor_CodCuenta] PRIMARY KEY CLUSTERED 
(
	[CodCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Clasificacion1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Clasificacion1_idx] ON [dbo].[cuentamayor]
(
	[CodClasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados19_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados19_idx] ON [dbo].[cuentamayor]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cuentamayor] ADD  DEFAULT (NULL) FOR [Tipo]
GO
ALTER TABLE [dbo].[cuentamayor] ADD  DEFAULT (NULL) FOR [Nivel]
GO
ALTER TABLE [dbo].[cuentamayor] ADD  DEFAULT (NULL) FOR [Clase]
GO
ALTER TABLE [dbo].[cuentamayor] ADD  DEFAULT (NULL) FOR [CodClasificacion]
GO
ALTER TABLE [dbo].[cuentamayor] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[cuentamayor]  WITH NOCHECK ADD  CONSTRAINT [cuentamayor$Clasificacion1] FOREIGN KEY([CodClasificacion])
REFERENCES [dbo].[cuentaclasificacion] ([CodClasificacion])
GO
ALTER TABLE [dbo].[cuentamayor] CHECK CONSTRAINT [cuentamayor$Clasificacion1]
GO
ALTER TABLE [dbo].[cuentamayor]  WITH NOCHECK ADD  CONSTRAINT [cuentamayor$Estados20] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[cuentamayor] CHECK CONSTRAINT [cuentamayor$Estados20]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.cuentamayor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cuentamayor'
GO
