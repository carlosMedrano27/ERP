USE [ERPsye]
GO
/****** Object:  Table [dbo].[personasxtelefono]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personasxtelefono](
	[CodPerTelefono] [int] IDENTITY(1,1) NOT NULL,
	[CodPersona] [int] NULL,
	[CodTelefono] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_personasxtelefono_CodPerTelefono] PRIMARY KEY CLUSTERED 
(
	[CodPerTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados7_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados7_idx] ON [dbo].[personasxtelefono]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas2_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Personas2_idx] ON [dbo].[personasxtelefono]
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Telefono1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Telefono1_idx] ON [dbo].[personasxtelefono]
(
	[CodTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[personasxtelefono] ADD  DEFAULT (NULL) FOR [CodPersona]
GO
ALTER TABLE [dbo].[personasxtelefono] ADD  DEFAULT (NULL) FOR [CodTelefono]
GO
ALTER TABLE [dbo].[personasxtelefono] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[personasxtelefono]  WITH NOCHECK ADD  CONSTRAINT [personasxtelefono$Estados7] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[personasxtelefono] CHECK CONSTRAINT [personasxtelefono$Estados7]
GO
ALTER TABLE [dbo].[personasxtelefono]  WITH NOCHECK ADD  CONSTRAINT [personasxtelefono$Personas2] FOREIGN KEY([CodPersona])
REFERENCES [dbo].[personas] ([CodPersona])
GO
ALTER TABLE [dbo].[personasxtelefono] CHECK CONSTRAINT [personasxtelefono$Personas2]
GO
ALTER TABLE [dbo].[personasxtelefono]  WITH NOCHECK ADD  CONSTRAINT [personasxtelefono$Telefono1] FOREIGN KEY([CodTelefono])
REFERENCES [dbo].[telefonos] ([CodTelefono])
GO
ALTER TABLE [dbo].[personasxtelefono] CHECK CONSTRAINT [personasxtelefono$Telefono1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.personasxtelefono' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'personasxtelefono'
GO
