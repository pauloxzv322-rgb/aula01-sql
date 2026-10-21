-- Cria o banco de dados loja
CREATE DATABASE loja;

-- Mostra todos os bancos do servidor
SHOW DATABASES;

-- Escolhe o banco que iremos usar
USE loja;

CREATE TABLE cliente(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE produto(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(5,2) NOT NULL
);

CREATE TABLE pedido(
	id INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE NOT NULL,
    cliente_id INT NOT NULL,
    produto_id INT NOT NULL,
    FOREIGN KEY (cliente_id)
    REFERENCES cliente(id),
    FOREIGN KEY (produto_id)
    REFERENCES produto(id)
);

-- Acrescenta colunas a tabelas em tabelas existentes
ALTER TABLE cliente ADD telefone VARCHAR(20);

-- Alterar o nome de uma coluna que esta incorreta
ALTER TABLE cliente CHANGE telefone celulares VARCHAR(100);

-- Mostra todas as informações das tabelas
SELECT * FROM cliente;

-- Aumenta ou diminui o tipo de dados colocados anteriormente
ALTER TABLE cliente MODIFY celulares VARCHAR(20) NOT NULL;

-- Remove a coluna celulares
ALTER TABLE cliente DROP COLUMN celulares;

