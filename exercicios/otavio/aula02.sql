-- Aula 02 - Criando as tabelas
-- Enunciado: exercicios/enunciados/aula02-ddl.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador dele.
-- Nao apague os marcadores, nao troque a ordem.
-- Cada bloco roda num banco em branco: crie o que voce for usar.

-- ex1

CREATE TABLE LIVRO (
    ID INT PRIMARY KEY,
    TITULO VARCHAR(50) NOT NULL,
    AUTOR VARCHAR(60) NOT NULL,
    ANO INT,
    EXEMPLARES INT NOT NULL DEFAULT 1
)

-- ex2

CREATE TABLE LEITOR (
    ID INT PRIMARY KEY,
    NOME VARCHAR(64)
)

INSERT INTO LEITOR VALUES (1, "Lucas");
INSERT INTO LEITOR VALUES (2, "Pedro");

ALTER TABLE LEITOR ADD TELEFONE;

SELECT * FROM LEITOR

-- ex3

CREATE TABLE EMPRESTIMO (
    ID INT PRIMARY KEY,
    ID-LIVRO INT NOT NULL,
)

INSERT INTO EMPRESTIMO VALUES(
    1, 3;
    2, 4
)


-- ex4
CREATE TABLE EDITORA (
    ID INT NOT NULL
    NM VARCHAR(64)
)

INSERT INTO EDITORA (id, nm) 
VALUES (1, 'Editora Vozes')

ALTER TABLE EDITORA RENAME COLUMN nm TO nome

-- ex5
CREATE TABLE RASCUNHO (    id INTEGER PRIMARY KEY,
    texto TEXT
);

INSERT INTO RASCUNHO (texto) VALUES ('Primeira linha de rascunho');
INSERT INTO RASCUNHO (texto) VALUES ('Segunda linha de rascunho');
INSERT INTO RASCUNHO (texto) VALUES ('Terceira linha de rascunho');

DELETE FROM RASCUNHO;

SELECT * FROM RASCUNHO;

DROP TABLE RASCUNHO;

-- ex6
CREATE TABLE LIVRO (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL
);

CREATE TABLE LEITOR (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);


CREATE TABLE EMPRESTIMO (
    id_leitor INT,
    id_livro INT,
    data_saida DATE,
    data_volta DATE,


    PRIMARY KEY (id_leitor, id_livro, data_saida),
    
  
    FOREIGN KEY (id_leitor) REFERENCES LEITOR(id),
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id)
);

INSERT INTO LIVRO (id, titulo) VALUES (1, 'Dom Casmurro'), (2, 'O Alquimista');
INSERT INTO LEITOR (id, nome) VALUES (1, 'Ana Silva'), (2, 'Carlos Souza');

INSERT INTO EMPRESTIMO (id_leitor, id_livro, data_saida, data_volta) 
VALUES (1, 1, '2026-10-02', '2026-10-09');

INSERT INTO EMPRESTIMO (id_leitor, id_livro, data_saida, data_volta) 
VALUES (1, 1, '2026-10-15', '2026-10-22');
