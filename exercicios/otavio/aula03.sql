-- Aula 03 - O dado entra, e o banco discute
-- Enunciado: exercicios/enunciados/aula03-dml.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador.
-- Comece CADA bloco com: PRAGMA foreign_keys = ON;
-- Os blocos rodam sobre o banco da secretaria ja carregado.

-- ex1
CREATE TABLE TURMA (
    id INT NOT NULL AUTO_INCREMENT;
    turma varchar not null;
    turno text not null;
)

insert into TURMA values(1;"1J";"noite")

-- ex2

-- INSERT INTO alunos (nome, turma_id) VALUES ('João Silva', 99);

-- ERROR: insert or update on table "alunos" violates foreign key constraint "alunos_turma_id_fkey"
-- DETAIL: Key (turma_id)=(99) is not present in table "turmas".

INSERT INTO alunos (nome, turma_id) VALUES ('João Silva', 1);

-- ex3
SELECT * FROM inscricoes WHERE aluno_id = 3 AND modalidade_id = 2;

UPDATE inscricoes SET status = 'ativa' WHERE aluno_id = 3 AND modalidade_id = 2;
-- ex4

-- 1. UPDATE correto: coloca apenas o João Vitor (aluno 10) na turma 2
UPDATE alunos SET turma_id = 2 WHERE id = 10;

-- UPDATE alunos SET turma_id = 2;

-- Quantas linhas ele pegaria?
-- Ele afetaria 100% das linhas (todos os registros) existentes na tabela `alunos`.

-- ex5

-- DELETE FROM turmas WHERE id = 1;

-- O banco bloqueou a exclusão (Erro de Foreign Key / Integridade Referencial) porque existem alunos vinculados à turma 1 (como o registro inserido no primeiro exercício), e o banco não permite deixar esses registros "órfãos".

-- 2. Apagando o aluno 10 (que o banco permite)
DELETE FROM alunos WHERE id = 10;

-- A turma 1 é um registro "pai" que possui registros "filhos" (alunos) dependendo dela, enquanto o aluno 10 é um registro "filho" sem nenhuma dependência vinculada a ele.

-- ex6
