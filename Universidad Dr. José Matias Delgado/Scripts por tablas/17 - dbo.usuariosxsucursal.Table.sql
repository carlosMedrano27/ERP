USE [ERPsye]
GO
/****** Object:  Table [dbo].[usuariosxsucursal]    Script Date: 3/6/2019 08:23:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuariosxsucursal](
	[CodUsSucursal] [int] IDENTITY(1,1) NOT NULL,
	[CodUsuario] [int] NULL,
	[CodSucursal] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_usuariosxsucursal_CodUsSucursal] PRIMARY KEY CLUSTERED 
(
	[CodUsSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados16_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados16_idx] ON [dbo].[usuariosxsucursal]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Sucursal1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Sucursal1_idx] ON [dbo].[usuariosxsucursal]
(
	[CodSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Usuarios1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Usuarios1_idx] ON [dbo].[usuariosxsucursal]
(
	[CodUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[usuariosxsucursal] ADD  DEFAULT (NULL) FOR [CodUsuario]
GO
ALTER TABLE [dbo].[usuariosxsucursal] ADD  DEFAULT (NULL) FOR [CodSucursal]
GO
ALTER TABLE [dbo].[usuariosxsucursal] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[usuariosxsucursal]  WITH NOCHECK ADD  CONSTRAINT [usuariosxsucursal$Estados16] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[usuariosxsucursal] CHECK CONSTRAINT [usuariosxsucursal$Estados16]
GO
ALTER TABLE [dbo].[usuariosxsucursal]  WITH NOCHECK ADD  CONSTRAINT [usuariosxsucursal$Sucursal1] FOREIGN KEY([CodSucursal])
REFERENCES [dbo].[sucursales] ([CodSucursal])
GO
ALTER TABLE [dbo].[usuariosxsucursal] CHECK CONSTRAINT [usuariosxsucursal$Sucursal1]
GO
ALTER TABLE [dbo].[usuariosxsucursal]  WITH NOCHECK ADD  CONSTRAINT [usuariosxsucursal$Usuarios1] FOREIGN KEY([CodUsuario])
REFERENCES [dbo].[usuarios] ([CodUsuario])
GO
ALTER TABLE [dbo].[usuariosxsucursal] CHECK CONSTRAINT [usuariosxsucursal$Usuarios1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.usuariosxsucursal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuariosxsucursal'
GO
