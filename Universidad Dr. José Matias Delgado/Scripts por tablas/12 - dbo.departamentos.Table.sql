USE [ERPsye]
GO
/****** Object:  Table [dbo].[departamentos]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamentos](
	[CodDepartamentos] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [nvarchar](40) NOT NULL,
	[CodPais] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_departamentos_CodDepartamentos] PRIMARY KEY CLUSTERED 
(
	[CodDepartamentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados11_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados11_idx] ON [dbo].[departamentos]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Pais1_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Pais1_idx] ON [dbo].[departamentos]
(
	[CodPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[departamentos] ADD  DEFAULT (NULL) FOR [CodPais]
GO
ALTER TABLE [dbo].[departamentos] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[departamentos]  WITH NOCHECK ADD  CONSTRAINT [departamentos$Estados11] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[departamentos] CHECK CONSTRAINT [departamentos$Estados11]
GO
ALTER TABLE [dbo].[departamentos]  WITH NOCHECK ADD  CONSTRAINT [departamentos$Pais1] FOREIGN KEY([CodPais])
REFERENCES [dbo].[paises] ([CodPaises])
GO
ALTER TABLE [dbo].[departamentos] CHECK CONSTRAINT [departamentos$Pais1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.departamentos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'departamentos'
GO
