USE [master]
GO
/****** Object:  Database [ERPsye]    Script Date: 1/6/2019 02:03:58 ******/
CREATE DATABASE [ERPsye]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ERPsye', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ERPsye.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ERPsye_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ERPsye_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ERPsye] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ERPsye].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ERPsye] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ERPsye] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ERPsye] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ERPsye] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ERPsye] SET ARITHABORT OFF 
GO
ALTER DATABASE [ERPsye] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ERPsye] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ERPsye] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ERPsye] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ERPsye] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ERPsye] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ERPsye] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ERPsye] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ERPsye] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ERPsye] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ERPsye] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ERPsye] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ERPsye] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ERPsye] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ERPsye] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ERPsye] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ERPsye] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ERPsye] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ERPsye] SET  MULTI_USER 
GO
ALTER DATABASE [ERPsye] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ERPsye] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ERPsye] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ERPsye] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ERPsye] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ERPsye] SET QUERY_STORE = OFF
GO
USE [ERPsye]
GO
/****** Object:  Schema [m2ss]    Script Date: 1/6/2019 02:03:59 ******/
CREATE SCHEMA [m2ss]
GO
/****** Object:  Table [dbo].[correo]    Script Date: 1/6/2019 02:03:59 ******/
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
/****** Object:  Table [dbo].[cuentaclasificacion]    Script Date: 1/6/2019 02:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentaclasificacion](
	[CodClasificacion] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [bigint] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](1) NULL,
	[Nivel] [int] NULL,
	[Clase] [nvarchar](1) NULL,
	[CodElemento] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_cuentaclasificacion_CodClasificacion] PRIMARY KEY CLUSTERED 
(
	[CodClasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuentaelementos]    Script Date: 1/6/2019 02:03:59 ******/
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
/****** Object:  Table [dbo].[cuentamayor]    Script Date: 1/6/2019 02:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentamayor](
	[CodCuenta] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [bigint] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](1) NULL,
	[Nivel] [int] NULL,
	[Clase] [nvarchar](1) NULL,
	[CodClasificacion] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_cuentamayor_CodCuenta] PRIMARY KEY CLUSTERED 
(
	[CodCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamentos]    Script Date: 1/6/2019 02:03:59 ******/
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
/****** Object:  Table [dbo].[direcciones]    Script Date: 1/6/2019 02:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direcciones](
	[CodDireccion] [int] IDENTITY(1,1) NOT NULL,
	[Direccion] [nvarchar](100) NOT NULL,
	[CodMunicipio] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_direcciones_CodDireccion] PRIMARY KEY CLUSTERED 
(
	[CodDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[documentos]    Script Date: 1/6/2019 02:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documentos](
	[CodDocumentos] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoDocumento] [int] NULL,
	[Numero] [nvarchar](20) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_documentos_CodDocumentos] PRIMARY KEY CLUSTERED 
(
	[CodDocumentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados]    Script Date: 1/6/2019 02:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados](
	[CodEstado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_estados_CodEstado] PRIMARY KEY CLUSTERED 
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [estados$Nombre_UNIQUE] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logusuario]    Script Date: 1/6/2019 02:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logusuario](
	[CodLog] [int] IDENTITY(1,1) NOT NULL,
	[CodUsuario] [int] NULL,
	[CodSucursal] [int] NULL,
	[Descripcion] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_logusuario_CodLog] PRIMARY KEY CLUSTERED 
(
	[CodLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movimientos]    Script Date: 1/6/2019 02:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movimientos](
	[CodMovimiento] [int] IDENTITY(1,1) NOT NULL,
	[CodSubCuenta] [int] NULL,
	[CodSucursal] [int] NULL,
	[CodFactura] [int] NULL,
	[MovTipo] [nvarchar](25) NOT NULL,
	[MovDescripcion] [nvarchar](150) NOT NULL,
	[MovFecha] [datetime2](0) NOT NULL,
	[MovMonto] [decimal](10, 2) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_movimientos_CodMovimiento] PRIMARY KEY CLUSTERED 
(
	[CodMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[municipios]    Script Date: 1/6/2019 02:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipios](
	[CodMunicipios] [int] IDENTITY(1,1) NOT NULL,
	[Municipio] [nvarchar](45) NOT NULL,
	[CodDepartamento] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_municipios_CodMunicipios] PRIMARY KEY CLUSTERED 
(
	[CodMunicipios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paises]    Script Date: 1/6/2019 02:03:59 ******/
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
/****** Object:  Table [dbo].[personas]    Script Date: 1/6/2019 02:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personas](
	[CodPersona] [int] IDENTITY(1,1) NOT NULL,
	[PriNombre] [nvarchar](45) NOT NULL,
	[SegNombre] [nvarchar](45) NULL,
	[PriApellido] [nvarchar](45) NOT NULL,
	[SegApellido] [nvarchar](45) NULL,
	[Genero] [nvarchar](1) NOT NULL,
	[FecNac] [date] NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_personas_CodPersona] PRIMARY KEY CLUSTERED 
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personasxtelefono]    Script Date: 1/6/2019 02:03:59 ******/
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
/****** Object:  Table [dbo].[personaxcorreo]    Script Date: 1/6/2019 02:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personaxcorreo](
	[CodPerCorreo] [int] IDENTITY(1,1) NOT NULL,
	[CodPersona] [int] NULL,
	[CodCorreo] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_personaxcorreo_CodPerCorreo] PRIMARY KEY CLUSTERED 
(
	[CodPerCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personaxdireccion]    Script Date: 1/6/2019 02:04:00 ******/
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
/****** Object:  Table [dbo].[personaxdocumento]    Script Date: 1/6/2019 02:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personaxdocumento](
	[CodPerDocumento] [int] IDENTITY(1,1) NOT NULL,
	[CodPersona] [int] NULL,
	[CodDocumento] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_personaxdocumento_CodPerDocumento] PRIMARY KEY CLUSTERED 
(
	[CodPerDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 1/6/2019 02:04:00 ******/
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
/****** Object:  Table [dbo].[subcuentasmayor]    Script Date: 1/6/2019 02:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subcuentasmayor](
	[CodSubCuenta] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [bigint] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](1) NULL,
	[Nivel] [int] NULL,
	[Clase] [nvarchar](1) NULL,
	[CodCuenta] [int] NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_subcuentasmayor_CodSubCuenta] PRIMARY KEY CLUSTERED 
(
	[CodSubCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 1/6/2019 02:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursales](
	[CodSucursal] [int] IDENTITY(1,1) NOT NULL,
	[SucDireccion] [nvarchar](100) NOT NULL,
	[SucTelefono] [nvarchar](15) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_sucursales_CodSucursal] PRIMARY KEY CLUSTERED 
(
	[CodSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telefonos]    Script Date: 1/6/2019 02:04:00 ******/
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
/****** Object:  Table [dbo].[tipodocumento]    Script Date: 1/6/2019 02:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipodocumento](
	[CodTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[NomDocumento] [nvarchar](50) NOT NULL,
	[Abrev] [nvarchar](5) NOT NULL,
	[CodEstado] [int] NULL,
 CONSTRAINT [PK_tipodocumento_CodTipoDocumento] PRIMARY KEY CLUSTERED 
(
	[CodTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 1/6/2019 02:04:00 ******/
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
/****** Object:  Table [dbo].[usuariosxsucursal]    Script Date: 1/6/2019 02:04:00 ******/
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
/****** Object:  Index [Estados8_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados8_idx] ON [dbo].[correo]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Elemento1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Elemento1_idx] ON [dbo].[cuentaclasificacion]
(
	[CodElemento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados19_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados19_idx] ON [dbo].[cuentaclasificacion]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados18_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados18_idx] ON [dbo].[cuentaelementos]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Clasificacion1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Clasificacion1_idx] ON [dbo].[cuentamayor]
(
	[CodClasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados19_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados19_idx] ON [dbo].[cuentamayor]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados11_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados11_idx] ON [dbo].[departamentos]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Pais1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Pais1_idx] ON [dbo].[departamentos]
(
	[CodPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados13_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados13_idx] ON [dbo].[direcciones]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados4_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados4_idx] ON [dbo].[documentos]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Sucursal3_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Sucursal3_idx] ON [dbo].[logusuario]
(
	[CodSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Usuario3_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Usuario3_idx] ON [dbo].[logusuario]
(
	[CodUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CuentaFinal_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [CuentaFinal_idx] ON [dbo].[movimientos]
(
	[CodSubCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados22_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados22_idx] ON [dbo].[movimientos]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Sucursal2_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Sucursal2_idx] ON [dbo].[movimientos]
(
	[CodSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Departamento1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Departamento1_idx] ON [dbo].[municipios]
(
	[CodDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados12_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados12_idx] ON [dbo].[municipios]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados10_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados10_idx] ON [dbo].[paises]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estado_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estado_idx] ON [dbo].[personas]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados7_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados7_idx] ON [dbo].[personasxtelefono]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas2_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Personas2_idx] ON [dbo].[personasxtelefono]
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Telefono1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Telefono1_idx] ON [dbo].[personasxtelefono]
(
	[CodTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Correo1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Correo1_idx] ON [dbo].[personaxcorreo]
(
	[CodCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados9_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados9_idx] ON [dbo].[personaxcorreo]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas3_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Personas3_idx] ON [dbo].[personaxcorreo]
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Direccion1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Direccion1_idx] ON [dbo].[personaxdireccion]
(
	[CodDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados14_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados14_idx] ON [dbo].[personaxdireccion]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas4_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Personas4_idx] ON [dbo].[personaxdireccion]
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Documentos1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Documentos1_idx] ON [dbo].[personaxdocumento]
(
	[CodDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estado5_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estado5_idx] ON [dbo].[personaxdocumento]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Personas1_idx] ON [dbo].[personaxdocumento]
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados16_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados16_idx] ON [dbo].[proveedores]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas5_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Personas5_idx] ON [dbo].[proveedores]
(
	[CodRepresentante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Cuenta1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Cuenta1_idx] ON [dbo].[subcuentasmayor]
(
	[CodCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados21_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados21_idx] ON [dbo].[subcuentasmayor]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados15_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados15_idx] ON [dbo].[sucursales]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estado6_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estado6_idx] ON [dbo].[telefonos]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estado_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estado_idx] ON [dbo].[tipodocumento]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados_idx] ON [dbo].[usuarios]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Personas]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Personas] ON [dbo].[usuarios]
(
	[CodPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Estados16_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Estados16_idx] ON [dbo].[usuariosxsucursal]
(
	[CodEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Sucursal1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Sucursal1_idx] ON [dbo].[usuariosxsucursal]
(
	[CodSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Usuarios1_idx]    Script Date: 1/6/2019 02:04:00 ******/
