USE [ERPsye]
GO
/****** Object:  Table [dbo].[personaxdireccion]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personaxdireccion](
	[CodPerDireccion] [int] IDENTITY(1,1) NOT NULL,
	[CodPersona] [int] NULL,
	[CodDireccion] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_personaxdireccion_CodPerDireccion] PRIMARY KEY CLUSTERED 
(
	[CodPerDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Direccion1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Direccion1_idx] ON [dbo].[personaxdireccion]
(
	[CodDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados14_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados14_idx] ON [dbo].[personaxdireccion]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas4_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Personas4_idx] ON [dbo].[personaxdireccion]
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[personaxdireccion] ADD  DEFAULT (NULL) FOR [CodPersona]
GO
ALTER TABLE [dbo].[personaxdireccion] ADD  DEFAULT (NULL) FOR [CodDireccion]
GO
ALTER TABLE [dbo].[personaxdireccion] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[personaxdireccion]  WITH NOCHECK ADD  CONSTRAINT [personaxdireccion$Direccion1] FOREIGN KEY([CodDireccion])
REFERENCES [dbo].[direcciones] ([CodDireccion])
GO
ALTER TABLE [dbo].[personaxdireccion] CHECK CONSTRAINT [personaxdireccion$Direccion1]
GO
ALTER TABLE [dbo].[personaxdireccion]  WITH NOCHECK ADD  CONSTRAINT [personaxdireccion$Estados14] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[personaxdireccion] CHECK CONSTRAINT [personaxdireccion$Estados14]
GO
ALTER TABLE [dbo].[personaxdireccion]  WITH NOCHECK ADD  CONSTRAINT [personaxdireccion$Personas4] FOREIGN KEY([CodPersona])
REFERENCES [dbo].[personas] ([CodPersona])
GO
ALTER TABLE [dbo].[personaxdireccion] CHECK CONSTRAINT [personaxdireccion$Personas4]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.personaxdireccion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'personaxdireccion'
GO
