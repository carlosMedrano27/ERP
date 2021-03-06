USE [ERPsye]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 3/6/2019 08:23:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursales](
	[CodSucursal] [int] IDENTITY(1,1) NOT NULL,
	[SucDireccion] [nvarchar](100) NOT NULL,
	[SucTelefono] [nvarchar](15) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_sucursales_CodSucursal] PRIMARY KEY CLUSTERED 
(
	[CodSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados15_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados15_idx] ON [dbo].[sucursales]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sucursales] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[sucursales]  WITH NOCHECK ADD  CONSTRAINT [sucursales$Estados15] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[sucursales] CHECK CONSTRAINT [sucursales$Estados15]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.sucursales' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sucursales'
GO
