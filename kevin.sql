USE [societe_el_massar]
GO
/****** Object:  Table [dbo].[Appartenir]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appartenir](
	[Id_catégories] [int] NOT NULL,
	[Id_chambres] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catégories]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catégories](
	[Id] [int] NOT NULL,
	[Description] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chambres]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chambres](
	[Id] [int] NOT NULL,
	[Telephone_Ch] [varchar](255) NOT NULL,
	[Id_hotels] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[Id] [int] NOT NULL,
	[NbreEtoiles] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[Id] [int] NOT NULL,
	[Nom] [varchar](255) NOT NULL,
	[Prénom] [varchar](255) NOT NULL,
	[Ville] [varchar](255) NOT NULL,
	[Code_postal] [varchar](10) NOT NULL,
	[Pays] [varchar](255) NOT NULL,
	[Telephone] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[concerner]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[concerner](
	[Id_cosommation] [int] NOT NULL,
	[Id_prestation] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consommations]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consommations](
	[Id] [int] NOT NULL,
	[DateConso] [date] NOT NULL,
	[Heure_Conso] [time](7) NOT NULL,
	[Id_clients] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotels]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotels](
	[Id] [int] NOT NULL,
	[Nom_H] [varchar](255) NOT NULL,
	[Adresse_H] [varchar](255) NOT NULL,
	[Code_Postal_H] [varchar](10) NOT NULL,
	[Telephone_H] [varchar](20) NOT NULL,
	[Id_classe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offrir]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offrir](
	[Id_prestation] [int] NOT NULL,
	[Id_hotels] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestations]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestations](
	[Id] [int] NOT NULL,
	[Designation_Pres] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservations]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservations](
	[Id] [int] NOT NULL,
	[DateDebut] [date] NOT NULL,
	[DateFin] [date] NOT NULL,
	[DatePayeArrhes] [date] NOT NULL,
	[MontantArrhes] [float] NOT NULL,
	[Id_clients] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifier]    Script Date: 21/02/2022 9:52:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifier](
	[Id_categories] [int] NOT NULL,
	[Id_classes] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appartenir]  WITH CHECK ADD FOREIGN KEY([Id_catégories])
REFERENCES [dbo].[catégories] ([Id])
GO
ALTER TABLE [dbo].[Appartenir]  WITH CHECK ADD FOREIGN KEY([Id_chambres])
REFERENCES [dbo].[chambres] ([Id])
GO
ALTER TABLE [dbo].[chambres]  WITH CHECK ADD FOREIGN KEY([Id_hotels])
REFERENCES [dbo].[hotels] ([Id])
GO
ALTER TABLE [dbo].[concerner]  WITH CHECK ADD FOREIGN KEY([Id_cosommation])
REFERENCES [dbo].[consommations] ([Id])
GO
ALTER TABLE [dbo].[concerner]  WITH CHECK ADD FOREIGN KEY([Id_prestation])
REFERENCES [dbo].[prestations] ([Id])
GO
ALTER TABLE [dbo].[consommations]  WITH CHECK ADD FOREIGN KEY([Id_clients])
REFERENCES [dbo].[clients] ([Id])
GO
ALTER TABLE [dbo].[hotels]  WITH CHECK ADD FOREIGN KEY([Id_classe])
REFERENCES [dbo].[classes] ([Id])
GO
ALTER TABLE [dbo].[offrir]  WITH CHECK ADD FOREIGN KEY([Id_hotels])
REFERENCES [dbo].[hotels] ([Id])
GO
ALTER TABLE [dbo].[offrir]  WITH CHECK ADD FOREIGN KEY([Id_prestation])
REFERENCES [dbo].[prestations] ([Id])
GO
ALTER TABLE [dbo].[reservations]  WITH CHECK ADD FOREIGN KEY([Id_clients])
REFERENCES [dbo].[clients] ([Id])
GO
ALTER TABLE [dbo].[Tarifier]  WITH CHECK ADD FOREIGN KEY([Id_categories])
REFERENCES [dbo].[catégories] ([Id])
GO
ALTER TABLE [dbo].[Tarifier]  WITH CHECK ADD FOREIGN KEY([Id_classes])
REFERENCES [dbo].[classes] ([Id])
GO
