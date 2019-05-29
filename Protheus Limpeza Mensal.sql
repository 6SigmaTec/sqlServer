use ERP

select D_E_L_E_T_ as SB7010 ,count(*) as qtd from SB7010 GROUP BY D_E_L_E_T_  -- Lançamentos do inventário
select D_E_L_E_T_ as SB9010 ,count(*) as qtd from SB9010 GROUP BY D_E_L_E_T_   -- Saldos iniciais
select D_E_L_E_T_ as SBC010 ,count(*) as qtd from SBC010 GROUP BY D_E_L_E_T_  -- Perda por ordem de produção
select D_E_L_E_T_ as SBK010 ,count(*) as qtd from SBK010 GROUP BY D_E_L_E_T_  -- Saldos iniciais por lote
select D_E_L_E_T_ as SC2010 ,count(*) as qtd from SC2010 GROUP BY D_E_L_E_T_  -- Ordem de produção
select D_E_L_E_T_ as SD3010 ,count(*) as qtd from SD3010 GROUP BY D_E_L_E_T_  -- Movimentação interna
select D_E_L_E_T_ as SD4010 ,count(*) as qtd from SD4010 GROUP BY D_E_L_E_T_  -- Requisições Empenhadas
select D_E_L_E_T_ as SD5010 ,count(*) as qtd from SD5010 GROUP BY D_E_L_E_T_  -- Requisições por Lote
select D_E_L_E_T_ as SD7010 ,count(*) as qtd from SD7010 GROUP BY D_E_L_E_T_  -- Movimentações do CQ (Controle de Qualidade)
select D_E_L_E_T_ as SDC010 ,count(*) as qtd from SDC010 GROUP BY D_E_L_E_T_  -- Composição do Empenho

/*
3 288 752  -  1 430 494
3 190 072  -  1 529 174
3 139 972  -  1 579 274
3 105 345  -  1 613 901
3 051 078  -  1 668 168
2 870 870  -  1 848 376
2 769 181  -  1 950 065
2 733 812  -  1 985 434
2 705 051  -  2 014 195
2 664 980  -  2 054 266
2 071 084  -  2 194 623
2 071 084
1 706 982
1 579 497  -  3 139 749
1 567 298  -  3 151 948
1 549 156  -  3 170 090
1 442 332
1 355 452
1 273 003 

*/