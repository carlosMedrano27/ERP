USE [ERPsye]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[CodProveedores] [int] IDENTITY(1,1) NOT NULL,
	[ProNombre] [nvarchar](30) NULL,
	[ProNRC] [nvarchar](20) NULL,
	[ProNIT] [nvarchar](15) NULL,
	[ProTelefono] [nvarchar](15) NULL,
	[ProDireccion] [nvarchar](100) NULL,
	[ProCorreo] [nvarchar](50) NULL,
	[ProDescripcion] [nvarchar](50) NULL,
	[ProPais] [nvarchar](20) NULL,
	[CodRepresentante] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_proveedores_CodProveedores] PRIMARY KEY CLUSTERED 
(
	[CodProveedores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados16_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados16_idx] ON [dbo].[proveedores]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas5_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Personas5_idx] ON [dbo].[proveedores]
(
	[CodRepresentante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [ProNombre]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [ProNRC]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [ProNIT]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [ProTelefono]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [ProDireccion]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [ProCorreo]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [ProDescripcion]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [ProPais]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [CodRepresentante]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[proveedores]  WITH NOCHECK ADD  CONSTRAINT [proveedores$Estados17] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[proveedores] CHECK CONSTRAINT [proveedores$Estados17]
GO
ALTER TABLE [dbo].[proveedores]  WITH NOCHECK ADD  CONSTRAINT [proveedores$Personas5] FOREIGN KEY([CodRepresentante])
REFERENCES [dbo].[personas] ([CodPersona])
GO
ALTER TABLE [dbo].[proveedores] CHECK CONSTRAINT [proveedores$Personas5]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.proveedores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'proveedores'
GO
