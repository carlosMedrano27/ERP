USE [ERPsye]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 3/6/2019 08:23:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[CodUsuario] [int] IDENTITY(1,1) NOT NULL,
	[CodPersona] [int] NULL,
	[UsuNombre] [nvarchar](50) NOT NULL,
	[UsuPassword] [nvarchar](100) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_usuarios_CodUsuario] PRIMARY KEY CLUSTERED 
(
	[CodUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [usuarios$UsuNombre_UNIQUE] UNIQUE NONCLUSTERED 
(
	[UsuNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados_idx] ON [dbo].[usuarios]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Personas] ON [dbo].[usuarios]
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (NULL) FOR [CodPersona]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[usuarios]  WITH NOCHECK ADD  CONSTRAINT [usuarios$Estados2] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [usuarios$Estados2]
GO
ALTER TABLE [dbo].[usuarios]  WITH NOCHECK ADD  CONSTRAINT [usuarios$Personas] FOREIGN KEY([CodPersona])
REFERENCES [dbo].[personas] ([CodPersona])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [usuarios$Personas]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.usuarios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuarios'
GO
