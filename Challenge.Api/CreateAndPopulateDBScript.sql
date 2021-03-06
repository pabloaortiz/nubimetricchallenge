USE [master]
GO
/****** Object:  Database [Challenge]    Script Date: 1/3/2021 20:07:41 ******/
CREATE DATABASE [Challenge]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Challenge', FILENAME = N'E:\Database\Data\Challenge.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Challenge_log', FILENAME = N'E:\Database\Data\Challenge_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Challenge] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Challenge].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Challenge] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Challenge] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Challenge] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Challenge] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Challenge] SET ARITHABORT OFF 
GO
ALTER DATABASE [Challenge] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Challenge] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Challenge] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Challenge] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Challenge] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Challenge] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Challenge] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Challenge] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Challenge] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Challenge] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Challenge] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Challenge] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Challenge] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Challenge] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Challenge] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Challenge] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Challenge] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Challenge] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Challenge] SET  MULTI_USER 
GO
ALTER DATABASE [Challenge] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Challenge] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Challenge] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Challenge] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Challenge] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Challenge] SET QUERY_STORE = OFF
GO
USE [Challenge]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Challenge]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/3/2021 20:07:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](150) NOT NULL,
	[Apellido] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (1, N'Alejandro', N'Niewolski', N'alejandroniewolski@hotmail.com', N'$2y$10$hhERxSYmI/URy3ystOmuze81z1sb1P1mcQqKUK18q28')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (2, N'Emilio', N'Santa Ana', N'od.emilio.santa.ana@gmail.com', N'$2y$10$AJeQFoPU4I2Tq.Y7jD8E6u1O.Sstk9C2ixLZQP7AFxW')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (3, N'Fabricia', N'Gutierrez Quintana', N'fabriciaq@hotmail.com', N'$2y$10$PTm1dMulsiUPSlbvDY7twefHDFdzzB0mce0l6znhC5h')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (4, N'Joaquin', N'Grafinger', N'grafingerjoaquin@gmail.com', N'$2y$10$e7NdvWlHDCpGHx6hTUYuuOBbpoG56azamCht8x58hLj')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (5, N'Facundo', N'Contreras', N'facucontreras.fc@gmail.com', N'$2y$10$DN1JbU0SKzwvrAdp1lKIAuqMsSyAzfivy6B3gchYqLW')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (6, N'Sergio', N'Siufi', N'sergiosiufiucc@gmail.com', N'$2y$10$Zg0WaELXFAUtfJTr1y6tceCMVLtHuzkAwM6gzQWYKa1')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (7, N'M&F', N'Spa de Manos & Pies', N'myfspademanosypies@outlook.es', N'$2y$10$KohjOd9MVMG3./uATHVT.eQzcNsU.98aJzoyQB7FaaM')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (8, N'Adriana Cecilia', N'Solis', N'adcesolis@hotmail.com', N'$2y$10$Dem6z.Ae/q915PPtjWqNd.DxSfjnGD4El.EcLBhKWod')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (9, N'Carlos', N'Cabana', N'cecarlos_85@hotmail.com', N'$2y$10$WA3TeCaUOIAwBZW560FUH.YOOkRljfv6lESNxOu8qBa')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (10, N'Livia Anahi', N'Cabana', N'liviaanahicabana@gmail.com', N'$2y$10$6QFb4folQ.XkCN/lw5uDe.T3VtmQU1yxVHCrdgDdO.b')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (11, N'Rodrigo', N'Sosa Flores', N'rodrigososaflores@gmail.com', N'$2y$10$V3ekwnveLEsO64TCdt1uQuRtqoM9bdrylevNLEvLp.E')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (12, N'Lucía Carolina', N'Iturbe', N'luciacarolinaiturbe@gmail.com', N'$2y$10$XTQh/.vRFbjyLpt9b/zGze2duEuh5AeF0JQdePny.5x')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (13, N'Pablo Gustavo', N'Perovic', N'pabloperovic5@gmail.com', N'$2y$10$/Y7cKJWYQuTdpYlffnFlxe8jHDbZhfSbdOLFM8JRLyL')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (14, N'Pedro Humberto', N'Lopez', N'humbertolopezjujuy@gmail.com', N'$2y$10$HLhnke2E.xyqDEyl6Nkv0.QSToRqXD3r7SkvXXU88rv')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (15, N'Juan Ignacio', N'Pereza Hernandez', N'sil_ade@hotmail.com', N'$2y$10$UThT5gVfVuJL0f.96rEZtuAP8JHBnjbdGuVSR9SGWd9')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (16, N'Marcos', N'Rodriguez Alvarez', N'mrodriguezalvarez@gmail.com', N'$2y$10$2AicN2/ijIl1s/X/aGRv4ulMkeqUqEKgVXZHlbIyZfd')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (17, N'Fernando Javier', N'Sachilotto', N'sachi1313@hotmail.com', N'$2y$10$Ns/gxciIY9.iItMC3arCheB.8HTPsSjsWjk4YYzWTPG')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (18, N'Natalia', N'Casali', N'nataliacasali@yahoo.com.ar', N'$2y$10$dlYXt2pOvUFEcPbumsQLz.to9XK9pWWig9ltQA35Ysa')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (19, N'Javier', N'Aguilar', N'od_javieraguilar@hotmail.com', N'$2y$10$3K0resGv6NYiSmA0LftCDODK4YjIOBhz0M4C8fS0Aq7')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (20, N'Marylind', N'Marylind', N'marielaalabi@hotmail.com', N'$2y$10$mYIss1qqnNX0Ws9ObsJRA.CMyegC2s7LYafYhqvH7hn')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (21, N'S A', N'Estética', N'susanaaisama@gmail.com', N'$2y$10$.l/zB3/hlHNDMbJNQ1793e/.5A7Iq.lAefdh/FbcHQE')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (22, N'Gerardo Alfredo', N'Sadir', N'siosaludjujuy@hotmail.com', N'$2y$10$4VJ15zt4s30IF2vKvvDKtOd46I.CvZMe1V/vRgJRy5s')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (23, N'Verónica Sonia', N'Clady', N'veroclady@gmail.com', N'$2y$10$mP3ng5fXQUbRYs.llTNXSOoXGbPKg8/xibJetdXEmsY')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (24, N'Federico', N'Perovic', N'fjperova@yahoo.com.ar', N'$2y$10$0P336mO0c28N31NlkU.uauRNBe9wUFqGQLTMwgyOucO')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (25, N'Carina', N'Bertello', N'Carinafabianabertello@gmail.com', N'$2y$10$gI.dcMV.g2o0DfYGBqThkukPjanzy10VCisQHJXVj7z')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (26, N'Esteban', N'Zalazar Reinaldi', N'biozalazar@gmail.com', N'$2y$10$/aj5De/UN4wGSjCHSBQk6.59TvIweOTYjCp1bqxDEir')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (27, N'Gina', N'Del Pin', N'campicaro@yahoo.com.ar', N'$2y$10$X1E65xq2be7OLhc/U/3FU.Z19mVi26P2OdWviPylRL2')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (28, N'Raul Carlos', N'Siufi', N'contacto@siufilaboratorio.com.ar', N'$2y$10$U28J0XDtLbE7eeLgV3IjBuEFf1XOZVLhVPE13fBwitB')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (29, N'Mario Aldo', N'Valdez', N'lmayojujuy@gmail.com', N'$2y$10$iTRhf9G8F2Wk9PYzQUbERO3ZXXbXSojM1OaltRCjfJP')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (30, N'Teresita Del Carmen', N'Moltoni', N'tere_moltoni@arnet.com.ar', N'$2y$10$CfVhZzBZi/oXovURqtNR4.OnKBQWnYKTo1bB8bqdoyH')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (31, N'Rosa Del Carmen', N'Perez', N'rosacarmenperez@hotmail.com', N'$2y$10$nevKVVyI38uZEMnDCbcQjuKdWlEIq/7G1hjHMNjk0YM')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (32, N'María Teresa', N'Samman', N'mariateresasamman@gmail.com', N'$2y$10$zEnea/Qp91n/X/2Gx2NKVuubETUsB6NgrCtxq62bqvG')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (33, N'Mario Antonio', N'Nazaro', N'mario_nazaro@hotmail.com', N'$2y$10$J8x1du9qhTJAbkR71DYlMOyjy1UWaaH75q.NGHfdXgc')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (34, N'Salua', N'Quintar', N'romus371@yahoo.com.ar', N'$2y$10$xyK1hxf9W2KWtWYXkP0PROZ3Nz4u2NSxbcmjZnbShR0')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (35, N'Carlos Cesar', N'Tortota', N'tortoracarlos@yahoo.com.ar', N'$2y$10$er6LhyrQInQ8sRUhtDfBQO1pyib0MNdtJ/k6rQaJn8t')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (36, N'Beatriz Lilia', N'Martin', N'bmartin@inbial.unju.edu.ar', N'$2y$10$690w/2Ee67Nt1FLvNbWEguuT5mU2f/u9Vuv/4GUF9ET')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (37, N'Laura Anahi', N'Yanez', N'anahi.yanez@gmail.com', N'$2y$10$RnrxfTgBwhpseDuV4eVBMuvh.nJ9MfshnajEx1cIQbG')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (38, N'Damian Bernabe', N'Parra', N'damianparra12@hotmail.com', N'$2y$10$wvKifNP0XnkNVgCAVkqqcOtmXyUWC/Ci591l.26V.xq')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (39, N'Ana Maria Del Rosario', N'Ricci', N'riccianamar@gmail.com', N'$2y$10$s517jiJQw9sEuxse9ZTMJ.Q1xnr8iRAtiKdKWsp/D.Y')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (40, N'Edgardo Daniel', N'Kuba', N'kuba_daniel@hotmail.com', N'$2y$10$4F51akzEGeM0h20fMvHa..GV2np4sD4IH6zmWlpkp7M')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (41, N'Marta', N'Rojo', N'martarojosiete@yahoo.com.ar', N'$2y$10$xuKQY6FINAt0cS9kTdwYvuuJ1tXiXerqVaxQjGH1xFH')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (42, N'Clementina Lucrecia', N'Cabrera', N'clemlaquiaca@hotmail.com', N'$2y$10$ViBE0impbvYluieBkhCmee2wWEWeKwXBK.MjMzpt6tm')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (43, N'Eduardo Julio', N'Sleibe Rahe', N'esleiberahe@gmail.com', N'$2y$10$DhmHp60lTfyQl7MFRr9MweOKogjNMAhfEjzggzr.iOo')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (44, N'Ester Lidia', N'Olarte', N'olartejuy@yahoo.com', N'$2y$10$KP4B1u87R6FZoXDkIXIMbO4.KfW.0MpaMvTlLdtTWcS')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (45, N'Cecilia De Los Angeles', N'Lobos', N'angeleslobos2@hotmail.com', N'$2y$10$39rJgyAHVjFVdHgRWPFRyutIY8d5a3.lafQDj5D1zy4')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (46, N'Marta', N'Arcaine De Mollo', N'mary_mollo47@hotmail.com', N'$2y$10$eERAaR95g0l0czVyHZuoQ.YrSFYlLInDau7A//fJKy8')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (47, N'Estela Del Valle', N'Gomez', N'estelagomez6574@gmail.com', N'$2y$10$U95Ir4Xcf8iiipRVznwf3u5uVykO.QZFXGXQ1Zfmig6')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (48, N'Brenda Mariela', N'Gira', N'bren_laagi@hotmail.com', N'$2y$10$.TW.NrHF0yAbY.LSE2QG4.X5aKqCXDO0tdzEkoeKa1G')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (49, N'Mario Ricardo', N'Juarez', N'marioricardojuarez@gmail.com', N'$2y$10$VI96h.e4xujN/TeVOi4.Pexdyrv0fsBOUgKfzrLtcbA')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (50, N'Alberto Eduardo', N'Pintado', N'aepintado@gmail.com', N'$2y$10$duoUskrdWEXDkzoRJcQhke4UBRGlw2LIQNKxDpn7x3A')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (51, N'Griselda María', N'Anchidin', N'griseldaanchidin@gmail.com', N'$2y$10$wreg/HOTF4YeMEbDVOWv6.Ywj4f0le722Z.BDL.2qpP')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (52, N'Jorge Alberto Jesus', N'Jimenez', N'jimeneztomas58@yahoo.com.ar', N'$2y$10$NwzmlyesaRW3ACMuaStR6ONLrBdIWs6MkMnnw/fFnAY')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (53, N'Monica Liliana', N'Nallim', N'lacime@arnet.com.ar', N'$2y$10$E6.vptD0IAaFbU5ekTffneC4KCRFpeOuh8kPibrUCIP')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (54, N'Jimena del Carmen', N'Perez', N'xururucka@hotmail.com', N'$2y$10$.YbMfosyNa4/3HZKiuFA.eDi9Md1jZ8paJCPKnCuKjF')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (55, N'Virginia Soledad', N'Facttori Soria', N'soffnet@hotmail.com', N'$2y$10$S4si0HO0LztlR2Hc95Pl9.MgjPEMcokKWQZHBVtqDdt')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (56, N'Andrea Karina', N'Fernandez', N'andrea1503k@hotmail.com', N'$2y$10$o.zfymzt6TpZMLEoxhZvhOBvBGq8/WVETKkZbQeQPL/')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (57, N'Ana Raquel', N'Delgado', N'anafacu8@gmail.com', N'$2y$10$bsOKRtcibSINI56fBDmcC.SdYMKxz.bWxPH6AdQLz1v')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (58, N'Analia Rosana', N'Vilca Tejerina', N'anita_vt@hotmail.com', N'$2y$10$cALxL5ILw238MuLIBSQ.2OJ02.zGcMQYlpz/9pMPcJu')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (59, N'Pedro Miguel', N'Castillo Lucena', N'pedrocastillo@outlook.com', N'$2y$10$3L/DXBH4aLQxGrSQWYEM/O1Nl4C0KCYBDTKlXaKz5EE')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (60, N'Dario Fernando', N'Carrazana', N'dariofcarrazana@yahoo.com.ar', N'$2y$10$U/unGm3evVF9/qMSG0Psmuxr3kmfzXSSucEFhvWmZcf')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (61, N'Diego Agustin', N'Insausti', N'dinsausti@hotmail.com', N'$2y$10$rue34htyn4nqwHbRRFfKPudbg.GRisroO85io5iH02n')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (62, N'Aldo Rafael', N'Cosci', N'rafacosci@gmail.com', N'$2y$10$9mbERj/iLWJ1WX4X6iMIbu5asgfSXcSZs7qqly3pwNl')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (63, N'Maria Fernanda', N'Escaño', N'mariafernabda.escanii@gmail.com', N'$2y$10$ZaOGMiyjLESWfM2fJpk4COMziv3rcg5jISCpAQkrKCn')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (64, N'Miguel Jesus', N'Abraham', N'miguelabraham68@hotmail.com', N'$2y$10$3DpjRaT2BXDoelUfTGNZfeQzwaBvzBjpY55y35gPPK3')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (65, N'Carlos Aldo', N'Reyna', N'charatamiguel@hotmail.com', N'$2y$10$.igKH9zzQooY0qzuOd6LteEjcogyiXxEjJNJaV1dBoc')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (66, N'Maria Cecilia', N'Garcia Casasco', N'cecigarcia2129@gmail.com', N'$2y$10$ojEVmRD.p9d1QsdkPk76OeHOjdzBOrReW6o5/R4t9Tq')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (67, N'Alicia Gladis', N'Bianco', N'biancoalicia2105@gmail.com', N'$2y$10$2efXmINbDDasl366t2k78.dKKPHfZJVyKzfdmZnVyH.')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (68, N'Mercedes Gladis', N'Peralta', N'merperalta@gmail.com', N'$2y$10$8RGzMnTQFGayviHpcUV1MuA.NY0Gqz.RZ8nQPZ8pAAU')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (69, N'Marta Graciela', N'Silva', N'mgslab@hotmail.com', N'$2y$10$HKWrgvIkBbW53Ofh0Ghbc.qF8B9ihBsFIVZ/hZbKlry')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (70, N'Cayetano Samuel', N'Benegas', N'tanobenegas@live.com.ar', N'$2y$10$/DELgND.I0GXpd1oFc0tGudPu8BZPGGOIkWKdrJ2KcL')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (71, N'Sonia Del Valle', N'Mendieta', N'alejosonia@hotmail.com', N'$2y$10$CyhKaxcYzMZZ3cfBVK4HMuPizlCpiEna4UJlHpJilLx')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (72, N'Graciela', N'Ramacciotti', N'ramacciottigraciela@hotmail.com', N'$2y$10$vT0W5lFt5HMMG2ffwTCM0Orhdbwd9BotBc333/Yl1om')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (73, N'Monica Cristina', N'Navarro', N'navarro_mc@hotmail.com', N'$2y$10$VtialeWlUk9S3j.3Khw0BOzAS7/JI1G8lxpYR3K9Xxq')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (74, N'Jose Enrique', N'Alva', N'josealva35@yahoo.com.ar', N'$2y$10$AwI2qSGqJ0ooYztD1V9t.Oi6TPlcIGmQJcFiXM1KNyy')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (75, N'Leonor Estela', N'Leinecker', N'leonorleinecker@hotmail.com', N'$2y$10$dfAQAbs11NevkaF75YGinOvDhLnsYQo/qDlfbAPUkff')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (76, N'Zulema', N'Rivera', N'zulemariverabioq@gmail.com', N'$2y$10$XAPPN7DD6MJtOoHQMw6jaOcDnaTug0fx6wJVvNFPg0E')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (77, N'Julia Sandra', N'Diaz', N'sandrajuliadiaz@yahoo.com.ar', N'$2y$10$rrf4AFA406ux39hXFaLDouSp38IQsA4oA3LstVIgngq')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (78, N'Martín Oscar', N'Rocca', N'mrocca@live.com.ar', N'$2y$10$iW6O7ndT6wfT4/GF1ZNFOO3VBpBAgibFL/paK3wOC5r')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (79, N'Jacqueline', N'Arcaine Valdez', N'jteoarcaine@hotmail.com', N'$2y$10$uX/M/URltRVYTDfX6JsM4OSxRBTbl8m970dK696r25f')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (80, N'Miguel Alejandro', N'Charre', N'macharre@gmail.com', N'$2y$10$fZr/d0JwRsXqIBxeEL5rJODGW0165bQAt4mKe0YE7W1')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (81, N'Sandra Loudes', N'Ponce', N'mellisasjm@hotmail.com', N'$2y$10$g10OCuqlptUyvwET94fsRuo3S4s7IPCGtACt2X9Bgux')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (82, N'Noelia Beatriz', N'Toranzo', N'cimalaboratorio@hotmail.com.ar', N'$2y$10$od2Zk2Ah8nWuo.yhZYsN0.yMZDEN7m.LvKljj1VJ4KE')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (83, N'Fabiola Ines', N'Pantoja', N'pantojafabines@hotmail.com', N'$2y$10$mi9PKDdeXMghtYp/BZ1c8OVDRDxF3Tr.V2QBtkhVgqw')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (84, N'Patricia Maria Jose', N'Ale', N'patriciaale69@yahoo.com.ar', N'$2y$10$fIA9Uw9SMRWqL379yvQB7.sv1TRqMZ4FFrENNYTurPh')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (85, N'Gonzalo', N'Perez', N'gnzperez@yahoo.com.ar', N'$2y$10$9efTLow07lqRC/z3JQfnJuZYYVxNABDHn25Am.mwHo/')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (86, N'Blas Alfredo', N'Gallardo', N'gablas@hotmail.com', N'$2y$10$bY6Mzy3gtLKO4VdQ8tlKy.OzX5qaiYld4UbfrC9gyIH')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (87, N'Marta del Valle', N'Pacheco', N'martadvpacheco@yahoo.com.ar', N'$2y$10$1SBbPKcrpy9F1YzHsNaubOeVVmKzqx32qNtY07CRQIR')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (88, N'Daniel Oscar', N'Morales', N'bio_morales@hotmail.com', N'$2y$10$o1g8IPNR7r6sZDyQnXc6me6s2CoMF/nT46xiUn9rgkg')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (89, N'Mara Victoria', N'Mendez', N'maravmendez@hotmail.com', N'$2y$10$exjVVUXUmMnf4OSE5/I.V.aLp2qABe9U20JewGQVHhf')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (90, N'Carlos Washington', N'Silva', N'silvalaboratorio@outlook.com', N'$2y$10$A68pxj.jVVYYYkIdt473MeoexZmeiCR1aLQHtrchVDB')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (91, N'Nora Alicia', N'Cosentini', N'noracosentini@gmail.com', N'$2y$10$aCCy45K0ElOI.2DEIvmh7eYrzZ8NLeGwLqcYw.dfDiQ')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (92, N'Miguel Angel', N'Segui', N'segui5@hotmail.com', N'$2y$10$ebPE/BO1yJvTX24NBVp48OwhpVLgsEloGGJi42Vx14F')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (93, N'Maria Elena', N'Zurueta', N'mezurueta@gmail.com', N'$2y$10$Zgn3ylozLtS/taZTlFrjSe3HJB9D5MI9P3RTJZHKOBi')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (94, N'Cecilia Ruth', N'Buljubasich', N'lablavalle@gmail.com', N'$2y$10$AMAw95JbV9/3I/aHNyB7IeXF5yMXK8r3afJf2IAENa6')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (95, N'Jorge Marcelo', N'Gimenez', N'jmgpepa@gmail.com', N'$2y$10$kcUvurWUmq5jYGvhZoUze.kKmIveVSmpbMc5Qy165dr')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (96, N'Carmen Graciela', N'Gallardo', N'carmengra6@yahoo.es', N'$2y$10$pK5KPFEOcJLFeIW1w0wcOeeZS3ww91VRyg/ThE4KyYq')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (97, N'Nestor Raúl', N'Varela', N'varelab_03@hotmail.com', N'$2y$10$yh3qND9theFD1qTIry/9zO392H.RyXJJNLIHFf0iT2L')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (98, N'José María', N'Hiruela Muñoz', N'labojujuy@gmail.com', N'$2y$10$NLxFB6.tyuW3zdS1rcu/VOFGoTl0sVvPWfvdp73GkHp')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (99, N'Cecilia Eugenia', N'Peñaloza', N'ceciliaeugep@gmail.com', N'$2y$10$dsd/Xdz7eiis227Ounp.wOuOYGYqMcGEqVrf2YWZtWC')
