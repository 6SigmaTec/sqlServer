
USE ERP;
GO

ALTER DATABASE ERP
SET RECOVERY SIMPLE;
GO

DBCC SHRINKFILE(ERPPRODUCAO_log, 100, TRUNCATEONLY);
GO               

ALTER DATABASE ERP
SET RECOVERY FULL;
GO