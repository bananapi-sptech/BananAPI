CREATE DATABASE bananapp;
USE bananapp;

-- Essa é a versão sem as chaves estrangeiras por ser algo que não foi ensinado.

-- Tabela de usuários
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(255),
    cargo VARCHAR(50),
    data_criacao DATETIME
);

-- Tabela de entrepostos
CREATE TABLE entrepostos (
    id_entreposto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    estado CHAR(2),
    capacidade_total INT
);

-- Tabela de câmaras frias
CREATE TABLE camaras_frias (
    id_camara INT AUTO_INCREMENT PRIMARY KEY,
    id_entreposto INT,
    nome VARCHAR(100),
    temperatura_min DECIMAL(5,2),
    temperatura_max DECIMAL(5,2),
    capacidade_caixas INT
);

-- Tabela de sensores
CREATE TABLE sensores (
    id_sensor INT AUTO_INCREMENT PRIMARY KEY,
    id_camara INT,
    modelo VARCHAR(50),
    status VARCHAR(20),
    data_instalacao DATE
);

-- Tabela de leituras de temperatura
CREATE TABLE leituras_temperatura (
    id_leitura INT AUTO_INCREMENT PRIMARY KEY,
    id_sensor INT,
    temperatura DECIMAL(5,2),
    data_hora DATETIME
);

-- Tabela de alertas
CREATE TABLE alertas (
    id_alerta INT AUTO_INCREMENT PRIMARY KEY,
    id_camara INT,
    temperatura DECIMAL(5,2),
    tipo_alerta VARCHAR(50),
    data_hora DATETIME,
    resolvido BOOLEAN
);

-- Tabela de estoque de bananas
CREATE TABLE estoque_bananas (
    id_estoque INT AUTO_INCREMENT PRIMARY KEY,
    id_camara INT,
    quantidade_caixas INT,
    peso_por_caixa DECIMAL(5,2),
    preco_por_kg DECIMAL(6,2),
    data_registro DATE
);