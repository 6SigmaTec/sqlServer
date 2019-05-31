use ERP
DECLARE @table varchar(20), @iName varchar(20)
SET @table = 'SZB010'
SET @iName = 'SC60102'

execute('select count(*) as '+ @table +'_Deletados from ' + @table + ' where D_E_L_E_T_=''*''')

--delete from SD2010 where D_E_L_E_T_='*'

SELECT top 100 
	 i.[name] AS IndexName
    ,SUM(s.[used_page_count]) * 8 AS IndexSizeKB

FROM sys.dm_db_partition_stats AS s
INNER JOIN sys.indexes AS i ON s.[object_id] = i.[object_id]
    AND s.[index_id] = i.[index_id]

where i.name like @table+'%'
GROUP BY i.[name]
ORDER BY i.[name]


select top 100  
     TableName = t.name,
     IndexName = ind.name,
	 Obj = ind.object_id,
     IndexId = ind.index_id,
     ColumnId = ic.index_column_id,
     ColumnName = col.name,
	 size = (SELECT (SUM(s.[used_page_count]) * 8) from sys.dm_db_partition_stats s where s.[object_id] = ind.object_id AND s.[index_id] = ind.[index_id])
FROM 
     sys.indexes ind 
INNER JOIN 
     sys.index_columns ic ON  ind.object_id = ic.object_id and ind.index_id = ic.index_id 
INNER JOIN 
     sys.columns col ON ic.object_id = col.object_id and ic.column_id = col.column_id 
INNER JOIN 
     sys.tables t ON ind.object_id = t.object_id 
WHERE 
	 t.name = @table
	 --and ind.name=@iName
     and ind.is_primary_key = 0 
     AND ind.is_unique = 0 
     AND ind.is_unique_constraint = 0 
     AND t.is_ms_shipped = 0 
ORDER BY 
     t.name, ind.name, ind.index_id, ic.index_column_id