CREATE NONCLUSTERED INDEX [Usuarios1_idx] ON [dbo].[usuariosxsucursal]
(
	[CodUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[correo] ADD  DEFAULT (NULL) FOR [Correo]
GO
ALTER TABLE [dbo].[correo] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[cuentaclasificacion] ADD  DEFAULT (NULL) FOR [Tipo]
GO
ALTER TABLE [dbo].[cuentaclasificacion] ADD  DEFAULT (NULL) FOR [Nivel]
GO
ALTER TABLE [dbo].[cuentaclasificacion] ADD  DEFAULT (NULL) FOR [Clase]
GO
ALTER TABLE [dbo].[cuentaclasificacion] ADD  DEFAULT (NULL) FOR [CodElemento]
GO
ALTER TABLE [dbo].[cuentaclasificacion] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[cuentaelementos] ADD  DEFAULT (NULL) FOR [Tipo]
GO
ALTER TABLE [dbo].[cuentaelementos] ADD  DEFAULT (NULL) FOR [Nivel]
GO
ALTER TABLE [dbo].[cuentaelementos] ADD  DEFAULT (NULL) FOR [Clase]
GO
ALTER TABLE [dbo].[cuentaelementos] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[cuentamayor] ADD  DEFAULT (NULL) FOR [Tipo]
GO
ALTER TABLE [dbo].[cuentamayor] ADD  DEFAULT (NULL) FOR [Nivel]
GO
ALTER TABLE [dbo].[cuentamayor] ADD  DEFAULT (NULL) FOR [Clase]
GO
ALTER TABLE [dbo].[cuentamayor] ADD  DEFAULT (NULL) FOR [CodClasificacion]
GO
ALTER TABLE [dbo].[cuentamayor] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[departamentos] ADD  DEFAULT (NULL) FOR [CodPais]
GO
ALTER TABLE [dbo].[departamentos] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[direcciones] ADD  DEFAULT (NULL) FOR [CodMunicipio]
GO
ALTER TABLE [dbo].[direcciones] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[documentos] ADD  DEFAULT (NULL) FOR [CodTipoDocumento]
GO
ALTER TABLE [dbo].[documentos] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[logusuario] ADD  DEFAULT (NULL) FOR [CodUsuario]
GO
ALTER TABLE [dbo].[logusuario] ADD  DEFAULT (NULL) FOR [CodSucursal]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [CodSubCuenta]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [CodSucursal]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [CodFactura]
GO
ALTER TABLE [dbo].[movimientos] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[municipios] ADD  DEFAULT (NULL) FOR [CodDepartamento]
GO
ALTER TABLE [dbo].[municipios] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[paises] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[personas] ADD  DEFAULT (NULL) FOR [SegNombre]
GO
ALTER TABLE [dbo].[personas] ADD  DEFAULT (NULL) FOR [SegApellido]
GO
ALTER TABLE [dbo].[personas] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[personasxtelefono] ADD  DEFAULT (NULL) FOR [CodPersona]
GO
ALTER TABLE [dbo].[personasxtelefono] ADD  DEFAULT (NULL) FOR [CodTelefono]
GO
ALTER TABLE [dbo].[personasxtelefono] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[personaxcorreo] ADD  DEFAULT (NULL) FOR [CodPersona]
GO
ALTER TABLE [dbo].[personaxcorreo] ADD  DEFAULT (NULL) FOR [CodCorreo]
GO
ALTER TABLE [dbo].[personaxcorreo] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[personaxdireccion] ADD  DEFAULT (NULL) FOR [CodPersona]
GO
ALTER TABLE [dbo].[personaxdireccion] ADD  DEFAULT (NULL) FOR [CodDireccion]
GO
ALTER TABLE [dbo].[personaxdireccion] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[personaxdocumento] ADD  DEFAULT (NULL) FOR [CodPersona]
GO
ALTER TABLE [dbo].[personaxdocumento] ADD  DEFAULT (NULL) FOR [CodDocumento]
GO
ALTER TABLE [dbo].[personaxdocumento] ADD  DEFAULT (NULL) FOR [CodEstado]
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
ALTER TABLE [dbo].[subcuentasmayor] ADD  DEFAULT (NULL) FOR [Tipo]
GO
ALTER TABLE [dbo].[subcuentasmayor] ADD  DEFAULT (NULL) FOR [Nivel]
GO
ALTER TABLE [dbo].[subcuentasmayor] ADD  DEFAULT (NULL) FOR [Clase]
GO
ALTER TABLE [dbo].[subcuentasmayor] ADD  DEFAULT (NULL) FOR [CodCuenta]
GO
ALTER TABLE [dbo].[subcuentasmayor] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[sucursales] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[telefonos] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[tipodocumento] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (NULL) FOR [CodPersona]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[usuariosxsucursal] ADD  DEFAULT (NULL) FOR [CodUsuario]
GO
ALTER TABLE [dbo].[usuariosxsucursal] ADD  DEFAULT (NULL) FOR [CodSucursal]
GO
ALTER TABLE [dbo].[usuariosxsucursal] ADD  DEFAULT (NULL) FOR [CodEstado]
GO
ALTER TABLE [dbo].[correo]  WITH NOCHECK ADD  CONSTRAINT [correo$Estados8] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[correo] CHECK CONSTRAINT [correo$Estados8]
GO
ALTER TABLE [dbo].[cuentaclasificacion]  WITH NOCHECK ADD  CONSTRAINT [cuentaclasificacion$Elemento1] FOREIGN KEY([CodElemento])
REFERENCES [dbo].[cuentaelementos] ([CodElementos])
GO
ALTER TABLE [dbo].[cuentaclasificacion] CHECK CONSTRAINT [cuentaclasificacion$Elemento1]
GO
ALTER TABLE [dbo].[cuentaclasificacion]  WITH NOCHECK ADD  CONSTRAINT [cuentaclasificacion$Estados19] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[cuentaclasificacion] CHECK CONSTRAINT [cuentaclasificacion$Estados19]
GO
ALTER TABLE [dbo].[cuentaelementos]  WITH NOCHECK ADD  CONSTRAINT [cuentaelementos$Estados18] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[cuentaelementos] CHECK CONSTRAINT [cuentaelementos$Estados18]
GO
ALTER TABLE [dbo].[cuentamayor]  WITH NOCHECK ADD  CONSTRAINT [cuentamayor$Clasificacion1] FOREIGN KEY([CodClasificacion])
REFERENCES [dbo].[cuentaclasificacion] ([CodClasificacion])
GO
ALTER TABLE [dbo].[cuentamayor] CHECK CONSTRAINT [cuentamayor$Clasificacion1]
GO
ALTER TABLE [dbo].[cuentamayor]  WITH NOCHECK ADD  CONSTRAINT [cuentamayor$Estados20] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[cuentamayor] CHECK CONSTRAINT [cuentamayor$Estados20]
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
ALTER TABLE [dbo].[direcciones]  WITH NOCHECK ADD  CONSTRAINT [direcciones$Estados13] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[direcciones] CHECK CONSTRAINT [direcciones$Estados13]
GO
ALTER TABLE [dbo].[direcciones]  WITH CHECK ADD FOREIGN KEY([CodMunicipio])
REFERENCES [dbo].[municipios] ([CodMunicipios])
GO
ALTER TABLE [dbo].[documentos]  WITH NOCHECK ADD  CONSTRAINT [documentos$Estados4] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[documentos] CHECK CONSTRAINT [documentos$Estados4]
GO
ALTER TABLE [dbo].[logusuario]  WITH NOCHECK ADD  CONSTRAINT [logusuario$Sucursal3] FOREIGN KEY([CodSucursal])
REFERENCES [dbo].[sucursales] ([CodSucursal])
GO
ALTER TABLE [dbo].[logusuario] CHECK CONSTRAINT [logusuario$Sucursal3]
GO
ALTER TABLE [dbo].[logusuario]  WITH NOCHECK ADD  CONSTRAINT [logusuario$Usuario3] FOREIGN KEY([CodUsuario])
REFERENCES [dbo].[usuarios] ([CodUsuario])
GO
ALTER TABLE [dbo].[logusuario] CHECK CONSTRAINT [logusuario$Usuario3]
GO
ALTER TABLE [dbo].[movimientos]  WITH NOCHECK ADD  CONSTRAINT [movimientos$CuentaFinal] FOREIGN KEY([CodSubCuenta])
REFERENCES [dbo].[subcuentasmayor] ([CodSubCuenta])
GO
ALTER TABLE [dbo].[movimientos] CHECK CONSTRAINT [movimientos$CuentaFinal]
GO
ALTER TABLE [dbo].[movimientos]  WITH NOCHECK ADD  CONSTRAINT [movimientos$Estados22] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[movimientos] CHECK CONSTRAINT [movimientos$Estados22]
GO
ALTER TABLE [dbo].[movimientos]  WITH NOCHECK ADD  CONSTRAINT [movimientos$Sucursal2] FOREIGN KEY([CodSucursal])
REFERENCES [dbo].[sucursales] ([CodSucursal])
GO
ALTER TABLE [dbo].[movimientos] CHECK CONSTRAINT [movimientos$Sucursal2]
GO
ALTER TABLE [dbo].[municipios]  WITH NOCHECK ADD  CONSTRAINT [municipios$Departamento1] FOREIGN KEY([CodDepartamento])
REFERENCES [dbo].[departamentos] ([CodDepartamentos])
GO
ALTER TABLE [dbo].[municipios] CHECK CONSTRAINT [municipios$Departamento1]
GO
ALTER TABLE [dbo].[municipios]  WITH NOCHECK ADD  CONSTRAINT [municipios$Estados12] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[municipios] CHECK CONSTRAINT [municipios$Estados12]
GO
ALTER TABLE [dbo].[paises]  WITH NOCHECK ADD  CONSTRAINT [paises$Estados10] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[paises] CHECK CONSTRAINT [paises$Estados10]
GO
ALTER TABLE [dbo].[personas]  WITH NOCHECK ADD  CONSTRAINT [personas$Estado1] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[personas] CHECK CONSTRAINT [personas$Estado1]
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
ALTER TABLE [dbo].[personaxcorreo]  WITH NOCHECK ADD  CONSTRAINT [personaxcorreo$Correo1] FOREIGN KEY([CodCorreo])
REFERENCES [dbo].[correo] ([CodCorreo])
GO
ALTER TABLE [dbo].[personaxcorreo] CHECK CONSTRAINT [personaxcorreo$Correo1]
GO
ALTER TABLE [dbo].[personaxcorreo]  WITH NOCHECK ADD  CONSTRAINT [personaxcorreo$Estados9] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[personaxcorreo] CHECK CONSTRAINT [personaxcorreo$Estados9]
GO
ALTER TABLE [dbo].[personaxcorreo]  WITH NOCHECK ADD  CONSTRAINT [personaxcorreo$Personas3] FOREIGN KEY([CodPersona])
REFERENCES [dbo].[personas] ([CodPersona])
GO
ALTER TABLE [dbo].[personaxcorreo] CHECK CONSTRAINT [personaxcorreo$Personas3]
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
ALTER TABLE [dbo].[personaxdocumento]  WITH NOCHECK ADD  CONSTRAINT [personaxdocumento$Documentos1] FOREIGN KEY([CodDocumento])
REFERENCES [dbo].[documentos] ([CodDocumentos])
GO
ALTER TABLE [dbo].[personaxdocumento] CHECK CONSTRAINT [personaxdocumento$Documentos1]
GO
ALTER TABLE [dbo].[personaxdocumento]  WITH NOCHECK ADD  CONSTRAINT [personaxdocumento$Estado5] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[personaxdocumento] CHECK CONSTRAINT [personaxdocumento$Estado5]
GO
ALTER TABLE [dbo].[personaxdocumento]  WITH NOCHECK ADD  CONSTRAINT [personaxdocumento$Personas1] FOREIGN KEY([CodPersona])
REFERENCES [dbo].[personas] ([CodPersona])
GO
ALTER TABLE [dbo].[personaxdocumento] CHECK CONSTRAINT [personaxdocumento$Personas1]
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
ALTER TABLE [dbo].[subcuentasmayor]  WITH NOCHECK ADD  CONSTRAINT [subcuentasmayor$Cuenta1] FOREIGN KEY([CodCuenta])
REFERENCES [dbo].[cuentamayor] ([CodCuenta])
GO
ALTER TABLE [dbo].[subcuentasmayor] CHECK CONSTRAINT [subcuentasmayor$Cuenta1]
GO
ALTER TABLE [dbo].[subcuentasmayor]  WITH NOCHECK ADD  CONSTRAINT [subcuentasmayor$Estados21] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[subcuentasmayor] CHECK CONSTRAINT [subcuentasmayor$Estados21]
GO
ALTER TABLE [dbo].[sucursales]  WITH NOCHECK ADD  CONSTRAINT [sucursales$Estados15] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[sucursales] CHECK CONSTRAINT [sucursales$Estados15]
GO
ALTER TABLE [dbo].[telefonos]  WITH NOCHECK ADD  CONSTRAINT [telefonos$Estado6] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[telefonos] CHECK CONSTRAINT [telefonos$Estado6]
GO
ALTER TABLE [dbo].[tipodocumento]  WITH NOCHECK ADD  CONSTRAINT [tipodocumento$Estado3] FOREIGN KEY([CodEstado])
REFERENCES [dbo].[estados] ([CodEstado])
GO
ALTER TABLE [dbo].[tipodocumento] CHECK CONSTRAINT [tipodocumento$Estado3]
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
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.correo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'correo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.cuentaclasificacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cuentaclasificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.cuentaelementos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cuentaelementos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.cuentamayor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cuentamayor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.departamentos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'departamentos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.direcciones' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'direcciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.documentos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'documentos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.estados' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'estados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.logusuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'logusuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.movimientos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'movimientos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.municipios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'municipios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.paises' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'paises'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.personas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'personas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.personasxtelefono' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'personasxtelefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.personaxcorreo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'personaxcorreo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.personaxdireccion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'personaxdireccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.personaxdocumento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'personaxdocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.proveedores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'proveedores'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.subcuentasmayor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'subcuentasmayor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.sucursales' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sucursales'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.telefonos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'telefonos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.tipodocumento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipodocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.usuarios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuarios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sabiosyexpertos.usuariosxsucursal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuariosxsucursal'
GO
USE [master]
GO
ALTER DATABASE [ERPsye] SET  READ_WRITE 
GO
