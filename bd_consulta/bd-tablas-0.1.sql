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

CREATE PROCEDURE [dbo].[Insert_User]
	@Username NVARCHAR(20),
	@Password NVARCHAR(20),
	@Email NVARCHAR(30)
AS
BEGIN
	SET NOCOUNT ON;
	IF EXISTS(SELECT UserId FROM Users WHERE Username = @Username)
	BEGIN
		SELECT -1 -- Username exists.
	END
	ELSE IF EXISTS(SELECT UserId FROM Users WHERE Email = @Email)
	BEGIN
		SELECT -2 -- Email exists.
	END
	ELSE
	BEGIN
		INSERT INTO [Users]
			   ([Username]
			   ,[Password]
			   ,[Email]
			   ,[CreatedDate])
		VALUES
			   (@Username
			   ,@Password
			   ,@Email
			   ,GETDATE())
		
		SELECT SCOPE_IDENTITY() -- UserId			   
     END
END


GO
/****** Object:  StoredProcedure [dbo].[TienePermisos]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[TienePermisos]
    @usuario_id int, 
    @permisos_id int 
AS 
    

	SELECT u.UserId, p.nombre  from Users u, permisos p , UsuariosPermisos up
	WHERE up.usuario_id =u.UserId AND up.permiso_id = p.permiso_id;
    

GO
/****** Object:  StoredProcedure [dbo].[Validate_User]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Validate_User]
      @Username NVARCHAR(20),
      @Password NVARCHAR(20)
AS
BEGIN
      SET NOCOUNT ON;
      DECLARE @UserId INT, @LastLoginDate DATETIME
     
      SELECT @UserId = UserId, @LastLoginDate = LastLoginDate
      FROM Users WHERE Username = @Username AND [Password] = @Password
     
      IF @UserId IS NOT NULL
      BEGIN
            IF NOT EXISTS(SELECT UserId FROM UserActivation WHERE UserId = @UserId)
            BEGIN
                  UPDATE Users
                  SET LastLoginDate = GETDATE()
                  WHERE UserId = @UserId
                  SELECT @UserId [UserId] -- User Valid
            END
            ELSE
            BEGIN
                  SELECT -2 -- User not activated.
            END
      END
      ELSE
      BEGIN
            SELECT -1 -- User invalid.
      END
END
GO
/****** Object:  StoredProcedure [dbo].[VerificarPermisos]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VerificarPermisos]
@recurso_id INT,
@usuario_id INT
AS
 SELECT IIF (SUM(consultar) >= 1, 1,0) as consultar,
                       IIF  (SUM(agregar) >= 1, 1,0) as agregar,
                       IIF (SUM(editar) >= 1, 1,0) as editar,
                       IIF (SUM(eliminar) >= 1, 1,0) as eliminar
                FROM tbl_perfiles_recursos
                WHERE recurso_id = @recurso_id
                AND perfil_id IN (
                    /* SELECCIONO LOS PERFILES DEL USUARIO*/
                    SELECT perfil_id
                    FROM tbl_usuarios_perfiles
                    WHERE usuario_id = @usuario_id
                )
                GROUP BY recurso_id;


