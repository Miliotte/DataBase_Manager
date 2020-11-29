CREATE DATABASE Dentista;

USE Dentista;

CREATE TABLE Procedimento(
id_pro INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_pro VARCHAR(150),
materias_pro VARCHAR(150),
valor_pro FLOAT);

CREATE TABLE Paciente(
id_pac INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_pac VARCHAR(150),
cpf_pac VARCHAR(15),
telefone_pac VARCHAR(20),
email_pac VARCHAR(150));

CREATE TABLE Dentista(
id_den INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_den VARCHAR(150),
cpf_den VARCHAR(15),
especialidade_den VARCHAR(150));

CREATE TABLE Agenda(
id_age INTEGER PRIMARY KEY AUTO_INCREMENT,
data_age DATE,
hora_age TIME,
tipo_age VARCHAR(150),
id_den_fk INTEGER,
id_pac_fk INTEGER,
FOREIGN KEY(id_den_fk) REFERENCES Dentista(id_den),
FOREIGN KEY(id_pac_fk) REFERENCES Paciente(id_pac));

CREATE TABLE Consulta(
id_con INTEGER PRIMARY KEY AUTO_INCREMENT,
data_con DATE,
valor_con FLOAT,
id_den_fk INTEGER,
id_pac_fk INTEGER,
FOREIGN KEY(id_den_fk) REFERENCES Dentista(id_den),
FOREIGN KEY(id_pac_fk) REFERENCES Paciente(id_pac));

CREATE TABLE Consulta_Procedimento(
id_cop INTEGER PRIMARY KEY AUTO_INCREMENT,
quant_cop INTEGER,
id_con_fk INTEGER NOT NULL,
id_pro_fk INTEGER NOT NULL,
FOREIGN KEY (id_con_fk) REFERENCES Consulta (id_con),
FOREIGN KEY (id_pro_fk) REFERENCES procedimento(id_pro));


CREATE TABLE Recebimento(
id_reb INTEGER PRIMARY KEY AUTO_INCREMENT,
data_reb DATE,
tipo_reb VARCHAR(150),
valor_reb FLOAT,
id_con_fk INTEGER,
FOREIGN KEY(id_con_fk) REFERENCES Consulta( id_con)); 