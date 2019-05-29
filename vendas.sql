use ERP

select 'Analise dos ultimos 30 dias' as Resumo
      ,CAST(GETDATE()-30 as [date]) AS DataInicial
      ,CAST(GETDATE()as [date]) AS DataFinal
      ,CAST(SUM(Total) AS decimal(10,2)) AS total 
      ,CAST(SUM(Profit) AS decimal(10,2)) AS mc
from vendas
where D2_EMISSAO>=GETDATE()-30

SELECT top 10
        A1_NREDUZ as Cliente
       ,CAST(SUM(Total) AS decimal(10,2)) AS total 
from vendas
where D2_EMISSAO>=GETDATE()-30
GROUP BY 
    A1_NREDUZ
ORDER BY SUM(Total) DESC



select Vendedor
       ,CAST(SUM(Total) AS decimal(10,2)) AS total 
from vendas
where D2_EMISSAO>=GETDATE()-30

GROUP BY 
    Vendedor
ORDER BY SUM(Total) DESC


select 'Analise do mes atual' as Resumo
      ,CAST(GETDATE()-DAY(GETDATE())+1 as [date]) AS DataInicial
      ,CAST(GETDATE()as [date]) AS DataFinal
      ,CAST(SUM(Total) AS decimal(10,2)) AS total 
      ,CAST(SUM(Profit) AS decimal(10,2)) AS mc
from vendas
where D2_EMISSAO>=GETDATE()-DAY(GETDATE())+1

select top 10
        A1_NREDUZ as Cliente
       ,CAST(SUM(Total) AS decimal(10,2)) AS total 
from vendas
where D2_EMISSAO>=GETDATE()-DAY(GETDATE())+1

GROUP BY 
    A1_NREDUZ

ORDER BY SUM(Total) DESC



select Vendedor
       ,CAST(SUM(Total) AS decimal(10,2)) AS total 
from vendas
where D2_EMISSAO>=GETDATE()-DAY(GETDATE())+1

GROUP BY 
    Vendedor
ORDER BY SUM(Total) DESC



USE ERP
select   RTRIM(Vendedor) as vendedor 
       , CAST(SUM(Total)  as decimal(10,2)) AS total
       , CAST(SUM(Profit) as decimal(10,2)) as profit 
from vendas  
where D2_EMISSAO>=cast(GETDATE()-29 AS date) 
GROUP BY Vendedor
 ORDER BY SUM(Total) desc 

