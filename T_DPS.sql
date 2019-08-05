CREATE DATABASE T_DPS;
USE T_DPS;

CREATE TABLE Funcionario(
	IdFuncionario INT PRIMARY KEY IDENTITY
	,SkillDesc	VARCHAR(200) NOT NULL
);
CREATE TABLE Departamento(
	IdDepartamento INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(100) NOT NULL
);
CREATE TABLE Habilidades(
	IdHabilidade INT PRIMARY KEY IDENTITY
	,Descrição VARCHAR(100) NOT NULL
);

INSERT INTO Habilidades (Descrição) VALUES ('Digitação Rápida')
SELECT * FROM Habilidades;

INSERT INTO Habilidades (Descrição) VALUES ('Liderança')
INSERT INTO Habilidades (Descrição) VALUES ('Comunicação')

INSERT INTO Funcionario(SkillDesc) VALUES ('Abigail')
SELECT * FROM Funcionario
INSERT INTO Funcionario(SkillDesc) VALUES ('Jefersom')
INSERT INTO Funcionario(SkillDesc) VALUES ('Grustenick')

CREATE TABLE Salario(
	IdSalario INT PRIMARY KEY IDENTITY
	,Quanto DECIMAL NOT NULL
);

INSERT INTO Salario(Quanto) VALUES (1000.00);
SELECT * FROM Salario;
INSERT INTO Salario(Quanto) VALUES (850.00);
INSERT INTO Salario(Quanto) VALUES (700.00);

ALTER TABLE Funcionario
ADD IdSalario INT FOREIGN KEY REFERENCES Salario(IdSalario)

DELETE From Salario WHERE IdSalario=4; 

