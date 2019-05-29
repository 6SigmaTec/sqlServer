use ERP
select * from xxsaldo

exec dbo.performeproduto

SELECT * 
FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[dbo].[xxsaldo]') 
AND type in (N'U')





IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[xxsaldo]')) 
    Begin
        select 'entrei'
    End





drop TABLE xxsaldo