INSERT INTO funcionario(cod_func, nome_func, funcao_func,cpf_func, rg_func , telefone_func, endereco_func, email_func, sexo_func, salario_func)
VALUES
(1,'Ricardo','Analista de Sistemas','154542415','4064250','279844004','Tesla','ricardo@gmail.com','m',1200),
(2,'Ricardo','Analista de Sistemas','154542415','4064250','279844004','Tesla','ricardo@gmail.com','m',1200),
(3,'Ricardo','Analista de Sistemas','154542415','4064250','279844004','Tesla','ricardo@gmail.com','m',1200),
(4,'Ricardo','Analista de Sistemas','154542415','4064250','279844004','Tesla','ricardo@gmail.com','m',1200),
(5,'Ricardo','Analista de Sistemas','154542415','4064250','279844004','Tesla','ricardo@gmail.com','m',1200);

INSERT INTO caixa(cod_cai, data_cai, saldo_inicial_cai,total_recebimento_cai,total_pagamento_cai,saldo_final_cai,cod_func_fk)
VALUES
(1,'2020-10-11',1600,200,200,1800,1),
(2,'2020-10-11',1600,200,200,1800,1),
(3,'2020-10-11',1600,200,200,1800,1),
(4,'2020-10-11',1600,200,200,1800,1),
(5,'2020-10-11',1600,200,200,1800,1);

INSERT INTO cliente (cod_cli,nome_cli,cpf_cli,rg_cli,telefone_cli,endereco_cli,email_cli,sexo_cli,renda_cli,data_Nasc_cli,status_cli)
VALUES
(1,'Big Zeca','14564645','55447','27984564','Fixo','bigzeca@gmail.com','m',1600,'2000-05-27','virgente'),
(2,'Big Zeca','14564645','55447','27984564','Fixo','bigzeca@gmail.com','m',1600,'2000-05-27','virgente'),
(3,'Big Zeca','14564645','55447','27984564','Fixo','bigzeca@gmail.com','m',1600,'2000-05-27','virgente'),
(4,'Big Zeca','14564645','55447','27984564','Fixo','bigzeca@gmail.com','m',1600,'2000-05-27','virgente'),
(5,'Big Zeca','14564645','55447','27984564','Fixo','bigzeca@gmail.com','m',1600,'2000-05-27','virgente');

INSERT INTO despesa(cod_desp,descricao_desp,valor_desp,data_desp,forma_pag_desp)
VALUES
(1,'Compras Mensal',12000,'2020-10-11','Debito'),
(2,'Compras Mensal',12000,'2020-10-11','Debito'),
(3,'Compras Mensal',12000,'2020-10-11','Debito'),
(4,'Compras Mensal',12000,'2020-10-11','Debito'),
(5,'Compras Mensal',12000,'2020-10-11','Debito');

INSERT INTO fornecedor(cod_forn,razao_forn,nome_forn,cnpj_forn, endereco_forn , telefone_forn)
VALUES
(1,'Miliotte System ME','Miliotte System', '5646546','California','81551347564'),
(2,'Miliotte System ME','Miliotte System', '5646546','California','81551347564'),
(3,'Miliotte System ME','Miliotte System', '5646546','California','81551347564'),
(4,'Miliotte System ME','Miliotte System', '5646546','California','81551347564'),
(5,'Miliotte System ME','Miliotte System', '5646546','California','81551347564');

INSERT INTO compra(cod_comp,data_comp,valor_comp,quant_itens_comp,forma_Pag_comp,cod_forn_fk)
VALUES
(1,'2020-11-10',1200,12,1500,1),
(2,'2020-11-10',1200,12,1500,1),
(3,'2020-11-10',1200,12,1500,1),
(4,'2020-11-10',1200,12,1500,1),
(5,'2020-11-10',1200,12,1500,1);

INSERT INTO pagamento(cod_pag,valor_pag,parcela_pag,data_pag,forma_pag,cod_comp_fk,cod_cai_fk,cod_desp_fk)
VALUES
(1,1200,2,'2020-10-11','Debito Automatico',1,1,2),
(2,1200,2,'2020-10-11','Debito Automatico',1,1,2),
(3,1200,2,'2020-10-11','Debito Automatico',1,1,2),
(4,1200,2,'2020-10-11','Debito Automatico',1,1,2),
(5,1200,2,'2020-10-11','Debito Automatico',1,1,2);

INSERT INTO produto(cod_prod,nome_prod,marca_prod,estoque_prod,valor_prod,tamanho_prod,tipo_prod)
VALUES
(1,'Sistema','Miliotte System',12,151100,120,'Sistema'),
(2,'Sistema','Miliotte System',12,151100,120,'Sistema'),
(3,'Sistema','Miliotte System',12,151100,120,'Sistema'),
(4,'Sistema','Miliotte System',12,151100,120,'Sistema'),
(5,'Sistema','Miliotte System',12,151100,120,'Sistema');

INSERT INTO compra_prod(cod_cprod,cod_comp_fk,cod_prod_fk,quant_cprod,valor_cprod)
VALUES
(1,1,1,123,1500),
(2,1,1,123,1500),
(3,1,1,123,1500),
(4,1,1,123,1500),
(5,1,1,123,1500);

INSERT INTO servico(cod_serv,descricao_serv,valor_serv,tempo_serv)
VALUES
(1,'Teste',1200,'00:08:00'),
(2,'Teste',1200,'00:08:00'),
(3,'Teste',1200,'00:08:00'),
(4,'Teste',1200,'00:08:00'),
(5,'Teste',1200,'00:08:00');

INSERT INTO funcionario_servico(cod_fserv,cod_func_fk,cod_serv_fk)
VALUES
(1,2,1),
(2,2,1),
(3,2,1),
(4,2,1),
(5,2,1);

INSERT INTO venda(cod_vend, valor_vend,data_vend,hora_vend,forma_pag_vend,cod_cli_fk,cod_func_fk)
VALUES
(1,1200,'2020-05-20','12:00:00','Credito',1,2),
(2,1200,'2020-05-20','12:00:00','Credito',1,2),
(3,1200,'2020-05-20','12:00:00','Credito',1,2),
(4,1200,'2020-05-20','12:00:00','Credito',1,2),
(5,1200,'2020-05-20','12:00:00','Credito',1,2);

INSERT INTO recebimento(cod_rec, valor_rec,parcela_rec,forma_rec,data_vencimento_rec,cod_cai_fk,cod_vend_fk)
VALUES
(1,8000,1,'Dinheiro','2020-08-15',1,2),
(2,8000,1,'Dinheiro','2020-08-15',1,2),
(3,8000,1,'Dinheiro','2020-08-15',1,2),
(4,8000,1,'Dinheiro','2020-08-15',1,2),
(5,8000,1,'Dinheiro','2020-08-15',1,2);

INSERT INTO venda_prod (cod_vpro, cod_vend_fk, cod_prod_fk , quant_vpro)
VALUES
(1,1,1,120),
(2,1,1,120),
(3,1,1,120),
(4,1,1,120),
(5,1,1,120);

INSERT INTO venda_serv(cod_vend_fk,cod_serv_fk,quant_vser)
VALUES
(2,3,15),
(1,4,15),
(3,1,15),
(4,2,15),
(5,5,15);






