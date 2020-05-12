
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/29/2020 15:28:57
-- Generated from EDMX file: C:\Users\Youcode\source\repos\PerfectBody\PerfectBody.DataModel\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MyFitBody];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_appartient_exercices0_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[appartient] DROP CONSTRAINT [FK_appartient_exercices0_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_appartient_typeOfExercice_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[appartient] DROP CONSTRAINT [FK_appartient_typeOfExercice_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_avoir_maladies0_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[avoir] DROP CONSTRAINT [FK_avoir_maladies0_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_avoir_reponses_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[avoir] DROP CONSTRAINT [FK_avoir_reponses_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_avoirRole_clients1_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[avoirRole] DROP CONSTRAINT [FK_avoirRole_clients1_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_avoirRole_coach0_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[avoirRole] DROP CONSTRAINT [FK_avoirRole_coach0_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_avoirRole_gestionnaire3_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[avoirRole] DROP CONSTRAINT [FK_avoirRole_gestionnaire3_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_avoirRole_role_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[avoirRole] DROP CONSTRAINT [FK_avoirRole_role_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_avoirRole_specNutrition2_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[avoirRole] DROP CONSTRAINT [FK_avoirRole_specNutrition2_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_composer_ingredients_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[composer] DROP CONSTRAINT [FK_composer_ingredients_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_composer_repas0_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[composer] DROP CONSTRAINT [FK_composer_repas0_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_consulter_clients0_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[consulter] DROP CONSTRAINT [FK_consulter_clients0_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_consulter_exercices_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[consulter] DROP CONSTRAINT [FK_consulter_exercices_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_excluser_maladies0_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[excluser] DROP CONSTRAINT [FK_excluser_maladies0_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_excluser_repas_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[excluser] DROP CONSTRAINT [FK_excluser_repas_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_exercices_coach_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[exercices] DROP CONSTRAINT [FK_exercices_coach_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_filtrerExercice_exercices0_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[filtrerExercice] DROP CONSTRAINT [FK_filtrerExercice_exercices0_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_filtrerExercice_reponses_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[filtrerExercice] DROP CONSTRAINT [FK_filtrerExercice_reponses_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_filtrerRepas_repas_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[filtrerRepas] DROP CONSTRAINT [FK_filtrerRepas_repas_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_filtrerRepas_reponses0_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[filtrerRepas] DROP CONSTRAINT [FK_filtrerRepas_reponses0_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_reponses_question]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[reponses] DROP CONSTRAINT [FK_reponses_question];
GO
IF OBJECT_ID(N'[dbo].[FK_ingredients_typeIngredient_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ingredients] DROP CONSTRAINT [FK_ingredients_typeIngredient_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_questions_gestionnaire_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[questions] DROP CONSTRAINT [FK_questions_gestionnaire_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_repas_specNutrition_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[repas] DROP CONSTRAINT [FK_repas_specNutrition_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_repas_typeRepas0_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[repas] DROP CONSTRAINT [FK_repas_typeRepas0_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_repondre_clients0_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[repondre] DROP CONSTRAINT [FK_repondre_clients0_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_repondre_reponses_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[repondre] DROP CONSTRAINT [FK_repondre_reponses_FK];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[appartient]', 'U') IS NOT NULL
    DROP TABLE [dbo].[appartient];
GO
IF OBJECT_ID(N'[dbo].[avoir]', 'U') IS NOT NULL
    DROP TABLE [dbo].[avoir];
GO
IF OBJECT_ID(N'[dbo].[avoirRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[avoirRole];
GO
IF OBJECT_ID(N'[dbo].[clients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[clients];
GO
IF OBJECT_ID(N'[dbo].[coach]', 'U') IS NOT NULL
    DROP TABLE [dbo].[coach];
GO
IF OBJECT_ID(N'[dbo].[composer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[composer];
GO
IF OBJECT_ID(N'[dbo].[consulter]', 'U') IS NOT NULL
    DROP TABLE [dbo].[consulter];
GO
IF OBJECT_ID(N'[dbo].[excluser]', 'U') IS NOT NULL
    DROP TABLE [dbo].[excluser];
GO
IF OBJECT_ID(N'[dbo].[exercices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[exercices];
GO
IF OBJECT_ID(N'[dbo].[filtrerExercice]', 'U') IS NOT NULL
    DROP TABLE [dbo].[filtrerExercice];
GO
IF OBJECT_ID(N'[dbo].[filtrerRepas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[filtrerRepas];
GO
IF OBJECT_ID(N'[dbo].[gestionnaire]', 'U') IS NOT NULL
    DROP TABLE [dbo].[gestionnaire];
GO
IF OBJECT_ID(N'[dbo].[ingredients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ingredients];
GO
IF OBJECT_ID(N'[dbo].[maladies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[maladies];
GO
IF OBJECT_ID(N'[dbo].[questions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[questions];
GO
IF OBJECT_ID(N'[dbo].[repas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[repas];
GO
IF OBJECT_ID(N'[dbo].[repondre]', 'U') IS NOT NULL
    DROP TABLE [dbo].[repondre];
GO
IF OBJECT_ID(N'[dbo].[reponses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[reponses];
GO
IF OBJECT_ID(N'[dbo].[role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[role];
GO
IF OBJECT_ID(N'[dbo].[specNutrition]', 'U') IS NOT NULL
    DROP TABLE [dbo].[specNutrition];
GO
IF OBJECT_ID(N'[dbo].[typeIngredient]', 'U') IS NOT NULL
    DROP TABLE [dbo].[typeIngredient];
GO
IF OBJECT_ID(N'[dbo].[typeOfExercice]', 'U') IS NOT NULL
    DROP TABLE [dbo].[typeOfExercice];
GO
IF OBJECT_ID(N'[dbo].[typeRepas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[typeRepas];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'avoirRole'
CREATE TABLE [dbo].[avoirRole] (
    [idRole] int  NOT NULL,
    [idCoach] int  NOT NULL,
    [idClient] int  NOT NULL,
    [idSpecN] int  NOT NULL,
    [idGestionnaire] int  NOT NULL
);
GO

-- Creating table 'clients'
CREATE TABLE [dbo].[clients] (
    [idClient] int IDENTITY(1,1) NOT NULL,
    [nom] varchar(50)  NOT NULL,
    [prenom] varchar(50)  NOT NULL,
    [photo] varchar(100)  NOT NULL,
    [date] datetime  NOT NULL
);
GO

-- Creating table 'coach'
CREATE TABLE [dbo].[coach] (
    [idCoach] int IDENTITY(1,1) NOT NULL,
    [nom] varchar(50)  NOT NULL,
    [prenom] varchar(50)  NOT NULL,
    [username] varchar(50)  NOT NULL,
    [password] varchar(50)  NOT NULL,
    [email] varchar(50)  NOT NULL,
    [photo] varchar(100)  NOT NULL,
    [bio] varchar(100)  NOT NULL
);
GO

-- Creating table 'composer'
CREATE TABLE [dbo].[composer] (
    [nom] varchar(50)  NOT NULL,
    [label] varchar(50)  NOT NULL,
    [quentite] int  NOT NULL
);
GO

-- Creating table 'exercices'
CREATE TABLE [dbo].[exercices] (
    [idExercice] int IDENTITY(1,1) NOT NULL,
    [duree] varchar(50)  NOT NULL,
    [freqence] int  NOT NULL,
    [idCoach] int  NOT NULL
);
GO

-- Creating table 'gestionnaire'
CREATE TABLE [dbo].[gestionnaire] (
    [idGestionnaire] int IDENTITY(1,1) NOT NULL,
    [nom] varchar(50)  NOT NULL,
    [prenom] varchar(50)  NOT NULL,
    [username] varchar(50)  NOT NULL,
    [password] varchar(50)  NOT NULL
);
GO

-- Creating table 'ingredients'
CREATE TABLE [dbo].[ingredients] (
    [nom] varchar(50)  NOT NULL,
    [calories] float  NOT NULL,
    [label] varchar(50)  NOT NULL
);
GO

-- Creating table 'maladies'
CREATE TABLE [dbo].[maladies] (
    [nomMaladie] varchar(50)  NOT NULL
);
GO

-- Creating table 'repas'
CREATE TABLE [dbo].[repas] (
    [label] varchar(50)  NOT NULL,
    [description] varchar(100)  NOT NULL,
    [photo] varchar(100)  NOT NULL,
    [idSpecN] int  NOT NULL,
    [label_typeRepas] varchar(50)  NOT NULL
);
GO

-- Creating table 'role'
CREATE TABLE [dbo].[role] (
    [idRole] int  NOT NULL,
    [nomRole] varchar(50)  NOT NULL
);
GO

-- Creating table 'specNutrition'
CREATE TABLE [dbo].[specNutrition] (
    [idSpecN] int IDENTITY(1,1) NOT NULL,
    [nom] varchar(50)  NOT NULL,
    [prenom] varchar(50)  NOT NULL,
    [username] varchar(50)  NOT NULL,
    [password] varchar(50)  NOT NULL,
    [email] varchar(50)  NOT NULL,
    [photo] varchar(100)  NOT NULL,
    [bio] varchar(100)  NOT NULL
);
GO

-- Creating table 'typeIngredient'
CREATE TABLE [dbo].[typeIngredient] (
    [label] varchar(50)  NOT NULL
);
GO

-- Creating table 'typeOfExercice'
CREATE TABLE [dbo].[typeOfExercice] (
    [type] varchar(50)  NOT NULL,
    [description] varchar(250)  NOT NULL
);
GO

-- Creating table 'typeRepas'
CREATE TABLE [dbo].[typeRepas] (
    [label] varchar(50)  NOT NULL
);
GO

-- Creating table 'reponses'
CREATE TABLE [dbo].[reponses] (
    [idReponse] int IDENTITY(1,1) NOT NULL,
    [reponse] varchar(50)  NOT NULL,
    [juste] nvarchar(50)  NOT NULL,
    [id_question] int  NOT NULL
);
GO

-- Creating table 'questions'
CREATE TABLE [dbo].[questions] (
    [label] varchar(250)  NOT NULL,
    [idGestionnaire] int  NOT NULL,
    [id_question] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'appartient'
CREATE TABLE [dbo].[appartient] (
    [exercices_idExercice] int  NOT NULL,
    [typeOfExercice_type] varchar(50)  NOT NULL
);
GO

-- Creating table 'consulter'
CREATE TABLE [dbo].[consulter] (
    [clients_idClient] int  NOT NULL,
    [exercices_idExercice] int  NOT NULL
);
GO

-- Creating table 'excluser'
CREATE TABLE [dbo].[excluser] (
    [maladies_nomMaladie] varchar(50)  NOT NULL,
    [repas_label] varchar(50)  NOT NULL
);
GO

-- Creating table 'avoir'
CREATE TABLE [dbo].[avoir] (
    [maladies_nomMaladie] varchar(50)  NOT NULL,
    [reponses_idReponse] int  NOT NULL
);
GO

-- Creating table 'filtrerExercice'
CREATE TABLE [dbo].[filtrerExercice] (
    [exercices_idExercice] int  NOT NULL,
    [reponses_idReponse] int  NOT NULL
);
GO

-- Creating table 'filtrerRepas'
CREATE TABLE [dbo].[filtrerRepas] (
    [repas_label] varchar(50)  NOT NULL,
    [reponses_idReponse] int  NOT NULL
);
GO

-- Creating table 'repondre'
CREATE TABLE [dbo].[repondre] (
    [clients_idClient] int  NOT NULL,
    [reponses_idReponse] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [idRole], [idCoach], [idClient], [idSpecN], [idGestionnaire] in table 'avoirRole'
ALTER TABLE [dbo].[avoirRole]
ADD CONSTRAINT [PK_avoirRole]
    PRIMARY KEY CLUSTERED ([idRole], [idCoach], [idClient], [idSpecN], [idGestionnaire] ASC);
GO

-- Creating primary key on [idClient] in table 'clients'
ALTER TABLE [dbo].[clients]
ADD CONSTRAINT [PK_clients]
    PRIMARY KEY CLUSTERED ([idClient] ASC);
GO

-- Creating primary key on [idCoach] in table 'coach'
ALTER TABLE [dbo].[coach]
ADD CONSTRAINT [PK_coach]
    PRIMARY KEY CLUSTERED ([idCoach] ASC);
GO

-- Creating primary key on [nom], [label] in table 'composer'
ALTER TABLE [dbo].[composer]
ADD CONSTRAINT [PK_composer]
    PRIMARY KEY CLUSTERED ([nom], [label] ASC);
GO

-- Creating primary key on [idExercice] in table 'exercices'
ALTER TABLE [dbo].[exercices]
ADD CONSTRAINT [PK_exercices]
    PRIMARY KEY CLUSTERED ([idExercice] ASC);
GO

-- Creating primary key on [idGestionnaire] in table 'gestionnaire'
ALTER TABLE [dbo].[gestionnaire]
ADD CONSTRAINT [PK_gestionnaire]
    PRIMARY KEY CLUSTERED ([idGestionnaire] ASC);
GO

-- Creating primary key on [nom] in table 'ingredients'
ALTER TABLE [dbo].[ingredients]
ADD CONSTRAINT [PK_ingredients]
    PRIMARY KEY CLUSTERED ([nom] ASC);
GO

-- Creating primary key on [nomMaladie] in table 'maladies'
ALTER TABLE [dbo].[maladies]
ADD CONSTRAINT [PK_maladies]
    PRIMARY KEY CLUSTERED ([nomMaladie] ASC);
GO

-- Creating primary key on [label] in table 'repas'
ALTER TABLE [dbo].[repas]
ADD CONSTRAINT [PK_repas]
    PRIMARY KEY CLUSTERED ([label] ASC);
GO

-- Creating primary key on [idRole] in table 'role'
ALTER TABLE [dbo].[role]
ADD CONSTRAINT [PK_role]
    PRIMARY KEY CLUSTERED ([idRole] ASC);
GO

-- Creating primary key on [idSpecN] in table 'specNutrition'
ALTER TABLE [dbo].[specNutrition]
ADD CONSTRAINT [PK_specNutrition]
    PRIMARY KEY CLUSTERED ([idSpecN] ASC);
GO

-- Creating primary key on [label] in table 'typeIngredient'
ALTER TABLE [dbo].[typeIngredient]
ADD CONSTRAINT [PK_typeIngredient]
    PRIMARY KEY CLUSTERED ([label] ASC);
GO

-- Creating primary key on [type] in table 'typeOfExercice'
ALTER TABLE [dbo].[typeOfExercice]
ADD CONSTRAINT [PK_typeOfExercice]
    PRIMARY KEY CLUSTERED ([type] ASC);
GO

-- Creating primary key on [label] in table 'typeRepas'
ALTER TABLE [dbo].[typeRepas]
ADD CONSTRAINT [PK_typeRepas]
    PRIMARY KEY CLUSTERED ([label] ASC);
GO

-- Creating primary key on [idReponse] in table 'reponses'
ALTER TABLE [dbo].[reponses]
ADD CONSTRAINT [PK_reponses]
    PRIMARY KEY CLUSTERED ([idReponse] ASC);
GO

-- Creating primary key on [id_question] in table 'questions'
ALTER TABLE [dbo].[questions]
ADD CONSTRAINT [PK_questions]
    PRIMARY KEY CLUSTERED ([id_question] ASC);
GO

-- Creating primary key on [exercices_idExercice], [typeOfExercice_type] in table 'appartient'
ALTER TABLE [dbo].[appartient]
ADD CONSTRAINT [PK_appartient]
    PRIMARY KEY CLUSTERED ([exercices_idExercice], [typeOfExercice_type] ASC);
GO

-- Creating primary key on [clients_idClient], [exercices_idExercice] in table 'consulter'
ALTER TABLE [dbo].[consulter]
ADD CONSTRAINT [PK_consulter]
    PRIMARY KEY CLUSTERED ([clients_idClient], [exercices_idExercice] ASC);
GO

-- Creating primary key on [maladies_nomMaladie], [repas_label] in table 'excluser'
ALTER TABLE [dbo].[excluser]
ADD CONSTRAINT [PK_excluser]
    PRIMARY KEY CLUSTERED ([maladies_nomMaladie], [repas_label] ASC);
GO

-- Creating primary key on [maladies_nomMaladie], [reponses_idReponse] in table 'avoir'
ALTER TABLE [dbo].[avoir]
ADD CONSTRAINT [PK_avoir]
    PRIMARY KEY CLUSTERED ([maladies_nomMaladie], [reponses_idReponse] ASC);
GO

-- Creating primary key on [exercices_idExercice], [reponses_idReponse] in table 'filtrerExercice'
ALTER TABLE [dbo].[filtrerExercice]
ADD CONSTRAINT [PK_filtrerExercice]
    PRIMARY KEY CLUSTERED ([exercices_idExercice], [reponses_idReponse] ASC);
GO

-- Creating primary key on [repas_label], [reponses_idReponse] in table 'filtrerRepas'
ALTER TABLE [dbo].[filtrerRepas]
ADD CONSTRAINT [PK_filtrerRepas]
    PRIMARY KEY CLUSTERED ([repas_label], [reponses_idReponse] ASC);
GO

-- Creating primary key on [clients_idClient], [reponses_idReponse] in table 'repondre'
ALTER TABLE [dbo].[repondre]
ADD CONSTRAINT [PK_repondre]
    PRIMARY KEY CLUSTERED ([clients_idClient], [reponses_idReponse] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [idClient] in table 'avoirRole'
ALTER TABLE [dbo].[avoirRole]
ADD CONSTRAINT [FK_avoirRole_clients1_FK]
    FOREIGN KEY ([idClient])
    REFERENCES [dbo].[clients]
        ([idClient])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_avoirRole_clients1_FK'
CREATE INDEX [IX_FK_avoirRole_clients1_FK]
ON [dbo].[avoirRole]
    ([idClient]);
GO

-- Creating foreign key on [idCoach] in table 'avoirRole'
ALTER TABLE [dbo].[avoirRole]
ADD CONSTRAINT [FK_avoirRole_coach0_FK]
    FOREIGN KEY ([idCoach])
    REFERENCES [dbo].[coach]
        ([idCoach])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_avoirRole_coach0_FK'
CREATE INDEX [IX_FK_avoirRole_coach0_FK]
ON [dbo].[avoirRole]
    ([idCoach]);
GO

-- Creating foreign key on [idGestionnaire] in table 'avoirRole'
ALTER TABLE [dbo].[avoirRole]
ADD CONSTRAINT [FK_avoirRole_gestionnaire3_FK]
    FOREIGN KEY ([idGestionnaire])
    REFERENCES [dbo].[gestionnaire]
        ([idGestionnaire])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_avoirRole_gestionnaire3_FK'
CREATE INDEX [IX_FK_avoirRole_gestionnaire3_FK]
ON [dbo].[avoirRole]
    ([idGestionnaire]);
GO

-- Creating foreign key on [idRole] in table 'avoirRole'
ALTER TABLE [dbo].[avoirRole]
ADD CONSTRAINT [FK_avoirRole_role_FK]
    FOREIGN KEY ([idRole])
    REFERENCES [dbo].[role]
        ([idRole])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idSpecN] in table 'avoirRole'
ALTER TABLE [dbo].[avoirRole]
ADD CONSTRAINT [FK_avoirRole_specNutrition2_FK]
    FOREIGN KEY ([idSpecN])
    REFERENCES [dbo].[specNutrition]
        ([idSpecN])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_avoirRole_specNutrition2_FK'
CREATE INDEX [IX_FK_avoirRole_specNutrition2_FK]
ON [dbo].[avoirRole]
    ([idSpecN]);
GO

-- Creating foreign key on [idCoach] in table 'exercices'
ALTER TABLE [dbo].[exercices]
ADD CONSTRAINT [FK_exercices_coach_FK]
    FOREIGN KEY ([idCoach])
    REFERENCES [dbo].[coach]
        ([idCoach])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_exercices_coach_FK'
CREATE INDEX [IX_FK_exercices_coach_FK]
ON [dbo].[exercices]
    ([idCoach]);
GO

-- Creating foreign key on [nom] in table 'composer'
ALTER TABLE [dbo].[composer]
ADD CONSTRAINT [FK_composer_ingredients_FK]
    FOREIGN KEY ([nom])
    REFERENCES [dbo].[ingredients]
        ([nom])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [label] in table 'composer'
ALTER TABLE [dbo].[composer]
ADD CONSTRAINT [FK_composer_repas0_FK]
    FOREIGN KEY ([label])
    REFERENCES [dbo].[repas]
        ([label])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_composer_repas0_FK'
CREATE INDEX [IX_FK_composer_repas0_FK]
ON [dbo].[composer]
    ([label]);
GO

-- Creating foreign key on [label] in table 'ingredients'
ALTER TABLE [dbo].[ingredients]
ADD CONSTRAINT [FK_ingredients_typeIngredient_FK]
    FOREIGN KEY ([label])
    REFERENCES [dbo].[typeIngredient]
        ([label])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ingredients_typeIngredient_FK'
CREATE INDEX [IX_FK_ingredients_typeIngredient_FK]
ON [dbo].[ingredients]
    ([label]);
GO

-- Creating foreign key on [idSpecN] in table 'repas'
ALTER TABLE [dbo].[repas]
ADD CONSTRAINT [FK_repas_specNutrition_FK]
    FOREIGN KEY ([idSpecN])
    REFERENCES [dbo].[specNutrition]
        ([idSpecN])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_repas_specNutrition_FK'
CREATE INDEX [IX_FK_repas_specNutrition_FK]
ON [dbo].[repas]
    ([idSpecN]);
GO

-- Creating foreign key on [label_typeRepas] in table 'repas'
ALTER TABLE [dbo].[repas]
ADD CONSTRAINT [FK_repas_typeRepas0_FK]
    FOREIGN KEY ([label_typeRepas])
    REFERENCES [dbo].[typeRepas]
        ([label])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_repas_typeRepas0_FK'
CREATE INDEX [IX_FK_repas_typeRepas0_FK]
ON [dbo].[repas]
    ([label_typeRepas]);
GO

-- Creating foreign key on [exercices_idExercice] in table 'appartient'
ALTER TABLE [dbo].[appartient]
ADD CONSTRAINT [FK_appartient_exercices]
    FOREIGN KEY ([exercices_idExercice])
    REFERENCES [dbo].[exercices]
        ([idExercice])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [typeOfExercice_type] in table 'appartient'
ALTER TABLE [dbo].[appartient]
ADD CONSTRAINT [FK_appartient_typeOfExercice]
    FOREIGN KEY ([typeOfExercice_type])
    REFERENCES [dbo].[typeOfExercice]
        ([type])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_appartient_typeOfExercice'
CREATE INDEX [IX_FK_appartient_typeOfExercice]
ON [dbo].[appartient]
    ([typeOfExercice_type]);
GO

-- Creating foreign key on [clients_idClient] in table 'consulter'
ALTER TABLE [dbo].[consulter]
ADD CONSTRAINT [FK_consulter_clients]
    FOREIGN KEY ([clients_idClient])
    REFERENCES [dbo].[clients]
        ([idClient])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [exercices_idExercice] in table 'consulter'
ALTER TABLE [dbo].[consulter]
ADD CONSTRAINT [FK_consulter_exercices]
    FOREIGN KEY ([exercices_idExercice])
    REFERENCES [dbo].[exercices]
        ([idExercice])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_consulter_exercices'
CREATE INDEX [IX_FK_consulter_exercices]
ON [dbo].[consulter]
    ([exercices_idExercice]);
GO

-- Creating foreign key on [maladies_nomMaladie] in table 'excluser'
ALTER TABLE [dbo].[excluser]
ADD CONSTRAINT [FK_excluser_maladies]
    FOREIGN KEY ([maladies_nomMaladie])
    REFERENCES [dbo].[maladies]
        ([nomMaladie])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [repas_label] in table 'excluser'
ALTER TABLE [dbo].[excluser]
ADD CONSTRAINT [FK_excluser_repas]
    FOREIGN KEY ([repas_label])
    REFERENCES [dbo].[repas]
        ([label])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_excluser_repas'
CREATE INDEX [IX_FK_excluser_repas]
ON [dbo].[excluser]
    ([repas_label]);
GO

-- Creating foreign key on [maladies_nomMaladie] in table 'avoir'
ALTER TABLE [dbo].[avoir]
ADD CONSTRAINT [FK_avoir_maladies]
    FOREIGN KEY ([maladies_nomMaladie])
    REFERENCES [dbo].[maladies]
        ([nomMaladie])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [reponses_idReponse] in table 'avoir'
ALTER TABLE [dbo].[avoir]
ADD CONSTRAINT [FK_avoir_reponses]
    FOREIGN KEY ([reponses_idReponse])
    REFERENCES [dbo].[reponses]
        ([idReponse])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_avoir_reponses'
CREATE INDEX [IX_FK_avoir_reponses]
ON [dbo].[avoir]
    ([reponses_idReponse]);
GO

-- Creating foreign key on [exercices_idExercice] in table 'filtrerExercice'
ALTER TABLE [dbo].[filtrerExercice]
ADD CONSTRAINT [FK_filtrerExercice_exercices]
    FOREIGN KEY ([exercices_idExercice])
    REFERENCES [dbo].[exercices]
        ([idExercice])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [reponses_idReponse] in table 'filtrerExercice'
ALTER TABLE [dbo].[filtrerExercice]
ADD CONSTRAINT [FK_filtrerExercice_reponses]
    FOREIGN KEY ([reponses_idReponse])
    REFERENCES [dbo].[reponses]
        ([idReponse])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_filtrerExercice_reponses'
CREATE INDEX [IX_FK_filtrerExercice_reponses]
ON [dbo].[filtrerExercice]
    ([reponses_idReponse]);
GO

-- Creating foreign key on [repas_label] in table 'filtrerRepas'
ALTER TABLE [dbo].[filtrerRepas]
ADD CONSTRAINT [FK_filtrerRepas_repas]
    FOREIGN KEY ([repas_label])
    REFERENCES [dbo].[repas]
        ([label])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [reponses_idReponse] in table 'filtrerRepas'
ALTER TABLE [dbo].[filtrerRepas]
ADD CONSTRAINT [FK_filtrerRepas_reponses]
    FOREIGN KEY ([reponses_idReponse])
    REFERENCES [dbo].[reponses]
        ([idReponse])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_filtrerRepas_reponses'
CREATE INDEX [IX_FK_filtrerRepas_reponses]
ON [dbo].[filtrerRepas]
    ([reponses_idReponse]);
GO

-- Creating foreign key on [clients_idClient] in table 'repondre'
ALTER TABLE [dbo].[repondre]
ADD CONSTRAINT [FK_repondre_clients]
    FOREIGN KEY ([clients_idClient])
    REFERENCES [dbo].[clients]
        ([idClient])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [reponses_idReponse] in table 'repondre'
ALTER TABLE [dbo].[repondre]
ADD CONSTRAINT [FK_repondre_reponses]
    FOREIGN KEY ([reponses_idReponse])
    REFERENCES [dbo].[reponses]
        ([idReponse])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_repondre_reponses'
CREATE INDEX [IX_FK_repondre_reponses]
ON [dbo].[repondre]
    ([reponses_idReponse]);
GO

-- Creating foreign key on [idGestionnaire] in table 'questions'
ALTER TABLE [dbo].[questions]
ADD CONSTRAINT [FK_questions_gestionnaire_FK]
    FOREIGN KEY ([idGestionnaire])
    REFERENCES [dbo].[gestionnaire]
        ([idGestionnaire])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_questions_gestionnaire_FK'
CREATE INDEX [IX_FK_questions_gestionnaire_FK]
ON [dbo].[questions]
    ([idGestionnaire]);
GO

-- Creating foreign key on [id_question] in table 'reponses'
ALTER TABLE [dbo].[reponses]
ADD CONSTRAINT [FK_reponses_question]
    FOREIGN KEY ([id_question])
    REFERENCES [dbo].[questions]
        ([id_question])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_reponses_question'
CREATE INDEX [IX_FK_reponses_question]
ON [dbo].[reponses]
    ([id_question]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------