CREATE DATABASE supermercado;

USE supermercado;

CREATE TABLE Cliente(
id_cli INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_cli VARCHAR(150),
endereco_cli VARCHAR(150),
cpf_cli VARCHAR(15));

CREATE TABLE Fornecedor(
id_for INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_for VARCHAR(100),
cnpj_for VARCHAR(50));

CREATE TABLE Caixa(

id_cai INTEGER PRIMARY KEY AUTO_INCREMENT,
saldo_inicial_cai FLOAT,
total_recebimentto_cai FLOAT,
total_retirada_cai FLOAT,
saldo_final_cai FLOAT);

CREATE TABLE Setor(
id_set INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_set VARCHAR(100));

CREATE TABLE Funcionario(
id_fun INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_fun VARCHAR(100),
funcao_fun VARCHAR(100),
id_set_fk INTEGER,
FOREIGN KEY(id_set_fk) REFERENCES Setor (id_set));

CREATE TABLE Produto(
id_pro INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_pro VARCHAR(150),
valor_pro FLOAT,
estoque_pro FLOAT);

CREATE TABLE Venda(
id_ven INTEGER PRIMARY KEY AUTO_INCREMENT,
valor_ven FLOAT,
data_ven DATE,
id_cli_fk INTEGER,
FOREIGN KEY (id_cli_fk) REFERENCES Cliente(id_cli),
id_fun_fk INTEGER,
FOREIGN KEY (id_fun_fk) REFERENCES Funcionario (id_fun)
);

CREATE TABLE Venda_Produto(
id_vep INTEGER PRIMARY KEY AUTO_INCREMENT,
id_pro_fk INTEGER,
FOREIGN KEY (id_pro_fk) REFERENCES Produto (id_pro),
id_ven_fk INTEGER,
FOREIGN KEY (id_ven_fk) REFERENCES Venda (id_ven),
quant_vep FLOAT
);

CREATE TABLE Entrega(
id_ent INTEGER PRIMARY KEY AUTO_INCREMENT,
data_ent DATE,
endereco_alternativo_ent VARCHAR(200),
hora TIME,
id_ven_fk INTEGER,
FOREIGN KEY (id_ven_fk) REFERENCES Venda (id_ven)
);

CREATE TABLE Recebimento (
id_rec INTEGER PRIMARY KEY AUTO_INCREMENT,
tipo_rec VARCHAR(150),
data_rec DATE,
id_cai_fk INTEGER,
id_ven_fk INTEGER,
FOREIGN KEY(id_cai_fk) REFERENCES Caixa(id_cai),
FOREIGN KEY(id_ven_fk) REFERENCES Venda(id_ven));

CREATE TABLE Compra(
id_com INTEGER PRIMARY KEY AUTO_INCREMENT,
valor_com FLOAT,
data_com DATE,
id_fun_fk INTEGER,
FOREIGN KEY (id_fun_fk) REFERENCES Funcionario (id_fun),
id_for_fk INTEGER,
FOREIGN KEY (id_for_fk) REFERENCES fornecedor (id_for));

CREATE TABLE Despesa(
id_des INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_des VARCHAR(100),
valor_des FLOAT,
id_com_fk INTEGER,
FOREIGN KEY (id_com_fk) REFERENCES Compra (id_com)
);

CREATE TABLE Compra_Produto(
id_cop INTEGER PRIMARY KEY AUTO_INCREMENT,
id_com_fk INTEGER,
FOREIGN KEY (id_com_fk) REFERENCES Compra (id_com),
id_pro_fk INTEGER,
FOREIGN KEY (id_pro_fk) REFERENCES Produto (id_pro),
quant_cop FLOAT,
preco_cop FLOAT
);

CREATE TABLE Pagamento(
id_pag INTEGER PRIMARY KEY AUTO_INCREMENT,
tipo_pag VARCHAR(100),
data_pag DATE,
id_des_fk INTEGER,
id_cai_fk INTEGER,
FOREIGN KEY (id_des_fk) REFERENCES Despesa(id_des),
FOREIGN KEY(id_cai_fk) REFERENCES Caixa(id_cai));



