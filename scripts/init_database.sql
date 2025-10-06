/*
	This script drops then cretaes a database with the name `DataWareHouse`
	Then creates 3 schemas within it, `bronze`, `silver` and `gold` 
*/

/* WARNING!
	This script drops the database `DataWareHouse`, so if the database exists,
	data within it will be permanently deleted
*/

USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse;
END;
GO

CREATE DATABASE DataWareHouse;
GO

USE DataWareHouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
