﻿CREATE PROCEDURE [dbo].[InsertMarketHelper](@Id INT, @Name NVARCHAR(50), @Timestamp DATETIME)
WITH NATIVE_COMPILATION, SCHEMABINDING, EXECUTE AS OWNER 
AS BEGIN ATOMIC WITH (TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'English')
	INSERT INTO dbo.Market(Id, Name, Timestamp) VALUES (@Id, @Name, @Timestamp)
	RETURN 0
END