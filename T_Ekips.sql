CREATE DATABASE T_Ekips;

USE T_Ekips;
CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY
	,Email VARCHAR(250)NOT NULL
	,Senha VARCHAR(30) NOT NULL
	,Permissao VARCHAR (10) NOT NULL
);

CREATE TABLE Departamentos(
	IdDepartamento INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (100) NOT NULL
);

CREATE TABLE Cargos(
	IdCargo INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(250) NOT NULL
	,Situacao VARCHAR(200) NOT NULL
);
CREATE TABLE Funcionarios(
	IdFuncionario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(100)
	,CPF BIGINT NOT NULL
	,DataNascimento DATE NOT NULL
	,Salario MONEY NOT NULL
	,IdDepartamento INT FOREIGN KEY REFERENCES Departamentos(IdDepartamento)
	,IdCargo INT FOREIGN KEY REFERENCES Cargos(IdCargo)
	,IdUsuario INT FOREIGN KEY REFERENCES Usuarios (IdUsuario)
);

INSERT INTO Usuarios (Email,Senha,Permissao) VALUES ('geremias@gmail.com','gerezinhoDaZN','COMUM')
INSERT INTO Usuarios (Email,Senha,Permissao) VALUES ('fabizinha@gmail.com','FabiPJL','COMUM')
INSERT INTO Usuarios (Email,Senha,Permissao) VALUES ('wellington@gmail.com','wELL123','COMUM')
INSERT INTO Usuarios (Email,Senha,Permissao) VALUES ('Danilo@gmail.com','Dani04672890','ADM')



SELECT * FROM Usuarios;