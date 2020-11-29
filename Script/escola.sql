CREATE DATABASE escola;

use escola;


CREATE TABLE Escola(
id_esc INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_esc VARCHAR(150),
endereco_esc VARCHAR(150));

CREATE TABLE Funcionario(
id_fun INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_fun  VARCHAR(150),
cpf_fun VARCHAR(15),
funcao_fun VARCHAR(100),
id_esc_fk INTEGER,
FOREIGN KEY(id_esc_fk) REFERENCES Escola(id_esc));

CREATE TABLE Curso(
id_cur INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_cur VARCHAR(150),
objetivo_cur VARCHAR(150),
perfil_egresso_cur VARCHAR(100));

CREATE TABLE Disciplina(
id_dis INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_dis VARCHAR(150),
objetivo_dis VARCHAR(150),
conteudo_dis VARCHAR(150),
bibliografia_dis VARCHAR(100),
id_cur_fk INTEGER,
FOREIGN KEY(id_cur_fk)REFERENCES Curso(id_cur));

CREATE TABLE Aluno(
id_alu INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_alu VARCHAR(150),
cpf_alu VARCHAR(15),
endereco_alu VARCHAR(200));

CREATE TABLE Matricula(
id_mat INTEGER PRIMARY KEY AUTO_INCREMENT,
data_mat DATE,
id_fun_fk INTEGER,
id_dis_fk INTEGER,
id_alu_fk INTEGER,
FOREIGN KEY(id_fun_fk) REFERENCES Funcionario (id_fun),
FOREIGN KEY(id_dis_fk) REFERENCES Disciplina (id_dis),
FOREIGN KEY(id_alu_fk) REFERENCES Aluno (id_alu));

CREATE TABLE Turma(
id_tur INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_tur VARCHAR(150));

CREATE TABLE Turma_Matricula(
id_tum 	INTEGER PRIMARY KEY AUTO_INCREMENT,
semestre_tum VARCHAR (100),
id_tur_fk INTEGER,
id_mat_fk INTEGER,
FOREIGN KEY (id_tur_fk) REFERENCES Turma (id_tur),
FOREIGN KEY (id_mat_fk) REFERENCES Matricula (id_mat));

CREATE TABLE Diario (
id_dia INTEGER PRIMARY KEY AUTO_INCREMENT,
id_tur_fk INTEGER,
FOREIGN KEY (id_tur_fk) REFERENCES Turma (id_tur));

CREATE TABLE Aula(
id_aul INTEGER PRIMARY KEY AUTO_INCREMENT,
conteudo_aul VARCHAR (150),
data_aul DATE,
id_dia_fk INTEGER,
FOREIGN KEY(id_dia_fk) REFERENCES Diario (id_dia));

CREATE TABLE Presenca(
id_pre INTEGER PRIMARY KEY AUTO_INCREMENT,
presente_pre VARCHAR(100),
ausente_pre VARCHAR(100),
id_aul_fk INTEGER,
id_alu_fk INTEGER,
FOREIGN KEY(id_aul_fk) REFERENCES Aula (id_aul),
FOREIGN KEY(id_alu_fk) REFERENCES Aluno(id_alu));


CREATE TABLE Nota(
id_not INTEGER PRIMARY KEY AUTO_INCREMENT,
etapa1_not FLOAT,
etapa2_not FLOAT,
id_alu_fk INTEGER,
id_dia_fk INTEGER,
FOREIGN KEY(id_dia_fk) REFERENCES Diario (id_dia),
FOREIGN KEY(id_alu_fk) REFERENCES Aluno(id_alu));