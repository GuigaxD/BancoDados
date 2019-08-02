CREATE DATABASE T_PSales;
--COLOCAR BANCO DE DADOS EM USO--
USE T_PSales;

--DDL --
--criar tabela de cursos--
CREATE TABLE Cursos
(
	--tipo de dados pk,fk--
	IdCurso INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR(200) NOT NULL UNIQUE
);
--Criar tabela de disciplinas--
CREATE TABLE Disciplinas
(
	IdDisciplina INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(250) NOT NULL 
	,IdCurso INT FOREIGN KEY REFERENCES Cursos (IdCurso)
);
CREATE TABLE Alunos
(
	IdAluno INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(250) NOT NULL UNIQUE
);
--criar tabela intermediaria de alunos e cursos (vincular)--
CREATE TABLE CursosAlunos 
(
	IdCurso INT FOREIGN KEY REFERENCES Cursos(IdCurso)
	,IdAluno INT FOREIGN KEY REFERENCES Alunos(IdAluno)
);

--INSERIR REGISTROS--
--inserir em algum local alguma coisa--
--inser into nome_tabela(colunas) values(valores)--
INSERT INTO Cursos (Nome) VALUES ('Técnico em Dev. Sistemas');

INSERT INTO Cursos VALUES ('Técnico em Redes');

INSERT INTO Cursos VALUES ('curso A')
						  ,('curso B');

SELECT IdCurso, Nome
		FROM Cursos;
SELECT  Nome
		FROM Cursos;
SELECT *
		FROM Cursos;
SELECT *
		FROM Cursos
		WHERE IdCurso = 1;
--Atualização--
--técnico em desenvolvimento de sistemas--
--update tabela set qual_coluna = novo_valor condiçao--
UPDATE Cursos
	SET Nome = 'Técnico em desenvolvimento de sistemas'
	WHERE IdCurso = 1;

INSERT INTO Disciplinas (Nome, IdCurso)
		VALUES			('HTML',   1  );

SELECT * FROM Disciplinas;

SELECT * FROM Cursos;

DELETE FROM Cursos
WHERE IdCurso = 4;

--CRUD
--CREATE READ UPDATE DELETE
--INSERT,SELECT,UPDATE,DELETE
SELECT * FROM Disciplinas FULL JOIN Cursos ON Disciplinas.IdDisciplina = Cursos.IdCurso

SELECT Disciplinas.Nome,Cursos.Nome FROM Disciplinas FULL JOIN Cursos ON Disciplinas.IdCurso = Cursos.IdCurso