# O caso do trio

**Integrantes: Otávio, Maria Vitoria, Arthur Conrad**

**Turma: 1°C Desenvolvimento de Sistemas**

---

## Em uma frase

a biblioteca tem que saber quais livros disponiveis(e onde estão, em qual pratileira?), quais estão em emprestimos, quais estão reservados, quais estão em atraso, quem tem cadastro para poder fazer o emprestimo
>
> Exemplo: a secretaria precisa saber qual aluno está inscrito em qual
> modalidade esportiva, desde quando, e se a inscrição ainda vale.

## As entidades

Cada substantivo da frase que tem vida própria e que você precisa guardar mais
de um. Liste aqui, um por linha, com dois ou três atributos de cada:

-   ALUNO [ID, NOME, TURMA]
-   LIVRO [ID, PRATILEIRA, STATUS, AUTOR, GENERO, COLECAO]
-   EMPRESTIMO [ID, ID-ALUNO, ID-LIVRO, PRAZO]
-   PRAZO [ID, ID-EMPRESTIMO, PRAZO-EMPRESTIMO, VALOR]

## O N:N com atributo próprio

Qual é o par de entidades que se cruza muitos-para-muitos, e qual dado nasce
**do encontro** entre elas (e não de nenhum dos dois lados)?

-   ALUNO - EMPRESTIMO = PRAZO
