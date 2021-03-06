USE [ERPsye]
GO
/****** Object:  Table [dbo].[correo]    Script Date: 3/6/2019 08:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[correo](
	[CodCorreo] [int] IDENTITY(1,1) NOT NULL,
	[Correo] [nvarchar](50) NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_correo_CodCorreo] PRIMARY KEY CLUSTERED 
(
	[CodCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados8_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados8_idx] ON [dbo].[correo]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[correo] ADD  DEFAULT (NULL) FOR [Correo]
GO
ALTER TABLE [dbo].[correo] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[correo]  WITH NOCHECK ADD  CONSTRAINT [correo$Estados8] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[correo] CHECK CONSTRAINT [correo$Estados8]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.correo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'correo'
GO
