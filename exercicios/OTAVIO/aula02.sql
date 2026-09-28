-- Aula 02 - Criando as tabelas
-- Enunciado: exercicios/enunciados/aula02-ddl.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador dele.
-- Nao apague os marcadores, nao troque a ordem.
-- Cada bloco roda num banco em branco: crie o que voce for usar.

-- ex1

CREATE TABLE LIVRO (
    ID INT PRIMARY KEY
    TITULO VARCHAR(50) NOT NULL
    AUTOR VARCHAR(60) NOT NULL
    ANO INT
    EXEMPLARES INT NOT NULL DEFAULT 1
)

-- ex2

CREATE TABLE LEITOR (
    ID INT PRIMARY KEY
    NOME VARCHAR(64)
)

INSERT INTO LEITOR VALUES (1, "Lucas");
INSERT INTO LEITOR VALUES (2, "Pedro")

ALTER TABLE LEITOR ADD TELEFONE

SELECT * FROM LEITOR

-- ex3

CREATE TABLE EMPRESTIMO (
    ID INT PRIMARY KEY
    ID-LIVRO INT NOT NULL
)

INSERT INTO EMPRESTIMO VALUES(
    1, 3;
    2, 4
)


-- ex4


-- ex5


-- ex6
