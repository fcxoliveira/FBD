-- Script para criação do BD do Esquema Relacional 5
-- Grupo: Filipe Carlos e Matheus Campos

-- criando esquema
CREATE SCHEMA EMPRESA;
USE EMPRESA;

-- criando tabelas
CREATE TABLE VEICULO (
	CHASSI VARCHAR(17) NOT NULL,
	MARCA VARCHAR(20) NOT NULL,
	COD_PESSOA INTEGER NOT NULL
);

CREATE TABLE ORDEM_SERVICO (
	NUMERO_OS INTEGER NOT NULL AUTO_INCREMENT,
	DATA_EMISSAO DATE NOT NULL,
	DATA_CONCLUSAO DATE,
	CHASSI VARCHAR(20) NOT NULL,
	ID_EQUIPE INTEGER NOT NULL
);

CREATE TABLE ITEM (
	COD_ITEM INTEGER NOT NULL AUTO_INCREMENT,
	DESCRICAO VARCHAR(100),
	NUM_OS INTEGER NOT NULL,
	CHASSI VARCHAR(20) NOT NULL
);

CREATE TABLE PECA (
	COD_PECA INTEGER NOT NULL AUTO_INCREMENT,
	FORNECEDOR VARCHAR(20) NOT NULL
);

CREATE TABLE SERVICO(
	COD_SERVICO INTEGER NOT NULL,
	GARANTIA VARCHAR(20) NOT NULL
);

CREATE TABLE EQUIPE(
	ID_EQUIPE INTEGER NOT NULL AUTO_INCREMENT,
	NOME VARCHAR(20) NOT NULL,

	UNIQUE(NOME)
);

CREATE TABLE PERTENCE (
	ID_EQUIPE INTEGER NOT NULL,
	COD_PESSOA INTEGER NOT NULL
);

-- povoando banco de dados
INSERT INTO VEICULO (CHASSI, MARCA, COD_PESSOA) VALUES 
('9BWHE21JX24060960', 'VOLKSWAGEN', 123456),
('9BKHE220X24060961', 'FIAT', 123456),
('9BCHE23LX24060962', 'NISSAN', 123456),
('9BAHE24MX24060963', 'AUDI', 123456),
('9BDHE25BX24060964', 'BMW', 123456),
('9BFHE26GX24060965', 'CITROEN', 123456);

INSERT INTO ORDEM_SERVICO (NUMERO_OS, DATA_EMISSAO, DATA_CONCLUSAO, CHASSI, ID_EQUIPE) VALUES
(NULL, TO_DATE('16/08/2017', 'DD/MM/AAAA'), TO_DATE('17/08/2017', 'DD/MM/AAAA'), '9BWHE21JX24060960', 000001),
);