drop database if exists LABORATORIO;

CREATE SCHEMA LABORATORIO ;

USE laboratorio;

CREATE TABLE facturas;

CREATE TABLE facturas (
  `letra` CHAR NOT NULL,
  `numero` INT NOT NULL,
  `ClienteID` INT NULL,
  `ArticuloID` INT NULL,
  `fecha` DATE NULL,
  `monto` DOUBLE NULL,
  PRIMARY KEY (`letra`, `numero`));

CREATE TABLE articulos (
  `ArticuloId` INT NOT NULL,
  `Nombre` VARCHAR(50) NULL,
  `precio` DOUBLE NULL,
  `stock` INT NULL,
  PRIMARY KEY (`ArticuloId`));


CREATE TABLE clientes (
  `ClienteID` INT NOT NULL,
  `nombre` VARCHAR(25) NULL,
  `apellido` VARCHAR(25) NULL,
  `cuit` VARCHAR(16) NULL,
  `direccion` VARCHAR(50) NULL,
  `comentarios` VARCHAR(50) NULL,
  PRIMARY KEY (`ClienteID`));