GO
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (100, N'Sonia Ester', N'Bartoli', N'sonyabart@yahoo.com.ar', N'$2y$10$f5QmOxwSYqD/NOSY8K1KFOOaLDULol9MfGYZz7FOiMv')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (101, N'Mirta Delicia', N'Ortega', N'delicia_ortega@hotmail.com', N'$2y$10$WBFpQn37XbfI5NIjfo31FeruGLeq13iVRKDKCzOKEJ6')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (102, N'Juan Carlos', N'Molina', N'juanqui_molina@hotmail.com', N'$2y$10$WtZ3AGGgdoMszEkGXllhxep2nh.zrnxgRMUOkoRdrac')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (103, N'Delia Isabel', N'Baruta Patiño', N'deliaibarutta@gmail.com', N'$2y$10$IydIF8NxuHXj7TtzovuWueTmBjNiITes0Rrh9x2az.2')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (104, N'Pablo Eugenio', N'Cosentini', N'pablocosentini@yahoo.com.ar', N'$2y$10$RXFksTDdYhmumd6fYL49QudxmlJtbr8nKcK2h0vEc32')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (105, N'María Daniela', N'Guevara', N'danielaguevara_72@hotmail.com', N'$2y$10$RBplxvB5cHm/PQzNNo2AIOGaQxbeZooQzkaLfs/ZBsJ')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (106, N'Hugo Rafael', N'Soria', N'hugosoria73@hotmail.com', N'$2y$10$AiHNySu229/..11fFbM/huvZz7QVQQWWqRom7uFSBC0')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (107, N'Juana Alisabet', N'Tapia Lamas', N'juanitapia@yahoo.com', N'$2y$10$3G97SHOMa6oQ.pOQOJchaO8ts.xSL/8MKRppd0.7Z1i')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (108, N'María Alejandra', N'Sanchez', N'alebioq_10@hotmail.com', N'$2y$10$maJPT8BSzJcBVLXlq6BT5uKIK7bufCVrx3FuwLzZHGP')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (109, N'Diego Martín', N'Toffoli', N'diegotoffoli@hotmail.com', N'$2y$10$.VxJDzvYVXimj3Gwf4Pz9uuCFGuyG86yIrtaCpEuz0c')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (110, N'Juan Carlos', N'Aguilera', N'juancaguilera29@hotmail.com', N'$2y$10$0.OCbNeODcj88jzEW0I1de2v17EW/ij0QsezouH/XlG')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (111, N'Anacleto Alberto', N'Puca', N'anacletopuca@hotmail.com', N'$2y$10$LoPiUbvqpvXr0oXdFQ2s9OOlCRDC1TCotGynQ/Tesd.')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (112, N'Marcela Fidelia', N'Sale', N'marsalebioq@gmail.com', N'$2y$10$0SuDGzCw8sRkmxO26RV5EOcq6o4w0fsVBVHiiIYncHC')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (113, N'Blanca Noem+i', N'Oxinaga', N'blancaoxinaga123@hotmail.com', N'$2y$10$xwCRy9Jyn2ZXaRliYoFGXe.fI3IVjj9lLhnLsEccgic')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (114, N'Mariela Sabina', N'Rossi', N'marielasabinarossi@yahoo.com.ar', N'$2y$10$2SNCubYJIWE5YqXSr09CwOp7jpOZqfnyDi8CCWhZuxO')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (115, N'Rosana Beatriz', N'Nassr', N'rosananassr@hotmail.com', N'$2y$10$IkSjoquotsA.azZrVU9UJulkBV23Add44yYipFynQ/2')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (116, N'Carlos Alberto', N'Guzman', N'carlosguzmanbioq@hotmail.com', N'$2y$10$Vy/i5uVA5MTuamIo5Rcd..HwBRLlChUAtbU/Vahu4eP')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (117, N'Pablo Matias', N'Bianchini', N'pmbianchini@hotmail.com', N'$2y$10$LAUcWdu6Z03EK.t3uwpYyuMVExA5yda6lYGExgcIJZH')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (118, N'Daniel Pablo', N'Di Pietro', N'lagaita0@gmail.com', N'$2y$10$zatVuGZH7fK78MfU3kvLaebqjVwQRz0qSehiOkfTfjC')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (119, N'Sergio Antonio', N'Vargas', N'sergio14vargas@yahoo.com.ar', N'$2y$10$Zoi0.TLkF8jgQu.P1m/i8usg5R18salCcjBUFIPdllc')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (120, N'Maria de los Angeles', N'Giavai', N'mariagiavai@hotmail.com', N'$2y$10$pCU40gYiwWvABk9qZ74NjOKdKN22fZ/0X.FCVWPmYl3')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (121, N'German Marcelo', N'Brito', N'bioger2000@yahoo.com.ar', N'$2y$10$MGjmGFeJeynyL04WdTzrnOe2VtPL2Pb/iH.Dof6rOP0')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (122, N'Ramiro Antonio', N'Soria', N'ramiro_soria@yahoo.com.ar', N'$2y$10$E6MnM6vVoT03zH0GvMHYQ.r9te2/Km.aF/yLERcdIBq')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (123, N'Guillermo Nicolas', N'Zamora', N'guillermozamora@hotmail.es', N'$2y$10$USi5mxre0ZDTn2wRbzC93ObxAdT3vSzc6FO6fKvmAlv')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (124, N'Daniela Anabel', N'Llanos', N'danallanos@yahoo.com.ar', N'$2y$10$PBcFfoIQF/wpN5M7u7s1oO24ryCZqD9BMrLipq78EOn')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (125, N'Maria del Carmen', N'Cuadrado', N'mariacc2803@hotmail.com', N'$2y$10$MzsIhyjyPZ3zpaO9xxbgWu8NI99P86qY5.E6LU2NoVL')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (126, N'Carlos Gustavo', N'Lopez', N'lopezcarlosgustavo1@gmail.com', N'$2y$10$URcEj34DMpVBgblh1OOV7.QcMPSPvk8cvChuW17ij3w')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (127, N'Oscar Daniel', N'Yañez', N'daniel_bioquimico@hotmail.com', N'$2y$10$/OkqW00pHo/srhCciZ2m0.GsZa4wOvYecxhKsmoPtPj')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (128, N'Isabel Alejandra', N'Leonar', N'alemorena003@gmail.com', N'$2y$10$Cvkl8m7I/qPITGtPcGrbIeLfk0RYmDDGffvJlvXDfJx')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (129, N'Luciana Fernanda', N'Monroy', N'arilumon@hotmail.com', N'$2y$10$XVjQ2tnjhsXev.rjwXCFwOqvUewLZGFxJJ78m9oZ5Ds')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (130, N'Osvaldo', N'Cari', N'ojcari@yahoo.com.ar', N'$2y$10$Wlkx8qocVrr.6mFqJq7qDO.I0qtiJ0qHmUc3MlVKpwI')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (131, N'Silvia Graciela', N'Arias', N'facundocato@gmail.com', N'$2y$10$rQtdUp9XzwK8d6RYDgnk8.KAIQ.rhPADd.vICfc4Isl')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (132, N'Claudia Susana', N'Caceres Hilas', N'scacereshilas@hotmail.com', N'$2y$10$69POx.lib4fP5Dms6K/yHOl6lLCYGoRUBLe/oD9AtoK')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (133, N'Mariela Isabel', N'LLanos', N'marielllanos@hotmail.com', N'$2y$10$rj8IE8rsIfaclj03n3OvPeb4nGbdQZR3Hz1GtIKKoiq')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (134, N'MARIA RITA', N'FERNANDEZ CANAVIRE', N'mafer_86@outlook.com', N'$2y$10$FpQW7OO8dP1Il5wvv2wrQOZG/xfC8icw9SZiP66rKuw')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (135, N'Sabores', N'Sin Tacc', N'jujuy@saboresintacc.com.ar', N'$2y$10$5Kv1k5w3xEZW2BhVOcoFCOdFlDFW1JKTiFKv/z1KBQx')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (136, N'Romina', N'Zampini', N'rozampini81@gmail.com', N'$2y$10$pXX3KNJLfbLW6EFvoHg1he4PmjzV8oMSwAf9NK4Savb')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (137, N'Pablo jesus', N'sangroniz', N'pablo_sangroniz@hotmail.com', N'$2y$10$Ecdgz/44A4d1KJydO.ct9uLXrrs.BJ26rsqdEMlC8tt')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (138, N'Enrique', N'Olmos', N'enriqueolmos@hotmail.com.ar', N'$2y$10$3skQtegIh6LdtfFNewoYx.aCzSn./i3cMWwUS9nDg0b')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (139, N'Manuel', N'Gamboa', N'manuelgamboa@hotmail.com', N'$2y$10$2qMCdLoCZiCargUuy5sdXuydCEWJVhqJUcI36R51F5A')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (140, N'Ricardo', N'Mansilla', N'ricardomansilla@hotmail.com', N'$2y$10$yOXDUXevfqkKZBW5Lom9ueZjeItkxo0GNoIWJBllsS7')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (141, N'Ricardo', N'Mansilla', N'aleatorio@hotmail.com', N'$2y$10$dLZ0VZWBF1N/gpMRE9SIXO9nKyBxuCKdbNGr1jXEH6a')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (142, N'Miguel', N'Fausto', N'miguelfausto@gmail.com', N'$2y$10$eQFdkhkNzaTsF0o3F8Qys.D.Yx0GxGqY06nI5T.ns.P')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (143, N'Jorge', N'Azar', N'kokoazar@hotmail.com', N'$2y$10$hN9.nOBFxSclQgFLGJxIAeJFVzgbEY.BA7MLXfLBnPf')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (144, N'carolina', N'carolina', N'caros@clarika.com.ar', N'$2y$10$CfnJnl/Hie81LPMikRPHcuk4UIZV6T8V3q7YCXnk0JO')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (145, N'Carlos Jaime', N'Reque', N'carlitosreque_1@hotmail.com', N'$2y$10$EsjVt/7gjOMpKvcHLiXxpuXvhSruib6Q0IcwJ5bDt6a')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (146, N'COLEGIO DE', N'BIOQUIMICOS DE JUJUY', N'comunicacioncobiju@gmail.com', N'$2y$10$Yr2cDmpDlidCVoFi3oWqOuyfxWgRvpdioZjBYGyRl7S')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (147, N'RAUL NAJAR -', N'BIOLAB', N'joseraulnajar@hotmail.com', N'$2y$10$mjgddL8KZMkh8grPAArR0uezgruGrvKAZTwifkBQ2OI')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (148, N'GONZALO DEL VAL -', N'BIOLAB', N'gonzalodelval@gmail.com', N'$2y$10$TiAHCHBJXkCfsy3DSbBYsui/tR1nKFwaGeLUzYAlXeJ')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (149, N'JAVIER ASE -', N'BIOLAB', N'javierase@hotmail.com', N'$2y$10$4cv82XhAZgBs70q/OdkLqOBYrmeThauw2Ce8PhxvPOv')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (150, N'JORGE LOPEZ -', N'BIOLAB', N'coquilopez-01@hotmail.com', N'$2y$10$tgK0HxpBYzvqaamvjVru4u.KT5X1F5D4jhhvQGMNuuz')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (151, N'Laboratorio', N'Vacri', N'labvacri@imagine.com.ar', N'$2y$10$zdtIwgyELhrYApgaXDXg9uTbzT4aGeq69neQX8Gg/uk')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (152, N'Laboratorio', N'ATBioH  SRL', N'maria_elisa_p@yahoo.com.ar', N'$2y$10$f0KEOtILM/e2qxzUhxEuYOFflz3yTW6l1Hnnjjn37OB')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (153, N'Laboratorio', N'CARO-NAZABAL', N'maxpau95@arnet.com.ar', N'$2y$10$IZr9uJdUM.ORKQryWLUj1OJ95ON8iBgs13sNTlBVZ9w')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (154, N'Esteban Guillermo', N'Juncos', N'guillejuncos@yahoo.com.ar', N'$2y$10$KzV0PbWOdJzjmd6CLqKCduh4bI1QvG0LDAKTpJzwhTP')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (155, N'Luis', N'Calvetti', N'Luiscalvetti87@gmail.com', N'$2y$10$EqX4tqKKb6bS8nJUrbiTT.hArg00VG/8vH6HYLTnqkt')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (156, N'INTERNISTAS', N'S.R.L.', N'internistasjujuy@gmail.com', N'$2y$10$9EK2VpdM.MX1yRS2td/xA.BYgbbZq2V97Uw18lLKUpg')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (157, N'Carina', N'Esquivel', N'kattycontu29@hotmail.com', N'$2y$10$zww5aci.YyfKPy.Mdw4h5OUslcq3JNUmZ/1QLMLUl3F')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (158, N'Andrea', N'Cejas', N'tukycejas@gmail.com', N'$2y$10$br0/ekA37QR5SVQ9IachYe1wUxFh1a04Lm852eHsvbK')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (159, N'María cecilia', N'Vilca', N'm.ceciliavilca@hotmail.com', N'$2y$10$IC78WJhOuUNZrGj./TNwa.EfEFFNPE5gC7fvuMqxzZ6')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (160, N'María Sofía', N'Galli', N'sofigalli_93@hotmail.com', N'$2y$10$RoZP8uh3ejuCi31m9mMv6.g181tnFzlUmfrvtJ6fc/P')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (161, N'Dr. José', N'herboso', N'jherboso@gmail.com', N'$2y$10$G6DMRWAXTuMOBRq2QlBiV./EUwe2gdRS.FF4eq/EqDR')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (162, N'Virginia', N'Granda', N'licvirginiagranda@gmail.com', N'$2y$10$ym2W0z9AWe069z1EwS.fXuVdpyY3w4MPNqFvzZ81kXx')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (163, N'MIGUEL ANGEL J', N'MARTINEZ', N'charatamartinez@gmail.com', N'$2y$10$HjEoAwQi7IuqI2vXRAuZpuIZxXy.MAZIi4KGxfueOlr')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (164, N'Gerardo Hector', N'Bavio Figueroa', N'baficirpla@live.com.ar', N'$2y$10$LFuLMUstFoetl.eI5aNtE.wuS47p1ctKudO0tOjGiBm')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (165, N'Carlos', N'campos', N'dr.campos2777@gmail.com', N'$2y$10$2P04YaLbVTRgOrPq1BBl2.xrojhEz7h693eciZjWmUV')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (166, N'María Soledad', N'Alvarado', N'alvaradomsole@gmail.com', N'$2y$10$REarhtHa43cuwmJeW1DAhOV9BEgTECAWr3PS0oxgEoe')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (167, N'Ana Rosa', N'Mamaní', N'licanarosamamani@gmail.com', N'$2y$10$tQ0UUfEI3MmQhP2OpofpcOTP/HeglE2HxwKsoRm8GLH')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (168, N'Maria Paula', N'Echenique', N'echeniquemariapaula@gmail.com', N'$2y$10$WaLgTLT8Ng1bb8ifLPqsfutD7iRz.vwh.K9vPMun6mg')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (169, N'Mónica Patricia', N'Maurin', N'monicamaurin@gmail.com', N'$2y$10$wOHF.hTZOtw1ju1vXICPzePRj82cC5YqNoAdwbrB18o')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (170, N'MARIA GABRIELA', N'ZORICICH', N'dentalsmilejujuy@gmail.com', N'$2y$10$XxAs6wLziPgETJ2RYLA42.pHqg5ooeqCttqP15dKXUD')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (171, N'ASOCIACION', N'ODONTOLOGICA JUJEÑA', N'asojujena@hotmail.com', N'$2y$10$nSbQy4/tq6KHVw5FW.tOIeQ9G.StKfx2pey7CcT65D6')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (172, N'Jorge Ruben', N'Gonzalez', N'odontologojgonzalez@gmail.com', N'$2y$10$u3fwFWsn7AWx7aVu3uO5B.CHFa7.JBpziyS4WkC1of6')
INSERT [dbo].[User] ([Id], [Nombre], [Apellido], [Email], [Password]) VALUES (173, N'eduardo', N'padilla', N'padillaeg@gmail.com', N'$2y$10$BFfLsyf.7WE6YZ7r7BEC3.7KKVnw1yvhRGo7XV0L0f/')
SET IDENTITY_INSERT [dbo].[User] OFF
USE [master]
GO
ALTER DATABASE [Challenge] SET  READ_WRITE 
GO
