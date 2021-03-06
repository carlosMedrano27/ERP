USE [ERPsye]
GO
/****** Object:  Table [dbo].[cuentaclasificacion]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentaclasificacion](
	[CodClasificacion] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [bigint] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](1) NULL,
	[Nivel] [int] NULL,
	[Clase] [nvarchar](1) NULL,
	[CodElemento] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_cuentaclasificacion_CodClasificacion] PRIMARY KEY CLUSTERED 
(
	[CodClasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Elemento1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Elemento1_idx] ON [dbo].[cuentaclasificacion]
(
	[CodElemento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados19_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados19_idx] ON [dbo].[cuentaclasificacion]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cuentaclasificacion] ADD  DEFAULT (NULL) FOR [Tipo]
GO
ALTER TABLE [dbo].[cuentaclasificacion] ADD  DEFAULT (NULL) FOR [Nivel]
GO
ALTER TABLE [dbo].[cuentaclasificacion] ADD  DEFAULT (NULL) FOR [Clase]
GO
ALTER TABLE [dbo].[cuentaclasificacion] ADD  DEFAULT (NULL) FOR [CodElemento]
GO
ALTER TABLE [dbo].[cuentaclasificacion] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[cuentaclasificacion]  WITH NOCHECK ADD  CONSTRAINT [cuentaclasificacion$Elemento1] FOREIGN KEY([CodElemento])
REFERENCES [dbo].[cuentaelementos] ([CodElementos])
GO
ALTER TABLE [dbo].[cuentaclasificacion] CHECK CONSTRAINT [cuentaclasificacion$Elemento1]
GO
ALTER TABLE [dbo].[cuentaclasificacion]  WITH NOCHECK ADD  CONSTRAINT [cuentaclasificacion$Estados19] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[cuentaclasificacion] CHECK CONSTRAINT [cuentaclasificacion$Estados19]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.cuentaclasificacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cuentaclasificacion'
GO
