SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE DATABASE IF NOT EXISTS database_papiro; -- DROP DATABASE database_papiro;
	USE database_papiro;
-- -----------------------------------------------------
-- Table  CLIENTE
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS cliente (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
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

INSERT INTO cliente(nome, cidade, estado, bairro, logradouro, numero, complemento, cep, fone, email) 
	VALUES('teste', 'São Paulo', 'SP', 'Itaim Paulista', 'Rua Catule', '200', 'BLOCOA', '08191-845', '00-0000-0000', 'lucas.conte@saojudas.com.br');

SELECT * FROM cliente;
-- -----------------------------------------------------
-- Table  USUARIO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    usuario VARCHAR(8) UNIQUE KEY NOT NULL,
    senha VARCHAR(16) NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY(id_usuario),
    CONSTRAINT fk_usuario_cliente FOREIGN KEY(usuario) REFERENCES cliente(rf)
 )ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31;
INSERT INTO usuario(usuario, senha) VALUES ('Lucas', 123);
SELECT * FROM usuario;
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

CREATE TABLE IF NOT EXISTS resposta (
    id int auto_increment primary key not null,
    resposta 	VARCHAR(220) NOT NULL
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31;

CREATE TABLE IF NOT EXISTS pergunta (
    pergunta 	VARCHAR(220) NOT NULL
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31;

CREATE TABLE IF NOT EXISTS palavraChave (
    id int auto_increment primary key not null,
    CONSTRAINT pk_resposta PRIMARY KEY(id_pergunta),
    CONSTRAINT fk_pergunta_resposta  FOREIGN KEY(pergunta) REFERENCES resposta(rf)
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31;


INSERT INTO pergunta(id, pergunta)
	VALUES('Por que o céu é azul?');

INSERT INTO resposta(id, resposta) 
	VALUES('Por que Deus quis');
    
