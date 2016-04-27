-- =================================================
-- Autor:			Gerimar Perez Vivancos Miguel Angel Royer
-- Fecha:			27/04/2016
-- Descripción:		DBCITAS-software-II
-- Versión:			1.0.0
-- =================================================
------------------------------------- Soy Una Barra Separadora :) --------------------------------------
------------------------------------- Soy Una Barra Separadora :) --------------------------------------

PRINT 'INICIANDO CREACION DE LA BASE DE DATOS'
USE [master]
GO


IF EXISTS(SELECT name FROM sys.databases WHERE name = 'DBCITAS')
	DROP DATABASE DBCITAS
GO

IF NOT EXISTS(SELECT name FROM sys.databases WHERE name = 'DBCITAS')
	CREATE DATABASE DBCITAS;
GO
USE DBCITAS
GO

PRINT 'FIN CREACION BASE DE DATOS'
GO
/****** Object:  Database [DBCITAS]    Script Date: 26/04/2016 23:21:47 ******/

PRINT 'INICIANDO CREACION DE TABLAS'
------------------------------------- Soy Una Barra Separadora :) --------------------------------------
------------------------------------- Soy Una Barra Separadora :) --------------------------------------
CREATE TABLE [dbo].[Consultas](
	[idConsulta] [int] IDENTITY(1,1) NOT NULL,
	[IdPaciente] [int] NULL,
	[FechaConsulta] [datetime] NULL,
	[IdMedico] [int] NULL,
	[Observacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Consultas] PRIMARY KEY CLUSTERED 
(
	[idConsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[IdEspecialidades] [int] IDENTITY(1,1) NOT NULL,
	[NombreEspecialidad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Especialidades] PRIMARY KEY CLUSTERED 
(
	[IdEspecialidades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EstadosCivil]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosCivil](
	[IdEstadoCivil] [int] IDENTITY(1,1) NOT NULL,
	[NombreEstadoCiv] [nvarchar](50) NULL,
 CONSTRAINT [PK_EstadosCivil] PRIMARY KEY CLUSTERED 
(
	[IdEstadoCivil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[IdHorario] [int] IDENTITY(1,1) NOT NULL,
	[Jornada] [nvarchar](50) NULL,
 CONSTRAINT [PK_Horarios] PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[idMedico] [int] IDENTITY(1,1) NOT NULL,
	[idTipoIdentificacion] [int] NULL,
	[Identificacion] [nvarchar](50) NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
	[FechaNacimiento] [datetime] NULL,
	[idSexo] [int] NULL,
	[Direccion] [nvarchar](50) NULL,
	[Telefono] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[idEspecialidad] [int] NULL,
	[IdHorario] [int] NULL,
 CONSTRAINT [PK_Medicos] PRIMARY KEY CLUSTERED 
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[IdPaciente] [int] IDENTITY(1,1) NOT NULL,
	[TipoIdentificacion] [int] NULL,
	[Identificacion] [nvarchar](50) NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
	[FechaNacimiento] [datetime] NULL,
	[Idsexo] [int] NULL,
	[Edad] [int] NULL,
	[IdEstadoCivil] [int] NULL,
	[Direccion] [nvarchar](50) NULL,
	[Telefono] [nvarchar](50) NULL,
	[Estatura] [int] NULL,
	[Peso] [int] NULL,
	[Alergias] [int] NULL,
	[QueAlegias] [nvarchar](50) NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[permisos]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[permisos](
	[permiso_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_permisos] PRIMARY KEY CLUSTERED 
(
	[permiso_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sexos]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexos](
	[idSexo] [int] IDENTITY(1,1) NOT NULL,
	[NombreSexo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sexos] PRIMARY KEY CLUSTERED 
(
	[idSexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_perfiles]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_perfiles](
	[perfil_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_perfiles] PRIMARY KEY CLUSTERED 
(
	[perfil_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_perfiles_recursos]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_perfiles_recursos](
	[consultar] [tinyint] NOT NULL,
	[agregar] [tinyint] NOT NULL,
	[editar] [tinyint] NOT NULL,
	[eliminar] [tinyint] NOT NULL,
	[recurso_id] [int] NOT NULL,
	[perfil_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_recursos]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_recursos](
	[recursos_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_recursos] PRIMARY KEY CLUSTERED 
(
	[recursos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_usuarios_perfiles]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_usuarios_perfiles](
	[usuario_id] [int] NOT NULL,
	[perfil_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoIdentificacion]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoIdentificacion](
	[IdTipoIdentificacion] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipo] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoIdentificacion] PRIMARY KEY CLUSTERED 
(
	[IdTipoIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserActivation]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivation](
	[UserId] [int] NOT NULL,
	[ActivationCode] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserActivation] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsuariosPermisos]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosPermisos](
	[usuario_id] [int] NOT NULL,
	[permiso_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_1]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Print 'FINALIZA CREACION DE TABLAS'

------------------------------------- Soy Una Barra Separadora :) --------------------------------------
------------------------------------- Soy Una Barra Separadora :) --------------------------------------
