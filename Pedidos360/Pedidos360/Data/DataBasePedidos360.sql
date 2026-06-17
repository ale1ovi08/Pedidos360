USE [master]
GO
/****** Objeto: Database [Pedidos360DB] Fecha de script: 17/6/2026 17:41:17 ******/
CREATE DATABASE [Pedidos360DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pedidos360DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS04\MSSQL\DATA\Pedidos360DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pedidos360DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS04\MSSQL\DATA\Pedidos360DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Pedidos360DB] SET COMPATIBILITY_LEVEL = 170
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pedidos360DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pedidos360DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pedidos360DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pedidos360DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pedidos360DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pedidos360DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pedidos360DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Pedidos360DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pedidos360DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pedidos360DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pedidos360DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pedidos360DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pedidos360DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pedidos360DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pedidos360DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pedidos360DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Pedidos360DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pedidos360DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pedidos360DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pedidos360DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pedidos360DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pedidos360DB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Pedidos360DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pedidos360DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pedidos360DB] SET  MULTI_USER 
GO
ALTER DATABASE [Pedidos360DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pedidos360DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pedidos360DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pedidos360DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pedidos360DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pedidos360DB] SET OPTIMIZED_LOCKING = OFF 
GO
ALTER DATABASE [Pedidos360DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Pedidos360DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [Pedidos360DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Pedidos360DB]
GO
/****** Objeto: Table [dbo].[__EFMigrationsHistory] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[AspNetRoleClaims] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[AspNetRoles] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[AspNetUserClaims] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[AspNetUserLogins] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[AspNetUserRoles] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[AspNetUsers] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[AspNetUserTokens] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[Categorias] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[Clientes] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](200) NOT NULL,
	[Cedula] [nvarchar](20) NOT NULL,
	[Correo] [nvarchar](200) NOT NULL,
	[Telefono] [nvarchar](20) NOT NULL,
	[Direccion] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[Productos] Fecha de script: 17/6/2026 17:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](200) NOT NULL,
	[CategoriaId] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[ImpuestoPorc] [decimal](5, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[ImagenUrl] [nvarchar](max) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260615210706_InitialCreate', N'10.0.9')
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (1, N'Tortas y Pasteles')
INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (2, N'Cupcakes y Muffins')
INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (3, N'Macarons y Petit Fours')
INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (4, N'Chocolates Artesanales')
INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (5, N'Cheesecakes')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Id], [Nombre], [Cedula], [Correo], [Telefono], [Direccion]) VALUES (1, N'Café Delicias CR', N'3-101-123456', N'compras@cafedelicias.cr', N'2222-3333', N'San José, Barrio Escalante')
INSERT [dbo].[Clientes] ([Id], [Nombre], [Cedula], [Correo], [Telefono], [Direccion]) VALUES (2, N'Hotel Bougainvillea', N'3-101-654321', N'eventos@bougainvillea.cr', N'2244-1414', N'Santo Domingo, Heredia')
INSERT [dbo].[Clientes] ([Id], [Nombre], [Cedula], [Correo], [Telefono], [Direccion]) VALUES (3, N'Restaurante La Palma', N'3-102-789012', N'gerencia@lapalma.cr', N'2255-6677', N'Escazú, San José')
INSERT [dbo].[Clientes] ([Id], [Nombre], [Cedula], [Correo], [Telefono], [Direccion]) VALUES (4, N'Catering Momentos', N'3-103-345678', N'pedidos@momentos.cr', N'8888-9999', N'Curridabat, San José')
INSERT [dbo].[Clientes] ([Id], [Nombre], [Cedula], [Correo], [Telefono], [Direccion]) VALUES (5, N'Tienda Dulce Vida', N'3-104-111222', N'dulcevida@gmail.com', N'7777-5555', N'Alajuela Centro')
INSERT [dbo].[Clientes] ([Id], [Nombre], [Cedula], [Correo], [Telefono], [Direccion]) VALUES (6, N'Eventos Encanto', N'3-105-333444', N'info@eventosencanto.cr', N'6666-4444', N'Cartago, Tres Ríos')
INSERT [dbo].[Clientes] ([Id], [Nombre], [Cedula], [Correo], [Telefono], [Direccion]) VALUES (8, N'Boutique Gourmet', N'3-107-777888', N'pedidos@boutiquegourmet.cr', N'8855-3315', N'San Pedro, San José')
INSERT [dbo].[Clientes] ([Id], [Nombre], [Cedula], [Correo], [Telefono], [Direccion]) VALUES (9, N'Frank Salazar', N'115710492', N'francisco.salazar.2605@gmail.com', N'84580800', N'San Rafael montes de oca')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (1, N'Torta Red Velvet', 1, CAST(25000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 10, N'🎂', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (2, N'Torta de Fresas con Crema', 1, CAST(28000.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 8, N'🍓', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (3, N'Torta Naked Cake Floral', 1, CAST(45000.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 5, N'🌸', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (4, N'Cupcakes de Vainilla x12', 2, CAST(12000.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 20, N'🧁', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (5, N'Cupcakes de Chocolate x12', 2, CAST(13000.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 15, N'🧁', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (6, N'Cupcakes Red Velvet x6', 2, CAST(8500.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 18, N'🧁', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (7, N'Macarons Surtidos x8', 3, CAST(9500.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 25, N'🍬', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (8, N'Macarons de Frambuesa x8', 3, CAST(9800.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 20, N'🍬', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (9, N'Petit Fours Clásicos x10', 3, CAST(11000.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 12, N'🍰', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (10, N'Trufas de Chocolate Belga x6', 4, CAST(7500.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 30, N'🍫', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (11, N'Bombones Surtidos x12', 4, CAST(14000.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 22, N'🍫', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (12, N'Cheesecake de Frutos Rojos', 5, CAST(22000.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 7, N'🍰', 1)
INSERT [dbo].[Productos] ([Id], [Nombre], [CategoriaId], [Precio], [ImpuestoPorc], [Stock], [ImagenUrl], [Activo]) VALUES (13, N'Cheesecake de Maracuyá', 5, CAST(21000.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(5, 2)), 9, N'🍰', 1)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET ANSI_PADDING ON
GO
/****** Objeto: Index [IX_AspNetRoleClaims_RoleId] Fecha de script: 17/6/2026 17:41:17 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Objeto: Index [RoleNameIndex] Fecha de script: 17/6/2026 17:41:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Objeto: Index [IX_AspNetUserClaims_UserId] Fecha de script: 17/6/2026 17:41:17 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Objeto: Index [IX_AspNetUserLogins_UserId] Fecha de script: 17/6/2026 17:41:17 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Objeto: Index [IX_AspNetUserRoles_RoleId] Fecha de script: 17/6/2026 17:41:17 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Objeto: Index [EmailIndex] Fecha de script: 17/6/2026 17:41:17 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Objeto: Index [UserNameIndex] Fecha de script: 17/6/2026 17:41:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Objeto: Index [IX_Productos_CategoriaId] Fecha de script: 17/6/2026 17:41:17 ******/
CREATE NONCLUSTERED INDEX [IX_Productos_CategoriaId] ON [dbo].[Productos]
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias_CategoriaId] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categorias] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias_CategoriaId]
GO
USE [master]
GO
ALTER DATABASE [Pedidos360DB] SET  READ_WRITE 
GO
