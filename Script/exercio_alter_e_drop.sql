#EXERCÍCIOS
#1. Adicione o atributo local_sede_ban na tabela Banco.
ALTER TABLE Banco ADD local_sede_ban VARCHAR(150);

#2. Adicione o atributo cnpj_ban na tabela Banco, antes do atributo local_sede_ban.
ALTER TABLE Banco ADD cnpj_ban VARCHAR(150) AFTER nome_ban;

#3. Adicione o atributo endereco_ag na tabela Agencia, depois do atributo telefone_ag.
ALTER TABLE Agência ADD endereco_ag VARCHAR(150) AFTER telefone_ag;

#4. Adicione o atributo numero_cartao_cc na tabela Conta_Corrente antes do atributo dataabertura_cc.
ALTER TABLE Conta_corrente ADD numero_cartao_cc INTEGER AFTER número_cc;

#5. Adicione o atributo hora_dep na tabela Depósito, após o atributo data_dep.
ALTER TABLE Depósito ADD hora_dep TIME AFTER data_dep;

#6. Altero o nome do atributo número_ag para número_ag, na tabela Agência.
ALTER TABLE Agência CHANGE número_ag número_ag INTEGER;

#7. Altere o nome do telefone_ag para contato_ag, na tabela Agencia.
ALTER TABLE Agência CHANGE telefone_ag contato_ag VARCHAR(15);

#8. Altere o nome do atributo endereço_cli para endereco_cli na tabela Cliente.
ALTER TABLE Cliente CHANGE endereço_cli endereco_cli VARCHAR(150);

#9. Altere o tipo de dado do atributo renda_cli para double.
ALTER TABLE Cliente CHANGE renda_cli renda_cli DOUBLE;

#10. Altere o tipo do dado do atributo data_saq para varchar na tabela Saque.
ALTER TABLE Saque CHANGE data_saq data_saq VARCHAR(10);

#11. Altere o tipo de dado do atributo saldo_cc para double na tabela Conta_Corrente.
ALTER TABLE Conta_Corrente CHANGE saldo_cc saldo_cc DOUBLE;

#12. Apague o atributo local_sede_ban na tabela Banco.
ALTER TABLE Banco DROP local_sede_ban;

#13. Apague o atributo cnpj_ban na tabela Banco.
ALTER TABLE Banco DROP cnpj_ban;

#14. Apague o atributo endereco_ag na tabela Agencia.
ALTER TABLE Agência DROP endereco_ag;

#15. Apague o atributo numero_cartao_cc na tabela Conta_Corrente.
ALTER TABLE Conta_Corrente DROP numero_cartao_cc;

#16. Apague o atributo hora_dep na tabela Depósito.
ALTER TABLE Depósito DROP hora_dep;

#17. Apague a tabela Depósito.
DROP TABLE Depósito;

#18. Apague a tabela Saque.
DROP TABLE Saque;

#19. Apague a tabela Pagamento.
DROP TABLE Pagamento;

#20. Apague a tabela Transferência.
DROP TABLE Transferência;
