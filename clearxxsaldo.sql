SELECT 'Conectando no Banco de Dados ERP...'
go
use ERP
go
SELECT 'Apagando a tabela xxsaldo....'
go
drop table xxsaldo
go
SELECT 'Recalculando a performance dos produtos...'
go
exec dbo.performeproduto
go
SELECT 'Processo finalizado!'
go
