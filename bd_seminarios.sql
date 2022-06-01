DROP DATABASE IF EXISTS bd_seminarios;
CREATE DATABASE bd_seminarios CHARACTER SET utf8 COLLATE utf8_general_ci;
use bd_seminarios;

CREATE TABLE `usuarios` (
  `id` int(11) unsigned auto_increment primary key,
  `usuario` varchar(20) null,
  `password` varchar(255) null
);

INSERT INTO usuarios (id, usuario, password) VALUES
(1, 'admin', '12345'),
(2, 'demo1', '12345'),
(3, 'demo2', '12345');

-- ------------------------------
-- ------------------------------

CREATE TABLE `seminarios`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255),
  `fecha` varchar(10),
  `cupo` int(11),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `seminarios` VALUES (1, 'APLICACIONES MACHINE LEARNING', '2022-09-21', 50);
INSERT INTO `seminarios` VALUES (2, 'FIREBASE CON KOTLIN', '2022-09-21', 40);
INSERT INTO `seminarios` VALUES (3, 'REDES NEURONALES CON MATLAB', '2022-09-21', 30);

-- ------------------------------
-- ------------------------------

CREATE TABLE `participantes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(50),
  `nombres` varchar(60),
  `id_seminario` int(11),
  `confirmado` int(11),
  PRIMARY KEY (`id`),
  KEY (`id_seminario`), 
  FOREIGN KEY (`id_seminario`) REFERENCES `seminarios` (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `participantes` VALUES (1, 'Taxaca ', 'Cristian ', 1, 1);
INSERT INTO `participantes` VALUES (2, 'Calle', 'Daniel', 2, 0);
INSERT INTO `participantes` VALUES (3, 'Cutipa ', 'Richard ', 2, 1);
INSERT INTO `participantes` VALUES (4, 'Rocha ', 'Omar Bruno ', 3, 0);
INSERT INTO `participantes` VALUES (5, 'Silvestre ', 'Zenaida Kattia', 1, 1);
INSERT INTO `participantes` VALUES (6, 'Quispe', 'Wilmer', 2, 0);
INSERT INTO `participantes` VALUES (7, 'Nina', 'Gustavo', 3, 0);
INSERT INTO `participantes` VALUES (8, 'Perez', 'Juan', 3, 1);
INSERT INTO `participantes` VALUES (9, 'Aspi', 'Jhonny', 1, 1);
INSERT INTO `participantes` VALUES (10, 'Romero', 'Rita', 2, 1);