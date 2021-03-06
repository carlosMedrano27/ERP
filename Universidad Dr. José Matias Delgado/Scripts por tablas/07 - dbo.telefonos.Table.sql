USE [ERPsye]
GO
/****** Object:  Table [dbo].[telefonos]    Script Date: 3/6/2019 08:23:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telefonos](
	[CodTelefono] [int] IDENTITY(1,1) NOT NULL,
	[Telefono] [nvarchar](15) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_telefonos_CodTelefono] PRIMARY KEY CLUSTERED 
(
	[CodTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estado6_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estado6_idx] ON [dbo].[telefonos]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[telefonos] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[telefonos]  WITH NOCHECK ADD  CONSTRAINT [telefonos$Estado6] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[telefonos] CHECK CONSTRAINT [telefonos$Estado6]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.telefonos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'telefonos'
GO
