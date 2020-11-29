create database pratica2;

use pratica2;

CREATE TABLE Pais(
id_pais INTEGER PRIMARY KEY,
nome_pais VARCHAR(150),
continente_pais VARCHAR(150));

CREATE TABLE Estado(
id_est INTEGER PRIMARY KEY,
nome_est VARCHAR(150),
sigla_est VARCHAR(2),
regiao_est VARCHAR(100),
id_pais_fk INTEGER,
FOREIGN KEY (id_pais_fk) REFERENCES Pais(id_pais)
);

CREATE TABLE Cidade(
id_cid INTEGER PRIMARY KEY,
nome_cid VARCHAR(150),
data_criacao_cid DATE,
id_est_fk INTEGER,
FOREIGN KEY (id_est_fk) REFERENCES Estado(id_est)
);

CREATE TABLE Endereco(
id_end INTEGER PRIMARY KEY,
rua_end VARCHAR(100),
numero_end INTEGER,
bairro_end VARCHAR(150),
id_cid_fk INTEGER,
FOREIGN KEY(id_cid_fk) REFERENCES Cidade(id_cid)
);

CREATE TABLE Cliente(
id_cli INTEGER PRIMARY KEY,
nome_cli VARCHAR(150),
cpf_cli VARCHAR(15),
data_nasc_cli DATE,
sexo_cli VARCHAR(20),
email_cli VARCHAR(150),
id_end_fk INTEGER,
FOREIGN KEY (id_end_fk)REFERENCES Endereco(id_end)
);




