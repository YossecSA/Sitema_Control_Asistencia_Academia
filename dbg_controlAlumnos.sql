CREATE TABLE `usuarios` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nombres` varchar(255) NOT NULL,
	`usuario` varchar(50) NOT NULL UNIQUE,
	`contraseña` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `alumnosAdulto` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nombres` varchar(255) NOT NULL,
	`dni` varchar(15) NOT NULL UNIQUE,
	`celular` varchar(15) NOT NULL,
	`direccion` varchar(255) NOT NULL,
	`polo` varchar(10) NOT NULL DEFAULT 'no',
	`ubicacionImagen` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `alumnosNiños` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nombres` varchar(255) NOT NULL,
	`dni` varchar(15) NOT NULL UNIQUE,
	`direccion` varchar(255) NOT NULL,
	`celularMadre` varchar(15) NOT NULL,
	`celularPadre` varchar(15) NOT NULL,
	`dniPadre` varchar(15) NOT NULL,
	`nombrePadre` varchar(15) NOT NULL,
	`fechaNacimiento` DATE NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tiposEntrenamiento` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`entrenamiento` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tipoEntrenamientoDia` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idTipoEntrenamiento` INT NOT NULL,
	`idDia` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `dia` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`dia` varchar(20) NOT NULL UNIQUE,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tipoEntrenamientoDia` ADD CONSTRAINT `tipoEntrenamientoDia_fk0` FOREIGN KEY (`idTipoEntrenamiento`) REFERENCES `tiposEntrenamiento`(`id`);

ALTER TABLE `tipoEntrenamientoDia` ADD CONSTRAINT `tipoEntrenamientoDia_fk1` FOREIGN KEY (`idDia`) REFERENCES `dia`(`id`);







