/*
======================================================
Création de la base de données et des schèmas
======================================================

*/
USE master;
GO
-- Supprimer et Recréer la base de données 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
	ALTER DATABASE Dataarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO
-- création de la base de données 'DataWarehouse'
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO
--création des schémas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

