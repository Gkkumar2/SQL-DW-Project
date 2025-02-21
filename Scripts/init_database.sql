/*
============================================================================
Create Database and Schema
============================================================================
Script Purpose:
This script will create a database named 'DataWarehouse'. If the database already exists,
the code will drop and recreate the database. Additionally, the script will create three 
schemas: bronze, silver, and gold.

Warning:
This script will drop the 'DataWarehouse' database if it already exists, resulting in 
the deletion of all data and information contained within.
============================================================================
*/


USE master;
GO 

-- Drop and recreate the "DataWearhouse" Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWearhouse')
BEGIN 
	ALTER DATABASE DataWearhouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWearhouse;
END;
GO

-- Create Database
CREATE DATABASE DataWearhouse;
GO

USE DataWearhouse;
GO
-- create schema
CREATE SCHEMA bronze;
GO 
CREATE SCHEMA silver;
GO 
CREATE SCHEMA gold;
GO 
