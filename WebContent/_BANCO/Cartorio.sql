CREATE DATABASE IF NOT EXISTS Cartorio;   -- DROP DATABASE Cartorio; 

USE Cartorio;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    paswword INT NOT NULL,
    email VARCHAR(65) NOT NULL
    );
    
INSERT INTO user(nome,paswword,email) VALUES('TESTE','testnado','test@outlook.com');

SELECT * FROM user;
