USE [master]
GO
/****** Object:  Database [MyFitBody]    Script Date: 12/05/2020 18:06:08 ******/
CREATE DATABASE [MyFitBody]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyFitBody', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MyFitBody.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyFitBody_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MyFitBody_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MyFitBody] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyFitBody].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyFitBody] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyFitBody] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyFitBody] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyFitBody] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyFitBody] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyFitBody] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyFitBody] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyFitBody] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyFitBody] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyFitBody] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyFitBody] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyFitBody] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyFitBody] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyFitBody] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyFitBody] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyFitBody] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyFitBody] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyFitBody] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyFitBody] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyFitBody] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyFitBody] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyFitBody] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyFitBody] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyFitBody] SET  MULTI_USER 
GO
ALTER DATABASE [MyFitBody] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyFitBody] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyFitBody] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyFitBody] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyFitBody] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MyFitBody] SET QUERY_STORE = OFF
GO
USE [MyFitBody]
GO
/****** Object:  Table [dbo].[appartient]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appartient](
	[type] [varchar](50) NOT NULL,
	[idExercice] [int] NOT NULL,
 CONSTRAINT [appartient_PK] PRIMARY KEY CLUSTERED 
(
	[type] ASC,
	[idExercice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[avoir]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avoir](
	[idReponse] [int] NOT NULL,
	[nomMaladie] [varchar](50) NOT NULL,
 CONSTRAINT [avoir_PK] PRIMARY KEY CLUSTERED 
(
	[idReponse] ASC,
	[nomMaladie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[avoirRole]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avoirRole](
	[idRole] [int] NOT NULL,
	[idCoach] [int] NOT NULL,
	[idClient] [int] NOT NULL,
	[idSpecN] [int] NOT NULL,
	[idGestionnaire] [int] NOT NULL,
 CONSTRAINT [avoirRole_PK] PRIMARY KEY CLUSTERED 
(
	[idRole] ASC,
	[idCoach] ASC,
	[idClient] ASC,
	[idSpecN] ASC,
	[idGestionnaire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[idClient] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](50) NOT NULL,
	[prenom] [varchar](50) NOT NULL,
	[photo] [varchar](100) NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [clients_PK] PRIMARY KEY CLUSTERED 
(
	[idClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coach]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coach](
	[idCoach] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](50) NOT NULL,
	[prenom] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[photo] [varchar](100) NOT NULL,
	[bio] [varchar](100) NOT NULL,
 CONSTRAINT [coach_PK] PRIMARY KEY CLUSTERED 
(
	[idCoach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[composer]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[composer](
	[nom] [varchar](50) NOT NULL,
	[label] [varchar](50) NOT NULL,
	[quentite] [int] NOT NULL,
 CONSTRAINT [composer_PK] PRIMARY KEY CLUSTERED 
(
	[nom] ASC,
	[label] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consulter]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consulter](
	[idExercice] [int] NOT NULL,
	[idClient] [int] NOT NULL,
 CONSTRAINT [consulter_PK] PRIMARY KEY CLUSTERED 
(
	[idExercice] ASC,
	[idClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[excluser]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[excluser](
	[label] [varchar](50) NOT NULL,
	[nomMaladie] [varchar](50) NOT NULL,
 CONSTRAINT [excluser_PK] PRIMARY KEY CLUSTERED 
(
	[label] ASC,
	[nomMaladie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exercices]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exercices](
	[idExercice] [int] IDENTITY(1,1) NOT NULL,
	[duree] [varchar](50) NOT NULL,
	[freqence] [int] NOT NULL,
	[idCoach] [int] NOT NULL,
 CONSTRAINT [exercices_PK] PRIMARY KEY CLUSTERED 
(
	[idExercice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[filtrerExercice]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filtrerExercice](
	[idReponse] [int] NOT NULL,
	[idExercice] [int] NOT NULL,
 CONSTRAINT [filtrerExercice_PK] PRIMARY KEY CLUSTERED 
(
	[idReponse] ASC,
	[idExercice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[filtrerRepas]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filtrerRepas](
	[label] [varchar](50) NOT NULL,
	[idReponse] [int] NOT NULL,
 CONSTRAINT [filtrerRepas_PK] PRIMARY KEY CLUSTERED 
(
	[label] ASC,
	[idReponse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gestionnaire]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gestionnaire](
	[idGestionnaire] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](50) NOT NULL,
	[prenom] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [gestionnaire_PK] PRIMARY KEY CLUSTERED 
(
	[idGestionnaire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ingredients]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ingredients](
	[nom] [varchar](50) NOT NULL,
	[calories] [float] NOT NULL,
	[label] [varchar](50) NOT NULL,
 CONSTRAINT [ingredients_PK] PRIMARY KEY CLUSTERED 
(
	[nom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maladies]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maladies](
	[nomMaladie] [varchar](50) NOT NULL,
 CONSTRAINT [maladies_PK] PRIMARY KEY CLUSTERED 
(
	[nomMaladie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questions]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questions](
	[label] [varchar](250) NOT NULL,
	[idGestionnaire] [int] NOT NULL,
	[id_question] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [questions_PK] PRIMARY KEY CLUSTERED 
(
	[id_question] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[repas]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[repas](
	[label] [varchar](50) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[photo] [varchar](100) NOT NULL,
	[idSpecN] [int] NOT NULL,
	[label_typeRepas] [varchar](50) NOT NULL,
 CONSTRAINT [repas_PK] PRIMARY KEY CLUSTERED 
(
	[label] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[repondre]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[repondre](
	[idReponse] [int] NOT NULL,
	[idClient] [int] NOT NULL,
 CONSTRAINT [repondre_PK] PRIMARY KEY CLUSTERED 
(
	[idReponse] ASC,
	[idClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reponses]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reponses](
	[idReponse] [int] IDENTITY(1,1) NOT NULL,
	[reponse] [varchar](50) NOT NULL,
	[juste] [nvarchar](50) NOT NULL,
	[id_question] [int] NOT NULL,
 CONSTRAINT [reponses_PK] PRIMARY KEY CLUSTERED 
(
	[idReponse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[idRole] [int] NOT NULL,
	[nomRole] [varchar](50) NOT NULL,
 CONSTRAINT [role_PK] PRIMARY KEY CLUSTERED 
(
	[idRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specNutrition]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specNutrition](
	[idSpecN] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](50) NOT NULL,
	[prenom] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[photo] [varchar](100) NOT NULL,
	[bio] [varchar](100) NOT NULL,
 CONSTRAINT [specNutrition_PK] PRIMARY KEY CLUSTERED 
(
	[idSpecN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[typeIngredient]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typeIngredient](
	[label] [varchar](50) NOT NULL,
 CONSTRAINT [typeIngredient_PK] PRIMARY KEY CLUSTERED 
(
	[label] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[typeOfExercice]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typeOfExercice](
	[type] [varchar](50) NOT NULL,
	[description] [varchar](250) NOT NULL,
 CONSTRAINT [typeOfExercice_PK] PRIMARY KEY CLUSTERED 
(
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[typeRepas]    Script Date: 12/05/2020 18:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typeRepas](
	[label] [varchar](50) NOT NULL,
 CONSTRAINT [typeRepas_PK] PRIMARY KEY CLUSTERED 
(
	[label] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[appartient]  WITH CHECK ADD  CONSTRAINT [appartient_exercices0_FK] FOREIGN KEY([idExercice])
REFERENCES [dbo].[exercices] ([idExercice])
GO
ALTER TABLE [dbo].[appartient] CHECK CONSTRAINT [appartient_exercices0_FK]
GO
ALTER TABLE [dbo].[appartient]  WITH CHECK ADD  CONSTRAINT [appartient_typeOfExercice_FK] FOREIGN KEY([type])
REFERENCES [dbo].[typeOfExercice] ([type])
GO
ALTER TABLE [dbo].[appartient] CHECK CONSTRAINT [appartient_typeOfExercice_FK]
GO
ALTER TABLE [dbo].[avoir]  WITH CHECK ADD  CONSTRAINT [avoir_maladies0_FK] FOREIGN KEY([nomMaladie])
REFERENCES [dbo].[maladies] ([nomMaladie])
GO
ALTER TABLE [dbo].[avoir] CHECK CONSTRAINT [avoir_maladies0_FK]
GO
ALTER TABLE [dbo].[avoir]  WITH CHECK ADD  CONSTRAINT [avoir_reponses_FK] FOREIGN KEY([idReponse])
REFERENCES [dbo].[reponses] ([idReponse])
GO
ALTER TABLE [dbo].[avoir] CHECK CONSTRAINT [avoir_reponses_FK]
GO
ALTER TABLE [dbo].[avoirRole]  WITH CHECK ADD  CONSTRAINT [avoirRole_clients1_FK] FOREIGN KEY([idClient])
REFERENCES [dbo].[clients] ([idClient])
GO
ALTER TABLE [dbo].[avoirRole] CHECK CONSTRAINT [avoirRole_clients1_FK]
GO
ALTER TABLE [dbo].[avoirRole]  WITH CHECK ADD  CONSTRAINT [avoirRole_coach0_FK] FOREIGN KEY([idCoach])
REFERENCES [dbo].[coach] ([idCoach])
GO
ALTER TABLE [dbo].[avoirRole] CHECK CONSTRAINT [avoirRole_coach0_FK]
GO
ALTER TABLE [dbo].[avoirRole]  WITH CHECK ADD  CONSTRAINT [avoirRole_gestionnaire3_FK] FOREIGN KEY([idGestionnaire])
REFERENCES [dbo].[gestionnaire] ([idGestionnaire])
GO
ALTER TABLE [dbo].[avoirRole] CHECK CONSTRAINT [avoirRole_gestionnaire3_FK]
GO
ALTER TABLE [dbo].[avoirRole]  WITH CHECK ADD  CONSTRAINT [avoirRole_role_FK] FOREIGN KEY([idRole])
REFERENCES [dbo].[role] ([idRole])
GO
ALTER TABLE [dbo].[avoirRole] CHECK CONSTRAINT [avoirRole_role_FK]
GO
ALTER TABLE [dbo].[avoirRole]  WITH CHECK ADD  CONSTRAINT [avoirRole_specNutrition2_FK] FOREIGN KEY([idSpecN])
REFERENCES [dbo].[specNutrition] ([idSpecN])
GO
ALTER TABLE [dbo].[avoirRole] CHECK CONSTRAINT [avoirRole_specNutrition2_FK]
GO
ALTER TABLE [dbo].[composer]  WITH CHECK ADD  CONSTRAINT [composer_ingredients_FK] FOREIGN KEY([nom])
REFERENCES [dbo].[ingredients] ([nom])
GO
ALTER TABLE [dbo].[composer] CHECK CONSTRAINT [composer_ingredients_FK]
GO
ALTER TABLE [dbo].[composer]  WITH CHECK ADD  CONSTRAINT [composer_repas0_FK] FOREIGN KEY([label])
REFERENCES [dbo].[repas] ([label])
GO
ALTER TABLE [dbo].[composer] CHECK CONSTRAINT [composer_repas0_FK]
GO
ALTER TABLE [dbo].[consulter]  WITH CHECK ADD  CONSTRAINT [consulter_clients0_FK] FOREIGN KEY([idClient])
REFERENCES [dbo].[clients] ([idClient])
GO
ALTER TABLE [dbo].[consulter] CHECK CONSTRAINT [consulter_clients0_FK]
GO
ALTER TABLE [dbo].[consulter]  WITH CHECK ADD  CONSTRAINT [consulter_exercices_FK] FOREIGN KEY([idExercice])
REFERENCES [dbo].[exercices] ([idExercice])
GO
ALTER TABLE [dbo].[consulter] CHECK CONSTRAINT [consulter_exercices_FK]
GO
ALTER TABLE [dbo].[excluser]  WITH CHECK ADD  CONSTRAINT [excluser_maladies0_FK] FOREIGN KEY([nomMaladie])
REFERENCES [dbo].[maladies] ([nomMaladie])
GO
ALTER TABLE [dbo].[excluser] CHECK CONSTRAINT [excluser_maladies0_FK]
GO
ALTER TABLE [dbo].[excluser]  WITH CHECK ADD  CONSTRAINT [excluser_repas_FK] FOREIGN KEY([label])
REFERENCES [dbo].[repas] ([label])
GO
ALTER TABLE [dbo].[excluser] CHECK CONSTRAINT [excluser_repas_FK]
GO
ALTER TABLE [dbo].[exercices]  WITH CHECK ADD  CONSTRAINT [exercices_coach_FK] FOREIGN KEY([idCoach])
REFERENCES [dbo].[coach] ([idCoach])
GO
ALTER TABLE [dbo].[exercices] CHECK CONSTRAINT [exercices_coach_FK]
GO
ALTER TABLE [dbo].[filtrerExercice]  WITH CHECK ADD  CONSTRAINT [filtrerExercice_exercices0_FK] FOREIGN KEY([idExercice])
REFERENCES [dbo].[exercices] ([idExercice])
GO
ALTER TABLE [dbo].[filtrerExercice] CHECK CONSTRAINT [filtrerExercice_exercices0_FK]
GO
ALTER TABLE [dbo].[filtrerExercice]  WITH CHECK ADD  CONSTRAINT [filtrerExercice_reponses_FK] FOREIGN KEY([idReponse])
REFERENCES [dbo].[reponses] ([idReponse])
GO
ALTER TABLE [dbo].[filtrerExercice] CHECK CONSTRAINT [filtrerExercice_reponses_FK]
GO
ALTER TABLE [dbo].[filtrerRepas]  WITH CHECK ADD  CONSTRAINT [filtrerRepas_repas_FK] FOREIGN KEY([label])
REFERENCES [dbo].[repas] ([label])
GO
ALTER TABLE [dbo].[filtrerRepas] CHECK CONSTRAINT [filtrerRepas_repas_FK]
GO
ALTER TABLE [dbo].[filtrerRepas]  WITH CHECK ADD  CONSTRAINT [filtrerRepas_reponses0_FK] FOREIGN KEY([idReponse])
REFERENCES [dbo].[reponses] ([idReponse])
GO
ALTER TABLE [dbo].[filtrerRepas] CHECK CONSTRAINT [filtrerRepas_reponses0_FK]
GO
ALTER TABLE [dbo].[ingredients]  WITH CHECK ADD  CONSTRAINT [ingredients_typeIngredient_FK] FOREIGN KEY([label])
REFERENCES [dbo].[typeIngredient] ([label])
GO
ALTER TABLE [dbo].[ingredients] CHECK CONSTRAINT [ingredients_typeIngredient_FK]
GO
ALTER TABLE [dbo].[questions]  WITH CHECK ADD  CONSTRAINT [questions_gestionnaire_FK] FOREIGN KEY([idGestionnaire])
REFERENCES [dbo].[gestionnaire] ([idGestionnaire])
GO
ALTER TABLE [dbo].[questions] CHECK CONSTRAINT [questions_gestionnaire_FK]
GO
ALTER TABLE [dbo].[repas]  WITH CHECK ADD  CONSTRAINT [repas_specNutrition_FK] FOREIGN KEY([idSpecN])
REFERENCES [dbo].[specNutrition] ([idSpecN])
GO
ALTER TABLE [dbo].[repas] CHECK CONSTRAINT [repas_specNutrition_FK]
GO
ALTER TABLE [dbo].[repas]  WITH CHECK ADD  CONSTRAINT [repas_typeRepas0_FK] FOREIGN KEY([label_typeRepas])
REFERENCES [dbo].[typeRepas] ([label])
GO
ALTER TABLE [dbo].[repas] CHECK CONSTRAINT [repas_typeRepas0_FK]
GO
ALTER TABLE [dbo].[repondre]  WITH CHECK ADD  CONSTRAINT [repondre_clients0_FK] FOREIGN KEY([idClient])
REFERENCES [dbo].[clients] ([idClient])
GO
ALTER TABLE [dbo].[repondre] CHECK CONSTRAINT [repondre_clients0_FK]
GO
ALTER TABLE [dbo].[repondre]  WITH CHECK ADD  CONSTRAINT [repondre_reponses_FK] FOREIGN KEY([idReponse])
REFERENCES [dbo].[reponses] ([idReponse])
GO
ALTER TABLE [dbo].[repondre] CHECK CONSTRAINT [repondre_reponses_FK]
GO
ALTER TABLE [dbo].[reponses]  WITH CHECK ADD  CONSTRAINT [FK_reponses_question] FOREIGN KEY([id_question])
REFERENCES [dbo].[questions] ([id_question])
GO
ALTER TABLE [dbo].[reponses] CHECK CONSTRAINT [FK_reponses_question]
GO
USE [master]
GO
ALTER DATABASE [MyFitBody] SET  READ_WRITE 
GO
