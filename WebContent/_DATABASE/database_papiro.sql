SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE DATABASE IF NOT EXISTS database_papiro; -- DROP DATABASE database_cartorio;

	USE database_papiro;

-- -----------------------------------------------------
-- Table  CLIENTE
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS cliente (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    usuario 	VARCHAR(16)  NOT NULL,
    senha   	VARCHAR(18)  NOT NULL,
	nome	 	VARCHAR(220) NOT NULL,
    cidade      VARCHAR(220) NOT NULL,
	estado		VARCHAR(2)   NOT NULL,
	bairro	    VARCHAR(220) NOT NULL,
    logradouro	VARCHAR(220) NOT NULL,
    numero		VARCHAR(220) NOT NULL,	
    complemento VARCHAR(220) NOT NULL,
    cep			VARCHAR(220) NOT NULL, 
    fone	    VARCHAR(220) NOT NULL,	
    email		VARCHAR(220) NOT NULL
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31;

INSERT INTO cliente(usuario,senha, nome, cidade, estado, bairro, logradouro, numero, complemento, cep, fone, email) 
	VALUES('teste2',123, 'teste', 'São Paulo', 'SP', 'Itaim Paulista', 'Rua Catule', '200', 'BLOCOA', '08191-845', '00-0000-0000', 'lucas.conte@saojudas.com.br');

SELECT * FROM cliente;

-- -----------------------------------------------------
-- Table  ADMIN
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS admin (
    id int auto_increment primary key not null,
    nome 		VARCHAR(220) NOT NULL,
	usuario	 	VARCHAR(220) NOT NULL,
    senha		VARCHAR(220) NOT NULL,	
    email		VARCHAR(220) NOT NULL
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31;

-- -----------------------------------------------------
-- Table  CHATBOT
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS chatbot (
    id int auto_increment primary key not null,
	usuario	 	VARCHAR(220) NOT NULL,
    senha		VARCHAR(220) NOT NULL,
    resposta 	VARCHAR(220) NOT NULL,
    pergunta 	VARCHAR(220) NOT NULL
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31;

SELECT * FROM cliente;

INSERT INTO chatbot(id, usuario, senha, resposta, pergunta) 
	VALUES(22, 'Teste1','123', 'Por que Deus quis', 'Por que o céu é azul?');