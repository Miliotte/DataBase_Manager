

INSERT INTO banco (cod_ban, nome_ban)
VALUES 
(1,'Banco Santader'),
(2,'Banco Nubank'),
(3,'Banco Next');

INSERT INTO agência ( cod_ag , número_ag , nome_ag , cod_ban_fk)
VALUES
(1,1019,'São Paulo',1),
(2,1225,'Rio Janeiro',2),
(3,9912,'Vitoria',3);

INSERT INTO cliente (cod_cli ,nome_cli ,cpf_cli,rg_cli ,sexo_cli ,datanasc_cli ,renda_cli,endereço_cli ,email_cli,telefone_cli)
VALUES
(1,'Ricardo','15456465','45454664', 'M','2000-05-27',50100,'Furquia','ricardo@gmail.com','9954545787'),
(2,'Miliotte','15456465','45454664', 'M','2000-05-27',50300,'Furquia','ricardo@gmail.com','9954545787'),
(3,'Maycon','15456465','45454664', 'M','2000-06-27',50100,'Furquia','ricardo@gmail.com','9954545787'),
(4,'Avatar','15456465','45454664', 'M','2000-05-27',50100,'Furquia','ricardo@gmail.com','9954545787'),
(5,'Tilia','15456465','45454664', 'f','2000-05-27',502100,'Furquia','tilia@gmail.com','9954545787');

INSERT INTO conta_corrente (cod_cc, número_cc, dataabertura_cc , saldo_cc , valorlimite_cc,taxamensal_cc,cod_ag_fk,cod_cli_fk)
VALUES
(1,'123123','2000-12-12', 20050, 6000, 10, 1 , 1),
(2,'123123','2000-12-12', 20050, 6000, 10, 2 , 3),
(3,'123123','2000-12-12', 20050, 6000, 10, 3 , 4),
(4,'123121','2000-12-12', 20050, 6000, 10, 1 , 2),
(5,'123121','2000-12-12', 20050, 6000, 10, 3 , 5);

INSERT INTO saque (cod_saq , valor_saq , data_saq , local_saq , hora_saq , cod_cc_fk)
VALUES
(1,120,'2020-03-20','São Paulo','08:00:00', 2),
(2,120,'2020-03-20','São Paulo','08:00:00', 3),
(3,120,'2020-03-20','São Paulo','08:00:00', 5);

INSERT INTO depósito (cod_dep, valor_dep,data_dep,tipo_dep,cod_cc_fk)
VALUES
(1,1500,'2020-09-10','salario',2),
(2,1500,'2020-09-11','salario',3),
(3,1500,'2020-08-10','salario',1);

INSERT INTO pagamento (cod_pag, valor_pag,data_pag,tipo_pag,datavencimento_pag,codigobarras_pag,cod_cc_fk)
VALUES
(1,1200,'2000-09-11','Internet','2000-09-11','4541541546464141',1),
(2,1200,'2000-09-11','Internet','2000-09-11','4541541546464141',2),
(3,1200,'2000-09-11','Internet','2000-09-11','4541541546464141',3);

INSERT INTO transferência (cod_trans, valor_trans, data_trans, descrição_trans,cod_cc_origem_fk,cod_cc_destino_fk)
VALUES
(1,1000,'2012-12-12','Pagamento Mensal',1,2),
(2,1000,'2012-12-12','Pagamento Mensal',1,3),
(3,1000,'2012-12-12','Pagamento Mensal',1,4);


