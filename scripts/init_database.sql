/*
===================================================================================
Create Database and Schemas
===================================================================================
Script Purpose:
	This script drops then creates a database with the name `DataWareHouse`. Additionally, the script
	creates 3 schemas within the database, `bronze`, `silver` and `gold`.

WARNING!
	Running this script drops the database `DataWareHouse` if the database exists.
	All data within the data warehouse will be permanently deleted. Proceed with
	caution, make sure you have a solid backup before running this script.
*/

USE master;
GO

-- Drop then create database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse;
END;
GO

-- Create DataWareHouse database
CREATE DATABASE DataWareHouse;
GO

USE DataWareHouse;
GO

-- Create bronze schema
CREATE SCHEMA bronze;
GO

-- Create silver schema	
CREATE SCHEMA silver;
GO

-- Create gold schema
CREATE SCHEMA gold;
GO
