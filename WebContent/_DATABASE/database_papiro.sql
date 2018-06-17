SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
CREATE DATABASE IF NOT EXISTS database_papiro;  -- DROP DATABASE database_papiro;
	USE database_papiro;    
-- -----------------------------------------------------
-- Tabela  Usuario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Usuario (
		id_usuario				 INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
		usuario					 VARCHAR(8) UNIQUE KEY NOT NULL,
		senha 					 VARCHAR(16) NOT NULL
 )ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31;
INSERT INTO usuario(usuario, senha) VALUES ('Lucas', 123);
SELECT * FROM usuario;
-- -----------------------------------------------------
-- Tabela  Cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS cliente (
		ID_Cliente      			INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
		nome	 					VARCHAR(220) NOT NULL,
		cidade    					VARCHAR(220) NOT NULL,
		estado						VARCHAR(2)   NOT NULL,
		bairro	   					VARCHAR(220) NOT NULL,
		logradouro					VARCHAR(220) NOT NULL,
		numero						VARCHAR(220) NOT NULL,	
		complemento					VARCHAR(220) NOT NULL,
		cep							VARCHAR(220) NOT NULL, 
		fone	    				VARCHAR(220) NOT NULL,	
		email						VARCHAR(220) NOT NULL
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31;
INSERT INTO cliente(nome, cidade, estado, bairro, logradouro, numero, complemento, cep, fone, email) VALUES('teste', 'São Paulo', 'SP', 'Itaim Paulista', 'Rua Catule', '200', 'BLOCOA', '08191-845', '00-0000-0000', 'lucas.conte@saojudas.com.br');
SELECT * FROM cliente;
-- -----------------------------------------------------
-- TAbela  Atendente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Atendente (
  idAtendente 				   		INT NOT NULL AUTO_INCREMENT,
  Nome_Atendente 			   		VARCHAR(50)  	NULL,
  Email_Atendente 			   		VARCHAR(45) NOT NULL,
  CPF_Atendente 		 	   		CHAR(11) 	NOT NULL,
  RG_Atendente 				   		CHAR(11) 	NOT NULL,
  Telefone_Atendente 	   	   		VARCHAR(45) NOT NULL,
  Status_Atendente	 		   		VARCHAR(45) NOT NULL,
  Senha_Atendente 			   		VARCHAR(45) NOT NULL,
PRIMARY KEY (idAtendente));
-- -----------------------------------------------------
-- Tabela Atendimento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Atendimento (
		ID_Atendimento 				INT NOT NULL AUTO_INCREMENT,
		Status_Atendimento 			VARCHAR(100)NOT NULL,
		ID_Cliente 					INT 		NOT NULL,
		ID_Atendente 				INT 		NOT NULL,
		dt_inicio					DATE		NOT NULL,
		dt_fim						DATE		NOT NULL,
PRIMARY KEY (ID_Atendimento),
INDEX 		fk_Atendimento_Cliente_idx (ID_Cliente ASC),
INDEX 		fk_Atendimento_Atendente1_idx (ID_Atendente ASC),
CONSTRAINT  fk_Atendimento_Atendente1
FOREIGN KEY (ID_Atendente)  REFERENCES atendente (idAtendente),
CONSTRAINT  fk_Atendimento_Cliente
FOREIGN KEY (ID_Cliente)  REFERENCES cliente (ID_Cliente));
-- -----------------------------------------------------
-- Tabela Conversa
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Conversa (
		ID_conversa 		  	   INT NOT NULL AUTO_INCREMENT,
		Pergunta 			       VARCHAR(1000)   NOT NULL,
		respostas 	 		       VARCHAR (1000)  NOT NULL,  PRIMARY KEY (ID_conversa));
 -- -----------------------------------------------------
-- Tabela Atendimento_conversa
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Atendimento_conversa(
		idatendimento_ac      	   INT NOT NULL ,
		IDconversa_ac  	      	   INT NOT NULL auto_increment,
PRIMARY KEY (idatendimento_ac, idconversa_ac),
CONSTRAINT  fk_atendimento_conversa_atendimento1 FOREIGN KEY (idatendimento_ac)  REFERENCES atendimento (id_atendimento),
CONSTRAINT  fk_atendimento_conversa_conversa1    FOREIGN KEY (idconversa_ac) REFERENCES conversa (id_conversa));
-- -----------------------------------------------------
-- Tabela PalavraChave
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS PalavraChave (
		ID_PalavraChave 		   INT NOT NULL AUTO_INCREMENT,
		PalavraChave 			   VARCHAR(100) NOT NULL,
PRIMARY KEY (ID_PalavraChave));
-- -----------------------------------------------------
-- Tabela Respotas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Respostas (
  ID_Respostas					   INT NOT NULL AUTO_INCREMENT,
  Respostas						   VARCHAR(1000) NOT NULL,
  PRIMARY KEY (ID_Respostas));
-- -----------------------------------------------------
-- Tabela RespotaAtendimento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS RespostaAtendimento (
	    ID_Respostas 		       INT NOT NULL AUTO_INCREMENT,
	    id_atendimento		       INT NOT NULL,
FOREIGN KEY	(ID_Respostas)  REFERENCES Respostas (ID_Respostas),
FOREIGN KEY (id_atendimento) REFERENCES atendimento (id_atendimento));
-- -----------------------------------------------------
-- Tabela  RespostaPalavraChave
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS RespostaPalavraChave (
		 pontuacao_Resposta			INT     NULL,
		 ID_Respostas		 	    INT NOT NULL,
		 ID_PalavraChave		    INT NOT NULL,
INDEX fk_RespostaPalavraChave_PalavraChave1_idx (ID_PalavraChave ASC),
CONSTRAINT fk_RespostaPalavraChave_Respostas1
FOREIGN KEY (ID_Respostas)
REFERENCES Respostas (ID_Respostas),
CONSTRAINT fk_RespostaPalavraChave_PalavraChave1
FOREIGN KEY (ID_PalavraChave)
REFERENCES PalavraChave (ID_PalavraChave));
-- -------------------------------------- POPULANDO TABELAS -------------------------------------------------
SELECT max(ID_Atendimento), max(ID_conversa )  FROM  atendimento  JOIN conversa ;
SELECT * FROM Atendente;
SELECT ID_Atendimento FROM atendimento ORDER BY ID_Atendimento  DESC LIMIT 1;
SELECT ID_conversa FROM conversa ORDER BY ID_conversa  DESC LIMIT 1;
SELECT usuario,ID_Atendimento,cliente.nome ,conversa.Pergunta,conversa.respostas FROM cliente 
JOIN atendimento ON cliente.ID_Cliente = atendimento.ID_Cliente
JOIN atendente ON atendente.idAtendente = atendimento.ID_Atendente
JOIN atendimento_conversa ON atendimento_conversa.idatendimento_ac = atendimento.ID_Atendimento
JOIN conversa ON conversa.ID_conversa= atendimento_conversa.IDconversa_ac
JOIN usuario
ORDER BY cliente.nome DESC LIMIT 1;  
-- Tabela PalavraChave --
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(1,'civil');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(2,'fisica');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(3,'juridica');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(4,'cpf');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(5,'titulo');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(6,'documento');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(7,'feriados');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(8,'horarios');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(9,'matricula');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(10,'imovel');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(11,'outras');
INSERT INTO PalavraChave (ID_PalavraChave,PalavraChave ) VALUES(12,'empresa');
select  r.id_respostas, r.respostas from respostas r join respostapalavrachave rp on (r.id_respostas = rp.ID_Respostas) where rp.ID_PalavraChave ;
SELECT *FROM pALAVRAcHAVE;
-- Tabela Respotas--
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (1,'Para validacao de titulo e documento é necessario a certidao de nascimento');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (2,'para retirar a segunda via da documento, é necessario comprovate de residencia e certidao de nacimento');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (3,'para a realizacao de registro civil é necessario a certidão');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (4,'para a realizacao de registro pessoa fisica é necessario a certidao ');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (5,'para a realizacao de registro pessoa juridica  é necessario a alguns dcm');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (6,'para a realizacao de registro imovel é necessario os dcm do fiador e do imovel');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (7,'de segunda a sexta 10:00 as 18:00');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (8,'para criacao de cpf é necessario ter acima de 12 anos e tambem a certidao ');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (9,'vamos te passar para um atendente');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (10,'para segunda via do cpf em casos de perda e desgaste, é necessario o rg');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (11,'para criacao do cnpj, é necessario o rg do proprietario e o nome da empresa');
INSERT INTO Respostas(ID_Respostas,Respostas) VALUES (12,'nao funciona em feriados');
select *from Respostas;
--  RespostaPalavraChave  ---
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,3,1);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,2,1);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,1);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,4,2);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,2,2);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,2);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,5,3);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,6,3);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,3,3);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,3);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,2,4);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,8,4);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,10,4);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,4);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,1,5);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,5);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,1,6);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,2,6);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,6);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,7,7);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,12,7);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,7);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,7,8);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,7,12);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,12);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,9);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,11,10);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,6,10);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,10);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,6,12);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,11,12);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(null,9,12);
INSERT INTO RespostaPalavraChave(pontuacao_Resposta,ID_Respostas,ID_PalavraChave)VALUES(not null,8,12);
SELECT  p.id_palavrachave, r.Respostas FROM palavrachave p JOIN respostapalavrachave rp  
ON rp.ID_PalavraChave = p.ID_PalavraChave JOIN respostas r ON rp.ID_Respostas = r.ID_Respostas;
SELECT r.ID_Respostas, r.respostas FROM respostas r JOIN respostapalavrachave rp ON (r.ID_Respostas = rp.ID_Respostas) WHERE rp.ID_PalavraChave IN (1);