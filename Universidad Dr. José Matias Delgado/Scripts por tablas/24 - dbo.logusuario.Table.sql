USE [ERPsye]
GO
/****** Object:  Table [dbo].[logusuario]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logusuario](
	[CodLog] [int] IDENTITY(1,1) NOT NULL,
	[CodUsuario] [int] NULL,
	[CodSucursal] [int] NULL,
	[Descripcion] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_logusuario_CodLog] PRIMARY KEY CLUSTERED 
(
	[CodLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Sucursal3_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Sucursal3_idx] ON [dbo].[logusuario]
(
	[CodSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Usuario3_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Usuario3_idx] ON [dbo].[logusuario]
(
	[CodUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[logusuario] ADD  DEFAULT (NULL) FOR [CodUsuario]
GO
ALTER TABLE [dbo].[logusuario] ADD  DEFAULT (NULL) FOR [CodSucursal]
GO
ALTER TABLE [dbo].[logusuario]  WITH NOCHECK ADD  CONSTRAINT [logusuario$Sucursal3] FOREIGN KEY([CodSucursal])
REFERENCES [dbo].[sucursales] ([CodSucursal])
GO
ALTER TABLE [dbo].[logusuario] CHECK CONSTRAINT [logusuario$Sucursal3]
GO
ALTER TABLE [dbo].[logusuario]  WITH NOCHECK ADD  CONSTRAINT [logusuario$Usuario3] FOREIGN KEY([CodUsuario])
REFERENCES [dbo].[usuarios] ([CodUsuario])
GO
ALTER TABLE [dbo].[logusuario] CHECK CONSTRAINT [logusuario$Usuario3]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.logusuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'logusuario'
GO
