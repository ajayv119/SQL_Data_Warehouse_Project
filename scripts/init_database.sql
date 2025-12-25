/*

=================================================================
Create Database and Schemas
=================================================================
Script Purpose:
  This Script creates a new Database named 'DataWarehouse' after checking if it already exists.
  If the database exists,it is dropped and recreated.Additionally,the script sets up three schemas 
  within the database:'bronze','silver' and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All Data in the database will be permanently deleted.Proceed with caution and 
  ensure you have proper backups before running this script.

*/

USE Master;
GO

--Drop snd recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create Database 'DataWarehouse'

CREATE DATABASE DataWarehouse;

use DataWarehouse;

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
