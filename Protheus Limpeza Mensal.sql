use ERP

select D_E_L_E_T_ as SD3010 ,count(*) as qtd from SD3010 GROUP BY D_E_L_E_T_  -- Movimentação interna




select D_E_L_E_T_ as SB7010 ,count(*) as qtd from SB7010 GROUP BY D_E_L_E_T_  -- Lançamentos do inventário
select D_E_L_E_T_ as SB9010 ,count(*) as qtd from SB9010 GROUP BY D_E_L_E_T_   -- Saldos iniciais
select D_E_L_E_T_ as SBC010 ,count(*) as qtd from SBC010 GROUP BY D_E_L_E_T_  -- Perda por ordem de produção
select D_E_L_E_T_ as SBK010 ,count(*) as qtd from SBK010 GROUP BY D_E_L_E_T_  -- Saldos iniciais por lote
select D_E_L_E_T_ as SC2010 ,count(*) as qtd from SC2010 GROUP BY D_E_L_E_T_  -- Ordem de produção
select D_E_L_E_T_ as SD4010 ,count(*) as qtd from SD4010 GROUP BY D_E_L_E_T_  -- Requisições Empenhadas
select D_E_L_E_T_ as SD5010 ,count(*) as qtd from SD5010 GROUP BY D_E_L_E_T_  -- Requisições por Lote
select D_E_L_E_T_ as SD7010 ,count(*) as qtd from SD7010 GROUP BY D_E_L_E_T_  -- Movimentações do CQ (Controle de Qualidade)
select D_E_L_E_T_ as SDC010 ,count(*) as qtd from SDC010 GROUP BY D_E_L_E_T_  -- Composição do Empenho


select D_E_L_E_T_ as SA1010 ,count(*) as qtd from SA1010 GROUP BY D_E_L_E_T_  -- Tabela de Clientes
select D_E_L_E_T_ as SB1010 ,count(*) as qtd from SB1010 GROUP BY D_E_L_E_T_  -- Tabela de Clientes

/*
SB7010
index 651,125 MB
rows   1 271 450
data  524,328 MB

SD3
2 261 248=  /  21:19
  120 074-
2 381 322=  /  20:51
   99 478-
2 480 800=  /  20:27
  177 669-
2 658 469=  /  19:43
  142 566-
2 801 035=  /  19:08
  198 297-
2 999 332   /  18:19

51 281 / 18:13 
45 473 / 18:12
37 407

*/