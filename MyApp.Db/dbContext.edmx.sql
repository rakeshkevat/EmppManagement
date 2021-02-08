
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/08/2021 07:05:29
-- Generated from EDMX file: C:\Users\Shashikant\source\repos\Mngmnt\MyApp.Db\dbContext.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EmpManagement];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee];
GO
IF OBJECT_ID(N'[dbo].[EmpRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpRoles];
GO
IF OBJECT_ID(N'[dbo].[Page]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Page];
GO
IF OBJECT_ID(N'[dbo].[RolePermission]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RolePermission];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'EmpRoles'
CREATE TABLE [dbo].[EmpRoles] (
    [EmpRolesID] int IDENTITY(1,1) NOT NULL,
    [RoleID] int  NOT NULL,
    [EmpID] int  NOT NULL,
    [IsActive] bit  NULL,
    [CreatedDate] datetime  NULL,
    [UpdateDate] datetime  NULL,
    [CreatedOn] datetime  NULL,
    [UpdatedOn] datetime  NULL
);
GO

-- Creating table 'RolePermissions'
CREATE TABLE [dbo].[RolePermissions] (
    [RolePermissingID] int IDENTITY(1,1) NOT NULL,
    [RoleID] int  NOT NULL,
    [PageID] int  NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [RoleID] int IDENTITY(1,1) NOT NULL,
    [RoleName] nvarchar(50)  NOT NULL,
    [RoleDescruption] nvarchar(50)  NOT NULL,
    [IsActive] bit  NULL,
    [CreatedDate] datetime  NULL,
    [UpdateDate] datetime  NULL,
    [CreatedOn] datetime  NULL,
    [UpdatedOn] datetime  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Pages'
CREATE TABLE [dbo].[Pages] (
    [PageID] int IDENTITY(1,1) NOT NULL,
    [PageName] varchar(200)  NULL,
    [PageUrl] varchar(255)  NULL,
    [IsActive] bit  NULL,
    [CreateDate] datetime  NULL,
    [UpdateDate] datetime  NULL,
    [CreateOn] datetime  NULL,
    [UpdateOn] datetime  NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [EmpID] int IDENTITY(1,1) NOT NULL,
    [EmpName] varchar(200)  NULL,
    [EmpContact] varchar(200)  NULL,
    [EmpEmail] varchar(200)  NULL,
    [IsActive] bit  NULL,
    [CreatedDate] datetime  NULL,
    [UpdateDate] datetime  NULL,
    [CreatedOn] datetime  NULL,
    [UpdatedOn] datetime  NULL,
    [Password] varchar(200)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [EmpRolesID] in table 'EmpRoles'
ALTER TABLE [dbo].[EmpRoles]
ADD CONSTRAINT [PK_EmpRoles]
    PRIMARY KEY CLUSTERED ([EmpRolesID] ASC);
GO

-- Creating primary key on [RolePermissingID] in table 'RolePermissions'
ALTER TABLE [dbo].[RolePermissions]
ADD CONSTRAINT [PK_RolePermissions]
    PRIMARY KEY CLUSTERED ([RolePermissingID] ASC);
GO

-- Creating primary key on [RoleID] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([RoleID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [PageID] in table 'Pages'
ALTER TABLE [dbo].[Pages]
ADD CONSTRAINT [PK_Pages]
    PRIMARY KEY CLUSTERED ([PageID] ASC);
GO

-- Creating primary key on [EmpID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([EmpID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------