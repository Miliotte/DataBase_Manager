CREATE DATABASE bd_restaurante;

USE bd_restaurante;

CREATE TABLE Funcionario(
id_fun INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_fun VARCHAR(150),
funcao_fun VARCHAR(150));

CREATE TABLE Fornecedor( 
id_for INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_for VARCHAR(100),
cnpj_for VARCHAR(22));

CREATE TABLE Mesa(
id_mes INTEGER PRIMARY KEY AUTO_INCREMENT,
numero_mes INTEGER,
status_mes VARCHAR(100));

CREATE TABLE Caixa (
id_cai INTEGER PRIMARY KEY AUTO_INCREMENT,
data_cai DATE,
saldo_inicial_cai FLOAT,
total_recebimento_cai FLOAT,
saldo_final_cai FLOAT);

CREATE TABLE Cliente (
id_cli INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_cli VARCHAR(100),
cpf_cli VARCHAR(15));

CREATE TABLE Produto (
id_pro INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_pro VARCHAR (100),
estoque_pro FLOAT,
valor_pro FLOAT);

CREATE TABLE Pedido(
id_ped INTEGER PRIMARY kEY AUTO_INCREMENT,
hora_ped TIME,
valor_ped FLOAT,
id_mes_fk INTEGER NOT NULL,
id_fun_fk INTEGER NOT NULL,
FOREIGN KEY(id_mes_fk) REFERENCES Mesa (id_mes),
FOREIGN KEY(id_fun_fk) REFERENCES Funcionario(id_fun));

CREATE TABLE Pedido_Produto (
id_pep INT PRIMARY KEY AUTO_INCREMENT,
quant_pep FLOAT,
id_ped_fk INTEGER NOT NULL,
id_pro_fk INTEGER NOT NULL,
FOREIGN KEY (id_ped_fK) REFERENCES Pedido (id_ped),
FOREIGN KEY (id_pro_fk) REFERENCES Produto (id_pro));

CREATE TABLE Venda(
id_ven INTEGER PRIMARY KEY AUTO_INCREMENT,
valor_ven FLOAT,
id_fun_fk INTEGER NOT NULL,
id_cli_fk INTEGER,
id_ped_fk INTEGER,
FOREIGN KEY(id_fun_fk) REFERENCES Funcionario (id_fun),
FOREIGN KEY(id_cli_fk) REFERENCES Cliente (id_cli),
FOREIGN KEY (id_ped_fK) REFERENCES Pedido (id_ped));

CREATE TABLE Refeicao(
id_ref INTEGER PRIMARY KEY AUTO_INCREMENT,
quilo_ref FLOAT,
id_ven_fk INTEGER,
FOREIGN KEY(id_ven_fk) REFERENCES Venda(id_ven));

CREATE TABLE Pedido_Refeicao (
id_per INTEGER PRIMARY KEY AUTO_INCREMENT,
id_ped_fk INTEGER NOT NULL,
id_ref_fk INTEGER NOT NULL,
FOREIGN KEY (id_ped_fK) REFERENCES Pedido (id_ped),
FOREIGN KEY (id_ref_fK) REFERENCES Refeicao (id_ref));

CREATE TABLE Venda_Produto(
id_vep INTEGER PRIMARY KEY AUTO_INCREMENT,
quant_vep FLOAT,
id_ven_fk INTEGER NOT NULL,
id_pro_fk INTEGER NOT NULL,
FOREIGN KEY (id_pro_fk) REFERENCES Produto (id_pro),
FOREIGN KEY(id_ven_fk) REFERENCES Venda(id_ven));

CREATE TABLE Recebimento(
id_rec INTEGER PRIMARY KEY AUTO_INCREMENT,
valor_rec FLOAT,
id_ven_fk INTEGER NOT NULL,
id_cai_fk INTEGER NOT NULL,
FOREIGN KEY(id_ven_fk) REFERENCES Venda (id_ven),
FOREIGN KEY(id_cai_fk) REFERENCES Caixa (id_cai));

CREATE TABLE Compra (
id_com INTEGER PRIMARY KEY AUTO_INCREMENT,
valor_com FLOAT,
id_fun_fk INTEGER NOT NULL,
id_for_fk INTEGER NOT NULL,
FOREIGN KEY(id_fun_fk) REFERENCES Funcionario (id_fun),
FOREIGN KEY(id_for_fk) REFERENCES Fornecedor (id_for));

CREATE TABLE Compra_Produto (
id_cop INTEGER PRIMARY KEY AUTO_INCREMENT,
quant_cop FLOAT,
id_com_fk INTEGER NOT NULL,
id_pro_fk INTEGER NOT NULL,
FOREIGN KEY(id_com_fk) REFERENCES Compra (id_com),
FOREIGN KEY (id_pro_fk) REFERENCES Produto (id_pro));


