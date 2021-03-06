USE [ERPsye]
GO
/****** Object:  Table [dbo].[paises]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paises](
	[CodPaises] [int] IDENTITY(1,1) NOT NULL,
	[Pais] [nvarchar](25) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_paises_CodPaises] PRIMARY KEY CLUSTERED 
(
	[CodPaises] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados10_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados10_idx] ON [dbo].[paises]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[paises] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[paises]  WITH NOCHECK ADD  CONSTRAINT [paises$Estados10] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[paises] CHECK CONSTRAINT [paises$Estados10]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.paises' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'paises'
GO
