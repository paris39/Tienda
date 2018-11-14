-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generaci�n: 29-11-2012 a las 16:14:09
-- Versi�n del servidor: 6.0.4
-- Versi�n de PHP: 6.0.0-dev
-- 
-- tiendaDB
-- 

 SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: tienda
-- 

CREATE DATABASE tienda;
USE tienda;

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla avisos
-- 
-- Creaci�n: 05-10-2012 a las 14:21:00
-- �ltima actualizaci�n: 05-10-2012 a las 13:21:00
-- 

CREATE TABLE avisos (
  IDAVISO smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  FECHA date NOT NULL,
  COMENTARIOS varchar(120) DEFAULT NULL,
  PRIMARY KEY (IDAVISO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla avisos
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla categorias
-- 
-- Creaci�n: 11-10-2012 a las 11:07:32
-- �ltima actualizaci�n: 11-10-2012 a las 10:35:01
-- 

CREATE TABLE categorias (
  IDCATEGORIA tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  NOMBRE varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  DESCRIPCION varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (IDCATEGORIA),
  UNIQUE KEY NOMBRE (NOMBRE)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla categorias
-- 

INSERT INTO categorias VALUES (1, 'ARTE', NULL);
INSERT INTO categorias VALUES (2, 'LIBROS', NULL);
INSERT INTO categorias VALUES (3, 'PEL�CULAS', NULL);
INSERT INTO categorias VALUES (4, 'DISCOS', NULL);
INSERT INTO categorias VALUES (5, 'INFORM�TICA', NULL);
INSERT INTO categorias VALUES (6, 'MISCEL�NEA', NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla clientes
-- 
-- Creaci�n: 11-10-2012 a las 11:07:08
-- �ltima actualizaci�n: 11-10-2012 a las 10:56:42
-- 

CREATE TABLE clientes (
  LOGIN varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  NOMBRE varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PASSWORD varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  EMAIL varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  CALLE varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  POBLACION varchar(35) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  PROVINCIA varchar(35) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  PAIS varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  FECHAALTA date NOT NULL,
  PRIMARY KEY (LOGIN)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla clientes
-- 

INSERT INTO clientes VALUES ('root', 'root', 'root', 'root@tienda.es', 'Root', 'Root', 'Root', 'Espa', '2012-10-05');
INSERT INTO clientes VALUES ('user1', 'Usuario uno', 'user1', 'user1@tienda.es', 'Calle 1', 'Poblaci�n uno', 'Provincia uno', 'Espa�a', '2012-10-08');
INSERT INTO clientes VALUES ('user3', 'Usuario Tres', 'user3', 'user3@tienda.es', 'Calle Tres', 'Poblacion Tres', 'Provincia Tres', 'Espa', '2012-10-09');
INSERT INTO clientes VALUES ('user2', 'Usuario Dos', 'user2', 'user2@tienda.es', 'Calle Dos', 'Poblacion Dos', 'Provincia Dos', 'Espa', '2012-10-08');
INSERT INTO clientes VALUES ('user5', 'Usuario Cinco', 'user5', 'user5@tienda.es', 'Calle Cinco', 'Poblacion cinco', 'Provincia cinco', 'Espa', '2012-10-09');
INSERT INTO clientes VALUES ('user4', 'Usuario cuatro', 'user4', 'user4@tienda.es', 'Calle Cuatro', 'Poblacion Cuatro', 'Provincia Cuatro', 'Espa', '2012-10-09');
INSERT INTO clientes VALUES ('user6', 'Usuario seis', 'user6', 'user6@tienda.es', 'Calle Seis', 'Poblacion Seis', 'Provincia Seis', 'Espa', '2012-10-09');
INSERT INTO clientes VALUES ('user7', 'Usuario siete', 'user7', 'user7@tienda.es', 'Calle siete', 'Poblacion siete', 'Provincia siete', 'Espa', '2012-10-09');
INSERT INTO clientes VALUES ('', '', '', '', '', '', '', '', '2012-10-11');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla productos
-- 
-- Creaci�n: 11-10-2012 a las 11:05:53
-- �ltima actualizaci�n: 18-10-2012 a las 11:34:53
-- 

CREATE TABLE productos (
  IDPRODUCTO tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  DESCRIPCION varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRECIO float(10,2) NOT NULL,
  EXISTENCIAS tinyint(4) NOT NULL,
  IDCATEGORIA tinyint(2) unsigned NOT NULL,
  IMAGEN varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (IDPRODUCTO),
  KEY IDCATEGORIA (IDCATEGORIA)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=10 ;

-- 
-- Volcar la base de datos para la tabla productos
-- 

INSERT INTO productos VALUES (3, 'Rat�n inal�mbrico', 9.00, 6, 5, 'RATON.jpg');
INSERT INTO productos VALUES (9, 'X-MEN Trilog�a', 8.00, 1, 3, 'xmentrilogia.jpg');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla ventas
-- 
-- Creaci�n: 11-10-2012 a las 11:07:47
-- �ltima actualizaci�n: 11-10-2012 a las 10:07:47
-- �ltima revisi�n: 11-10-2012 a las 11:07:47
-- 

CREATE TABLE ventas (
  IDVENTA smallint(5) unsigned NOT NULL,
  LOGIN varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  IDPRODUCTO tinyint(3) unsigned NOT NULL,
  CANTIDAD tinyint(3) unsigned NOT NULL,
  FECHA date NOT NULL,
  IMPORTE float DEFAULT NULL,
  PRIMARY KEY (IDVENTA,LOGIN,IDPRODUCTO),
  KEY IDPRODUCTO (IDPRODUCTO),
  KEY LOGIN (LOGIN)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla ventas
-- 

