USE [ERPsye]
GO
/****** Object:  Table [dbo].[movimientos]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movimientos](
	[CodMovimiento] [int] IDENTITY(1,1) NOT NULL,
	[CodSubCuenta] [int] NULL,
	[CodSucursal] [int] NULL,
	[CodFactura] [int] NULL,
	[MovTipo] [nvarchar](25) NOT NULL,
	[MovDescripcion] [nvarchar](150) NOT NULL,
	[MovFecha] [datetime2](0) NOT NULL,
	[MovMonto] [decimal](10, 2) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_movimientos_CodMovimiento] PRIMARY KEY CLUSTERED 
(
	[CodMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [CuentaFinal_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [CuentaFinal_idx] ON [dbo].[movimientos]
(
	[CodSubCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados22_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados22_idx] ON [dbo].[movimientos]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Sucursal2_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Sucursal2_idx] ON [dbo].[movimientos]
(
	[CodSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [CodSubCuenta]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [CodSucursal]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [CodFactura]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[movimientos]  WITH NOCHECK ADD  CONSTRAINT [movimientos$CuentaFinal] FOREIGN KEY([CodSubCuenta])
REFERENCES [dbo].[subcuentasmayor] ([CodSubCuenta])
GO
ALTER TABLE [dbo].[movimientos] CHECK CONSTRAINT [movimientos$CuentaFinal]
GO
ALTER TABLE [dbo].[movimientos]  WITH NOCHECK ADD  CONSTRAINT [movimientos$Estados22] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[movimientos] CHECK CONSTRAINT [movimientos$Estados22]
GO
ALTER TABLE [dbo].[movimientos]  WITH NOCHECK ADD  CONSTRAINT [movimientos$Sucursal2] FOREIGN KEY([CodSucursal])
REFERENCES [dbo].[sucursales] ([CodSucursal])
GO
ALTER TABLE [dbo].[movimientos] CHECK CONSTRAINT [movimientos$Sucursal2]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.movimientos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movimientos'
GO
