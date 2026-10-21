## Cria o banco de dados loja
CREATE DATABASE loja;

## Mostra todos os bancos do servidor
SHOW DATABASES;

## Escolhe o banco que iremos usar
USE loja;

## Acrescenta colunas a tabelas em tabelas existentes
ALTER TABLE cliente ADD telefone VARCHAR(20);

## Alterar o nome de uma coluna que esta incorreta
ALTER TABLE cliente CHANGE telefone celulares VARCHAR(100);

## Mostra todas as informações das tabelas
SELECT * FROM cliente;

## Aumenta ou diminui o tipo de dados colocados anteriormente
ALTER TABLE cliente MODIFY celulares VARCHAR(20) NOT NULL;

## Remove a coluna celulares
ALTER TABLE cliente DROP COLUMN celulares;
