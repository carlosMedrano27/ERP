USE [ERPsye]
GO
/****** Object:  Table [dbo].[cuentaelementos]    Script Date: 3/6/2019 08:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentaelementos](
	[CodElementos] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [bigint] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](1) NULL,
	[Nivel] [int] NULL,
	[Clase] [nvarchar](1) NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_cuentaelementos_CodElementos] PRIMARY KEY CLUSTERED 
(
	[CodElementos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Estados18_idx]    Script Date: 3/6/2019 08:23:23 ******/
CREATE NONCLUSTERED INDEX [Estados18_idx] ON [dbo].[cuentaelementos]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cuentaelementos] ADD  DEFAULT (NULL) FOR [Tipo]
GO
ALTER TABLE [dbo].[cuentaelementos] ADD  DEFAULT (NULL) FOR [Nivel]
GO
ALTER TABLE [dbo].[cuentaelementos] ADD  DEFAULT (NULL) FOR [Clase]
GO
ALTER TABLE [dbo].[cuentaelementos] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[cuentaelementos]  WITH NOCHECK ADD  CONSTRAINT [cuentaelementos$Estados18] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[cuentaelementos] CHECK CONSTRAINT [cuentaelementos$Estados18]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.cuentaelementos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cuentaelementos'
GO
