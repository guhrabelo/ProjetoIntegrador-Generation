CREATE TABLE `Produto` (
	`Id_Produto` INT NOT NULL AUTO_INCREMENT,
	`Nome_Produto` varchar(150) NOT NULL,
	`Preco` DECIMAL NOT NULL,
	`Qtd_Estoque` INT NOT NULL,
	`Editora` varchar(100) NOT NULL,
	`Categoria_Id` INT NOT NULL,
	PRIMARY KEY (`Id_Produto`)
);

CREATE TABLE `Categoria` (
	`Id_Categoria` INT NOT NULL AUTO_INCREMENT,
	`Nome_Categoria` varchar(30) NOT NULL AUTO_INCREMENT,
	`Tema` varchar(30) NOT NULL AUTO_INCREMENT,
	`Nacionalidade` varchar(20) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Id_Categoria`)
);

CREATE TABLE `Usuario` (
	`Nome_Usuario` varchar(100) NOT NULL,
	`Senha` varchar(16) NOT NULL,
	`Email` varchar(50) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Email`)
);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk0` FOREIGN KEY (`Categoria_Id`) REFERENCES `Categoria`(`Id_Categoria`);