GO
/****** Object:  Table [dbo].[Consultas]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[View_1]
AS
SELECT        dbo.Paciente.Nombre + '  ' + dbo.Paciente.Apellidos AS Paciente, dbo.Medicos.Nombre + '  ' + dbo.Medicos.Apellidos AS Medico, dbo.Consultas.FechaConsulta, dbo.Consultas.Observacion
FROM            dbo.Consultas INNER JOIN
                         dbo.Medicos ON dbo.Consultas.IdMedico = dbo.Medicos.idMedico INNER JOIN
                         dbo.Paciente ON dbo.Consultas.IdPaciente = dbo.Paciente.IdPaciente

GO
/****** Object:  View [dbo].[VistaMedicos]    Script Date: 26/04/2016 23:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaMedicos]
AS
SELECT        dbo.Medicos.Identificacion, dbo.Medicos.Nombre, dbo.Medicos.Apellidos, dbo.Medicos.FechaNacimiento, dbo.Medicos.Direccion, dbo.Medicos.Telefono, dbo.Especialidades.NombreEspecialidad, 
                         dbo.Horarios.Jornada
FROM            dbo.Medicos INNER JOIN
                         dbo.Especialidades ON dbo.Medicos.idEspecialidad = dbo.Especialidades.IdEspecialidades INNER JOIN
                         dbo.Horarios ON dbo.Medicos.IdHorario = dbo.Horarios.IdHorario

GO
SET IDENTITY_INSERT [dbo].[Consultas] ON 

INSERT [dbo].[Consultas] ([idConsulta], [IdPaciente], [FechaConsulta], [IdMedico], [Observacion]) VALUES (1, 3, CAST(0x0000A1CC00000000 AS DateTime), 7, N'el paciente ')
INSERT [dbo].[Consultas] ([idConsulta], [IdPaciente], [FechaConsulta], [IdMedico], [Observacion]) VALUES (2, 5, CAST(0x0000A1CC00000000 AS DateTime), 7, N'el paciente presenta mal humor')
INSERT [dbo].[Consultas] ([idConsulta], [IdPaciente], [FechaConsulta], [IdMedico], [Observacion]) VALUES (3, 5, CAST(0x0000A1CD00000000 AS DateTime), 13, N'taller de ing de sw')
INSERT [dbo].[Consultas] ([idConsulta], [IdPaciente], [FechaConsulta], [IdMedico], [Observacion]) VALUES (4, 5, CAST(0x0000A1CE00000000 AS DateTime), 13, N'dolor en los riñones,.....')
INSERT [dbo].[Consultas] ([idConsulta], [IdPaciente], [FechaConsulta], [IdMedico], [Observacion]) VALUES (6, 3, CAST(0x0000A5F400B57070 AS DateTime), 7, N'rabia')
INSERT [dbo].[Consultas] ([idConsulta], [IdPaciente], [FechaConsulta], [IdMedico], [Observacion]) VALUES (7, 3, CAST(0x0000A5F400B64B94 AS DateTime), 7, N'rabia')
SET IDENTITY_INSERT [dbo].[Consultas] OFF
SET IDENTITY_INSERT [dbo].[Especialidades] ON 

INSERT [dbo].[Especialidades] ([IdEspecialidades], [NombreEspecialidad]) VALUES (1, N'Cirujano')
INSERT [dbo].[Especialidades] ([IdEspecialidades], [NombreEspecialidad]) VALUES (2, N'Odontologo')
INSERT [dbo].[Especialidades] ([IdEspecialidades], [NombreEspecialidad]) VALUES (3, N'Pediatra')
SET IDENTITY_INSERT [dbo].[Especialidades] OFF
SET IDENTITY_INSERT [dbo].[EstadosCivil] ON 

INSERT [dbo].[EstadosCivil] ([IdEstadoCivil], [NombreEstadoCiv]) VALUES (1, N'Soltero')
INSERT [dbo].[EstadosCivil] ([IdEstadoCivil], [NombreEstadoCiv]) VALUES (2, N'Casado')
INSERT [dbo].[EstadosCivil] ([IdEstadoCivil], [NombreEstadoCiv]) VALUES (3, N'Union Libre')
INSERT [dbo].[EstadosCivil] ([IdEstadoCivil], [NombreEstadoCiv]) VALUES (4, N'Divorciado(a)')
INSERT [dbo].[EstadosCivil] ([IdEstadoCivil], [NombreEstadoCiv]) VALUES (5, N'Viudo(a)')
INSERT [dbo].[EstadosCivil] ([IdEstadoCivil], [NombreEstadoCiv]) VALUES (6, N'Es Complicado')
INSERT [dbo].[EstadosCivil] ([IdEstadoCivil], [NombreEstadoCiv]) VALUES (7, N'No Especificar')
SET IDENTITY_INSERT [dbo].[EstadosCivil] OFF
SET IDENTITY_INSERT [dbo].[Horarios] ON 

INSERT [dbo].[Horarios] ([IdHorario], [Jornada]) VALUES (1, N'Mañana')
INSERT [dbo].[Horarios] ([IdHorario], [Jornada]) VALUES (2, N'Tarde')
INSERT [dbo].[Horarios] ([IdHorario], [Jornada]) VALUES (3, N'Noche')
SET IDENTITY_INSERT [dbo].[Horarios] OFF
SET IDENTITY_INSERT [dbo].[Medicos] ON 

INSERT [dbo].[Medicos] ([idMedico], [idTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [FechaNacimiento], [idSexo], [Direccion], [Telefono], [email], [idEspecialidad], [IdHorario]) VALUES (7, 1, N'19518182', N'Daniel', N'Gonzales', CAST(0x0000A1CD00000000 AS DateTime), 1, N'Calle 17 N° 7 - 30 Centro', N'3207235462', N'ajcv11@gmail.com', 1, 3)
INSERT [dbo].[Medicos] ([idMedico], [idTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [FechaNacimiento], [idSexo], [Direccion], [Telefono], [email], [idEspecialidad], [IdHorario]) VALUES (13, 1, N'19518189', N'Andres', N'Castillo', CAST(0x0000A1C500000000 AS DateTime), 1, N'Calle 17 N° 7 - 30 Centro', N'3107383640', N'ajcv11@gmail.com', 1, 1)
SET IDENTITY_INSERT [dbo].[Medicos] OFF
SET IDENTITY_INSERT [dbo].[Paciente] ON 

INSERT [dbo].[Paciente] ([IdPaciente], [TipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [FechaNacimiento], [Idsexo], [Edad], [IdEstadoCivil], [Direccion], [Telefono], [Estatura], [Peso], [Alergias], [QueAlegias]) VALUES (3, 2, N'2007122130', N'Manuela', N'Caseres', CAST(0x000076A000000000 AS DateTime), 2, 26, 2, N'calle 24 Cra #36', N'3205507264', 159, 50, 2, N'polvo, perro......')
INSERT [dbo].[Paciente] ([IdPaciente], [TipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [FechaNacimiento], [Idsexo], [Edad], [IdEstadoCivil], [Direccion], [Telefono], [Estatura], [Peso], [Alergias], [QueAlegias]) VALUES (5, 1, N'2007122039', N'Jose Gabriel', N'Mejia Martinez', CAST(0x0000A1BF00000000 AS DateTime), 3, 24, 1, N'Calle 17 N° 7 - 30 Centro', N'3107383640', 165, 59, 3, N'Perros, gatos, Polvo,gallinas,Humo')
SET IDENTITY_INSERT [dbo].[Paciente] OFF
SET IDENTITY_INSERT [dbo].[permisos] ON 

INSERT [dbo].[permisos] ([permiso_id], [nombre]) VALUES (1, N'editar')
INSERT [dbo].[permisos] ([permiso_id], [nombre]) VALUES (2, N'eliminar')
INSERT [dbo].[permisos] ([permiso_id], [nombre]) VALUES (3, N'actualizar')
SET IDENTITY_INSERT [dbo].[permisos] OFF
SET IDENTITY_INSERT [dbo].[Sexos] ON 

INSERT [dbo].[Sexos] ([idSexo], [NombreSexo]) VALUES (1, N'Masculino')
INSERT [dbo].[Sexos] ([idSexo], [NombreSexo]) VALUES (2, N'Femenino')
INSERT [dbo].[Sexos] ([idSexo], [NombreSexo]) VALUES (3, N'No Especificar')
SET IDENTITY_INSERT [dbo].[Sexos] OFF
SET IDENTITY_INSERT [dbo].[tbl_perfiles] ON 

INSERT [dbo].[tbl_perfiles] ([perfil_id], [nombre], [fecha_registro]) VALUES (1, N'admin', CAST(0x0000A32500000000 AS DateTime))
INSERT [dbo].[tbl_perfiles] ([perfil_id], [nombre], [fecha_registro]) VALUES (2, N'secretaria', CAST(0x0000A32500000000 AS DateTime))
INSERT [dbo].[tbl_perfiles] ([perfil_id], [nombre], [fecha_registro]) VALUES (3, N'doctor', CAST(0x0000A32500000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_perfiles] OFF
INSERT [dbo].[tbl_perfiles_recursos] ([consultar], [agregar], [editar], [eliminar], [recurso_id], [perfil_id]) VALUES (1, 1, 1, 1, 1, 1)
INSERT [dbo].[tbl_perfiles_recursos] ([consultar], [agregar], [editar], [eliminar], [recurso_id], [perfil_id]) VALUES (1, 1, 1, 1, 1, 1)
INSERT [dbo].[tbl_perfiles_recursos] ([consultar], [agregar], [editar], [eliminar], [recurso_id], [perfil_id]) VALUES (0, 0, 0, 0, 2, 1)
INSERT [dbo].[tbl_perfiles_recursos] ([consultar], [agregar], [editar], [eliminar], [recurso_id], [perfil_id]) VALUES (1, 1, 1, 1, 3, 1)
SET IDENTITY_INSERT [dbo].[tbl_recursos] ON 

INSERT [dbo].[tbl_recursos] ([recursos_id], [nombre], [fecha_registro]) VALUES (1, N'Gestion de pacientes', CAST(0x0000A32500000000 AS DateTime))
INSERT [dbo].[tbl_recursos] ([recursos_id], [nombre], [fecha_registro]) VALUES (2, N'Gestion de Doctores', CAST(0x0000A32500000000 AS DateTime))
INSERT [dbo].[tbl_recursos] ([recursos_id], [nombre], [fecha_registro]) VALUES (3, N'Gestion de Cita', CAST(0x0000A32500000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_recursos] OFF
INSERT [dbo].[tbl_usuarios_perfiles] ([usuario_id], [perfil_id]) VALUES (9, 1)
SET IDENTITY_INSERT [dbo].[TipoIdentificacion] ON 

INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [NombreTipo]) VALUES (1, N'Cedula')
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [NombreTipo]) VALUES (2, N'Pasaporte')
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [NombreTipo]) VALUES (3, N'Carnet Estudiantil')
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [NombreTipo]) VALUES (4, N'Cedula Extranjeria')
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [NombreTipo]) VALUES (5, N'T.I.')
SET IDENTITY_INSERT [dbo].[TipoIdentificacion] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Username], [Password], [Email], [CreatedDate], [LastLoginDate]) VALUES (9, N'1', N'1', N'miguelhangelh@hotmail.com', CAST(0x0000A5F400A0BE7B AS DateTime), CAST(0x0000A5F4017E5F00 AS DateTime))
INSERT [dbo].[Users] ([UserId], [Username], [Password], [Email], [CreatedDate], [LastLoginDate]) VALUES (10, N'a', N'a', N'nocialu_matador@hotmail.com', CAST(0x0000A5F400A28E54 AS DateTime), CAST(0x0000A5F400A31634 AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[UsuariosPermisos] ([usuario_id], [permiso_id]) VALUES (9, 1)
INSERT [dbo].[UsuariosPermisos] ([usuario_id], [permiso_id]) VALUES (9, 2)
INSERT [dbo].[UsuariosPermisos] ([usuario_id], [permiso_id]) VALUES (9, 3)
ALTER TABLE [dbo].[Consultas]  WITH CHECK ADD  CONSTRAINT [FK_Consultas_Medicos] FOREIGN KEY([IdMedico])
REFERENCES [dbo].[Medicos] ([idMedico])
GO
ALTER TABLE [dbo].[Consultas] CHECK CONSTRAINT [FK_Consultas_Medicos]
GO
ALTER TABLE [dbo].[Consultas]  WITH CHECK ADD  CONSTRAINT [FK_Consultas_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[Consultas] CHECK CONSTRAINT [FK_Consultas_Paciente]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Especialidades] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[Especialidades] ([IdEspecialidades])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Especialidades]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Horarios1] FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horarios] ([IdHorario])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Horarios1]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Sexos] FOREIGN KEY([idSexo])
REFERENCES [dbo].[Sexos] ([idSexo])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Sexos]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_TipoIdentificacion] FOREIGN KEY([idTipoIdentificacion])
REFERENCES [dbo].[TipoIdentificacion] ([IdTipoIdentificacion])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_TipoIdentificacion]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_EstadosCivil] FOREIGN KEY([IdEstadoCivil])
REFERENCES [dbo].[EstadosCivil] ([IdEstadoCivil])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_EstadosCivil]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Sexos] FOREIGN KEY([Idsexo])
REFERENCES [dbo].[Sexos] ([idSexo])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Sexos]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_TipoIdentificacion] FOREIGN KEY([TipoIdentificacion])
REFERENCES [dbo].[TipoIdentificacion] ([IdTipoIdentificacion])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_TipoIdentificacion]
GO
ALTER TABLE [dbo].[tbl_perfiles_recursos]  WITH CHECK ADD  CONSTRAINT [FK_tbl_perfiles_recursos_tbl_perfiles] FOREIGN KEY([perfil_id])
REFERENCES [dbo].[tbl_perfiles] ([perfil_id])
GO
ALTER TABLE [dbo].[tbl_perfiles_recursos] CHECK CONSTRAINT [FK_tbl_perfiles_recursos_tbl_perfiles]
GO
ALTER TABLE [dbo].[tbl_perfiles_recursos]  WITH CHECK ADD  CONSTRAINT [FK_tbl_perfiles_recursos_tbl_recursos] FOREIGN KEY([recurso_id])
REFERENCES [dbo].[tbl_recursos] ([recursos_id])
GO
ALTER TABLE [dbo].[tbl_perfiles_recursos] CHECK CONSTRAINT [FK_tbl_perfiles_recursos_tbl_recursos]
GO
ALTER TABLE [dbo].[tbl_usuarios_perfiles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_usuarios_perfiles_tbl_perfiles] FOREIGN KEY([perfil_id])
REFERENCES [dbo].[tbl_perfiles] ([perfil_id])
GO
ALTER TABLE [dbo].[tbl_usuarios_perfiles] CHECK CONSTRAINT [FK_tbl_usuarios_perfiles_tbl_perfiles]
GO
ALTER TABLE [dbo].[tbl_usuarios_perfiles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_usuarios_perfiles_tbl_usuarios] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[tbl_usuarios_perfiles] CHECK CONSTRAINT [FK_tbl_usuarios_perfiles_tbl_usuarios]
GO
ALTER TABLE [dbo].[UsuariosPermisos]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosPermisos_permisos] FOREIGN KEY([permiso_id])
REFERENCES [dbo].[permisos] ([permiso_id])
GO
ALTER TABLE [dbo].[UsuariosPermisos] CHECK CONSTRAINT [FK_UsuariosPermisos_permisos]
GO
ALTER TABLE [dbo].[UsuariosPermisos]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosPermisos_Users] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UsuariosPermisos] CHECK CONSTRAINT [FK_UsuariosPermisos_Users]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[46] 4[14] 2[22] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Consultas"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Medicos"
            Begin Extent = 
               Top = 97
               Left = 520
               Bottom = 239
               Right = 718
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "Paciente"
            Begin Extent = 
               Top = 5
               Left = 732
               Bottom = 244
               Right = 930
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[11] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Medicos"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 246
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Especialidades"
            Begin Extent = 
               Top = 13
               Left = 642
               Bottom = 102
               Right = 840
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Horarios"
            Begin Extent = 
               Top = 120
               Left = 746
               Bottom = 209
               Right = 944
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaMedicos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaMedicos'
GO
USE [master]
GO
ALTER DATABASE [DBCITAS] SET  READ_WRITE 
GO
