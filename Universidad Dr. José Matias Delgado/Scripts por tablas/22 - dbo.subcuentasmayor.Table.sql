USE [ERPsye]
GO
/****** Object:  Table [dbo].[subcuentasmayor]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subcuentasmayor](
	[CodSubCuenta] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [bigint] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](1) NULL,
	[Nivel] [int] NULL,
	[Clase] [nvarchar](1) NULL,
	[CodCuenta] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_subcuentasmayor_CodSubCuenta] PRIMARY KEY CLUSTERED 
(
	[CodSubCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Cuenta1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Cuenta1_idx] ON [dbo].[subcuentasmayor]
(
	[CodCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados21_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados21_idx] ON [dbo].[subcuentasmayor]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[subcuentasmayor] ADD  DEFAULT (NULL) FOR [Tipo]
GO
ALTER TABLE [dbo].[subcuentasmayor] ADD  DEFAULT (NULL) FOR [Nivel]
GO
ALTER TABLE [dbo].[subcuentasmayor] ADD  DEFAULT (NULL) FOR [Clase]
GO
ALTER TABLE [dbo].[subcuentasmayor] ADD  DEFAULT (NULL) FOR [CodCuenta]
GO
ALTER TABLE [dbo].[subcuentasmayor] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[subcuentasmayor]  WITH NOCHECK ADD  CONSTRAINT [subcuentasmayor$Cuenta1] FOREIGN KEY([CodCuenta])
REFERENCES [dbo].[cuentamayor] ([CodCuenta])
GO
ALTER TABLE [dbo].[subcuentasmayor] CHECK CONSTRAINT [subcuentasmayor$Cuenta1]
GO
ALTER TABLE [dbo].[subcuentasmayor]  WITH NOCHECK ADD  CONSTRAINT [subcuentasmayor$Estados21] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[subcuentasmayor] CHECK CONSTRAINT [subcuentasmayor$Estados21]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.subcuentasmayor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'subcuentasmayor'
GO
